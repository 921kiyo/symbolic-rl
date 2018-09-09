 # import ipdb; ipdb.set_trace()
import numpy as np
import os, random, subprocess
import time
from lib import plotting, py_asp, helper, induction, abduction
import gym, gym_vgdl
from random import randint

import config as cf

def run_experiment(env, i_episode, stats_test, width, time_range):
    _ = env.reset()
    t = 0
    agent_position = env.unwrapped.observer.get_observation()["position"]
    abduction.update_agent_position(agent_position, t)
    abduction.update_time_range(agent_position, t)
    
    answer_sets = abduction.run_clingo(cf.CLINGOFILE)
    states_plan, actions_array = abduction.sort_planning(answer_sets)
    print("ASP states ", states_plan)
    print("ASP actions ", actions_array)

    while t < time_range:
        is_done = False
        print("testing phase....")
        for _, action in enumerate(actions_array):
            env.render()
            # time.sleep(0.1)
            action_int = helper.get_action(action[1])
            _, reward, done, _ = env.step(action_int)

            if done:
                reward = reward + 10
            else:
                reward = reward - 1

            print("reward here is ", reward)
            print("i_episode here is ", i_episode)
            # Update stats
            stats_test.episode_rewards[i_episode] += reward
            stats_test.episode_lengths[i_episode] = t
            t = t + 1
            if done:
                is_done = True
                break
        if is_done:
            break
        if not is_done:
            # If clingo does not give you a right path, just accumulate -1 punishment
            action_int = 4
            _, reward, done2, _ = env.step(action_int)
            if done2:
                reward = reward + 10
            else:
                reward = reward - 1

            stats_test.episode_rewards[i_episode] += reward
            stats_test.episode_lengths[i_episode] = t
            t = t + 1

def k_learning(env, num_episodes, h, goal, epsilon=0.1, record_prefix=None, is_link=False):
    # Get cell range for the game
    height = env.unwrapped.game.height
    width = env.unwrapped.game.width
    cell_range = "\ncell((0..{}, 0..{})).\n".format(width-1, height-1)

    # Log everything and keep the record here
    log_dir = None
    if record_prefix:
        log_dir = os.path.join(cf.BASE_DIR, "log")
        log_dir = helper.gen_log_dir(log_dir, record_prefix)

    # the first abduction needs lots of basic information
    first_abduction = False

    keep_link = None

    # Clean up all the files first
    helper.silentremove(cf.BASE_DIR, cf.GROUNDING)
    helper.silentremove(cf.BASE_DIR, cf.LASFILE)
    helper.silentremove(cf.BASE_DIR, cf.CLINGOFILE)
    helper.silentremove(cf.BASE_DIR, cf.LAS_CACHE, cf.LAS_CACHE_PATH)
    helper.create_file(cf.BASE_DIR, cf.LAS_CACHE, cf.LAS_CACHE_PATH)
    cf.ALREADY_LINK = False
    # Copy pos examples that used in TL before
    tl_file = os.path.join(cf.BASE_DIR, "tl_pos.las")
    helper.copy_file(tl_file, cf.LASFILE)
    # Add mode bias and adjacent definition for ILASP
    induction.copy_las_base(height, width, cf.LASFILE, is_link)

    # record the current hypothesis
    hypothesis = h
    abduction.make_lp_base(cell_range)

    wall_list = induction.get_all_walls(env)

    stats = plotting.EpisodeStats(
        episode_lengths=np.zeros(num_episodes),
        episode_rewards=np.zeros(num_episodes),
        episode_runtime=np.zeros(num_episodes))
    
    stats_ilasp = plotting.TimeStats(
        ILASP_runtime=np.zeros((num_episodes,cf.TIME_RANGE)))

    stats_test = plotting.EpisodeStats(
        episode_lengths=np.zeros(num_episodes),
        episode_rewards=np.zeros(num_episodes),
        episode_runtime=np.zeros(num_episodes))

    for i_episode in range(num_episodes):
        print("==============NEW EPISODE======================")
        print("i_episode ", i_episode)
        start_total_runtime = time.time()

        previous_state = env.reset()
        agent_position = env.unwrapped.observer.get_observation()["position"]
        env.render()
        previous_state_at = py_asp.state_at(previous_state[0], previous_state[1], 0)

        t = 0
        # Once the agent reaches the goal, the algorithm kicks in
        # Decaying epsilon greedy params
        # new_epsilon = epsilon*(1/(i_episode+1)**cf.DECAY_PARAM)
        new_epsilon = epsilon
        print("new_epsilon ", new_epsilon)

        while t < cf.TIME_RANGE:
            if first_abduction == False:
                # Convert syntax of H for ASP solver
                hypothesis_asp = py_asp.convert_las_asp(hypothesis)
                abduction.add_hypothesis(hypothesis_asp)
                abduction.add_start_state(agent_position)
                abduction.add_goal_state(goal)
                first_abduction = True

            # Update the starting position for Clingo
            agent_position = env.unwrapped.observer.get_observation()["position"]
            abduction.update_agent_position(agent_position, t)
            abduction.update_time_range(agent_position, t)

            # Run clingo to get a plan
            answer_sets = abduction.run_clingo(cf.CLINGOFILE)
            states_plan, actions_array = abduction.sort_planning(answer_sets)

            # Record clingo
            if record_prefix:
                inputfile = os.path.join(cf.BASE_DIR, cf.CLINGOFILE)
                helper.log_asp(inputfile, answer_sets, log_dir, i_episode, t)

            # Execute the planning
            for action_index, action in enumerate(actions_array):
                print("---------Planning phase---------------------")

                # Flip a coin. If threshold < epsilon, explore randomly
                threshold = random.uniform(0,1)
                if threshold < new_epsilon:
                    action_int = randint(0, 3)
                    if cf.IS_PRINT:
                        print("Taking a pure random action...", helper.convert_action(action_int))
                else:
                    # Following the plan
                    action_int = helper.get_action(action[1])
                    if cf.IS_PRINT:
                        print("Following the plan...", helper.convert_action(action_int))
                action_string = helper.convert_action(action_int)
                next_state, reward, done, _ = env.step(action_int)
                next_state_at = py_asp.state_at(next_state[0], next_state[1], t+1)

                if done:
                    reward = reward + 10
                else:
                    reward = reward - 1

                # Meanwhile, accumulate all background knowlege
                abduction.add_new_walls(previous_state, wall_list, cf.CLINGOFILE)

                # Make ASP syntax of state transition

                pos1, pos2,link = induction.generate_pos(hypothesis, previous_state, next_state, action_string, wall_list, cell_range)
                
                if link is not None:
                        keep_link = link
                # Update H if necessary
                if (not induction.check_ILASP_cover(hypothesis, pos1, height, width, keep_link)) or (not induction.check_ILASP_cover(hypothesis, pos2, height, width, keep_link)):
                    start_time = time.time()
                    hypothesis = induction.run_ILASP(cf.LASFILE, cf.CACHE_DIR)
                    ilasp_runtime = (time.time()-start_time)
                    stats_ilasp.ILASP_runtime[i_episode,t] += ilasp_runtime
                    # Convert syntax of H for ASP solver
                    hypothesis_asp = py_asp.convert_las_asp(hypothesis)
                    abduction.update_h(hypothesis_asp)
                    if record_prefix:
                        inputfile = os.path.join(cf.BASE_DIR, cf.LASFILE)
                        helper.log_las(inputfile, hypothesis, log_dir, i_episode, t)

                previous_state = next_state
                previous_state_at = next_state_at

                # Update stats
                stats.episode_rewards[i_episode] += reward
                stats.episode_lengths[i_episode] = action_index

                env.render()
                # time.sleep(0.1)
                t = t + 1

                if done or (threshold < new_epsilon):
                    break

            if not actions_array:
                t = t + 1

            if done:
                break
        
        stats.episode_runtime[i_episode] += (time.time()-start_total_runtime)
        run_experiment(env, i_episode, stats_test, width, cf.TIME_RANGE)

    return stats, stats_test,stats_ilasp

# env = gym.make('vgdl_experiment3.5-v0')
# env = gym.make('vgdl_experiment1-v0')
# env = gym.make('vgdl_aaa_small-v0')
env = gym.make('vgdl_experiment3_after-v0')
# env = gym.make('vgdl_aaa_field-v0')
# env = gym.make('vgdl_aaa_teleport-v0')

h = "state_after(V1) :- adjacent(right, V0, V1), state_before(V0), action(left), not wall(V1).\
state_after(V0) :- adjacent(right, V0, V1), state_before(V1), action(right), not wall(V0).\
state_after(V1) :- adjacent(down, V0, V1), state_before(V0), action(up), not wall(V1).\
state_after(V0) :- adjacent(down, V0, V1), state_before(V1), action(down), not wall(V0).\
state_after(V0) :- adjacent(right, V0, V1), state_before(V0), action(left), wall(V1).\
state_after(V1) :- adjacent(right, V0, V1), state_before(V1), action(right), wall(V0).\
state_after(V0) :- adjacent(up, V0, V1), state_before(V0), action(down), wall(V1).\
state_after(V1) :- adjacent(up, V0, V1), state_before(V1), action(up), wall(V0)."

goal = (16,1)

temp_dir = os.path.join(cf.BASE_DIR, "result_pkl/experiment3_after_TL")

for i in range(30):
    stats, stats_test,stats_ilasp = k_learning(env, 100, h, goal, epsilon=0.1, record_prefix="ee", is_link=False)
    # plotting.store_stats(stats, temp_dir, "exp3_TL_v{}".format(str(i)))
    # plotting.store_stats(stats_test, temp_dir, "exp3_test_TL_v{}".format(str(i)))

    # stats, stats_test = k_learning(env, 100, epsilon=0.4, record_prefix="experiment3.5_ver3", is_link=True)
    # plotting.store_stats(stats, cf.BASE_DIR, "vgdl_experiment4_after")
    # plotting.store_stats(stats_test, cf.BASE_DIR, "vgdl_experiment4_after_test")
    # plotting.plot_episode_stats_simple(stats)
