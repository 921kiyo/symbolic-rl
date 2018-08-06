 # import ipdb; ipdb.set_trace()
import numpy as np
import os, time, random, subprocess
from lib import plotting, py_asp, helper, induction, abduction
import gym, gym_vgdl

from random import randint

LASFILE = "output.las"
BACKGROUND = "background.lp"
CLINGOFILE = "clingo.lp"
LAS_CACHE = "cache.las"
LAS_CACHE_PATH = "log"

BASE_DIR = os.path.dirname(os.path.abspath(__file__))
dir = os.path.join(BASE_DIR, LAS_CACHE_PATH)
CACHE_DIR = os.path.join(dir, LAS_CACHE)

# Increase this to make the decay faster
DECAY_PARAM = 1

TIME_RANGE = 200

is_print = True

def run_experiment(env, ILASP_ran, i_episode, stats_test, width, time_range):
    current_state = env.reset()
    current_state_int = helper.convert_state(current_state[1], current_state[0], width)
    if ILASP_ran:
        answer_sets = abduction.run_clingo(CLINGOFILE)
        states_plan, actions_array = abduction.sort_planning(answer_sets)
        print("ASP states ", states_plan)
        print("ASP actions ", actions_array)

        time = 0
        while time < time_range:
            print("testing phase....")
            for action_index, action in enumerate(actions_array):      
                action_int = helper.get_action(action[1])
                action_string = helper.convert_action(action_int)
                next_state, reward, done, _ = env.step(action_int)

                current_state_int = helper.convert_state(next_state[1], next_state[0], width)
    
                if done:
                    reward = reward + 100
                else:
                    reward = reward - 1

                print("reward here is ", reward)
                print("i_episode here is ", i_episode)
                # Update stats
                stats_test.episode_rewards_test[i_episode] += reward
                stats_test.episode_lengths_test[i_episode] = time
                time = time + 1

            if done:
                break
            
            # If clingo does not give you a right path, just accumulate -1 punishment
            action_int = 4 
            next_state, reward, done, _ = env.step(action_int)
            if done:
                reward = reward + 100
            else:
                reward = reward - 1
            
            stats_test.episode_rewards_test[i_episode] += reward
            stats_test.episode_lengths_test[i_episode] = time
            time = time + 1
    else:
        for t in range(time_range):
            action_int = 4
            next_state, reward, done, _ = env.step(action_int)
            if done:
                reward = reward + 100
            else:
                reward = reward - 1
            stats_test.episode_rewards_test[i_episode] += reward
            stats_test.episode_lengths_test[i_episode] = t


def k_learning(env, num_episodes, epsilon=0.65, record_prefix=None, is_link=False):
    # Get cell range for the game
    height = env.unwrapped.game.height
    width = env.unwrapped.game.width
    cell_range = "\ncell((0..{}, 0..{})).\n".format(width-1, height-1)

    # Log everything and keep the record here
    log_dir = None
    if record_prefix:
        log_dir = os.path.join(BASE_DIR, "log")
        log_dir = helper.gen_log_dir(log_dir, record_prefix)

    # This will be true once the agent reaches the goal (and ILASP kicks in)
    reached_goal = False

    # the first abduction needs lots of basic information
    first_abduction = False

    ILASP_ran = False
    # Clean up all the files first
    helper.silentremove(BASE_DIR, LASFILE)
    helper.silentremove(BASE_DIR, BACKGROUND)
    helper.silentremove(BASE_DIR, CLINGOFILE)
    helper.silentremove(BASE_DIR, LAS_CACHE, LAS_CACHE_PATH)
    helper.create_file(BASE_DIR, LAS_CACHE, LAS_CACHE_PATH)
    
    # Add mode bias and adjacent definition for ILASP
    induction.copy_las_base(LASFILE, height, width, is_link)

    # record the current hypothesis
    hypothesis = ""

    wall_list = induction.get_all_walls(env)

    stats = plotting.EpisodeStats(
        episode_lengths=np.zeros(num_episodes),
        episode_rewards=np.zeros(num_episodes))

    stats_test = plotting.EpisodeStats_test(
        episode_lengths_test=np.zeros(num_episodes),
        episode_rewards_test=np.zeros(num_episodes))

    for i_episode in range(num_episodes):
        print("==============NEW EPISODE======================")
        print("i_episode ", i_episode)

        previous_state = env.reset()
        agent_position = env.unwrapped.observer.get_observation()["position"]

        previous_state_at = py_asp.state_at(previous_state[0], previous_state[1], 0)
        any_exclusion = False
        is_exclusion = False

        time = 0
        # Once the agent reaches the goal, the algorithm kicks in
        if reached_goal:
            ILASP_ran = True
            # Decaying epsilon greedy params
            new_epsilon = epsilon*(1/(i_episode+1)**DECAY_PARAM)
            print("new_epsilon ", new_epsilon)

            while time < TIME_RANGE:
                if first_abduction == False:
                    # Run ILASP to get H
                    hypothesis = induction.run_ILASP(LASFILE, CACHE_DIR)
                    # Convert syntax of H for ASP solver
                    hypothesis_asp = py_asp.convert_las_asp(hypothesis)
                    abduction.make_lp(hypothesis_asp, LASFILE, BACKGROUND, CLINGOFILE, agent_position, goal_state, TIME_RANGE, cell_range)
                    first_abduction = True
                    # Logging set up and record ILASP
                    if record_prefix:
                        inputfile = os.path.join(BASE_DIR, LASFILE)
                        helper.log_las(inputfile, hypothesis, log_dir, i_episode, time)

                # Update the starting position for Clingo
                agent_position = env.unwrapped.observer.get_observation()["position"]
                abduction.update_agent_position(agent_position, CLINGOFILE, time)
                abduction.update_time_range(agent_position, CLINGOFILE, time, TIME_RANGE)

                # Run clingo to get a plan
                answer_sets = abduction.run_clingo(CLINGOFILE)
                states_plan, actions_array = abduction.sort_planning(answer_sets)
                if is_print:
                    print("ASP states ", states_plan)
                    print("ASP actions ", actions_array)

                # Record clingo
                if record_prefix:
                    inputfile = os.path.join(BASE_DIR, CLINGOFILE)
                    helper.log_asp(inputfile, answer_sets, log_dir, i_episode, time)

                # Execute the planning
                for action_index, action in enumerate(actions_array):
                    print("---------Planning phase---------------------")

                    # Flip a coin. If threshold < epsilon, explore randomly
                    threshold = random.uniform(0,1)
                    if threshold < new_epsilon:
                        action_int = randint(0, 3)
                        if is_print:
                            print("Taking a pure random action...", helper.convert_action(action_int))
                    else:
                        # Following the plan
                        action_int = helper.get_action(action[1])
                        if is_print:
                            print("Following the plan...", helper.convert_action(action_int))
                    
                    action_string = helper.convert_action(action_int)
                    next_state, reward, done, _ = env.step(action_int)
                    if done:
                        reward = reward + 100
                    else:
                        reward = reward - 1

                    observed_state = py_asp.state_at(next_state[0], next_state[1], time+1)
                    if is_print:
                        print("observed_state ",observed_state)

                    # Update stats
                    stats.episode_rewards[i_episode] += reward
                    stats.episode_lengths[i_episode] = action_index
                    
                    # Update B if any new walls are discovered
                    new_wall_added = abduction.add_new_walls(previous_state, wall_list, CLINGOFILE)
                    if new_wall_added:
                        print("new walls added!")

                    # Add pos
                    walls = induction.get_seen_walls(CLINGOFILE)
                    walls = walls + wall_list
                    any_exclusion, pos = induction.generate_plan_pos(previous_state_at, observed_state, states_plan, action_string, walls, is_link)
                    pos += "\n"
                    helper.append_to_file(pos, LASFILE)

                    if any_exclusion:
                        is_exclusion = True

                    # when followed the plan (not random action)
                    if threshold >= new_epsilon:
                        # Check if the prediction is the same as observed state
                        predicted_state = abduction.get_predicted_state(previous_state_at, action[1], states_plan)
                        if is_print:
                            print("predicted_state ", predicted_state)
                        # if not, update H
                        if(predicted_state != observed_state):
                            print("H is probably not correct!")
                            if not induction.check_ILASP_cover(BASE_DIR, LASFILE, hypothesis):
                                hypothesis = induction.run_ILASP(LASFILE, CACHE_DIR)
                                # Convert syntax of H for ASP solver
                                hypothesis_asp = py_asp.convert_las_asp(hypothesis)

                                if record_prefix:
                                    inputfile = os.path.join(BASE_DIR, LASFILE)
                                    helper.log_las(inputfile, hypothesis, log_dir, i_episode, time)

                    previous_state = next_state
                    previous_state_at = observed_state
                    
                    env.render()
                    # time.sleep(0.1)
                    time = time + 1
                
                    if done:
                        break

                    if threshold < new_epsilon:
                        break
                
                if is_exclusion:
                    if is_print:
                        print("exclusion is there ", pos) 
                    if not induction.check_ILASP_cover(BASE_DIR, LASFILE, hypothesis):                 
                        hypothesis = induction.run_ILASP(LASFILE, CACHE_DIR)
                        # Convert syntax of H for ASP solver
                        hypothesis_asp = py_asp.convert_las_asp(hypothesis)

                        abduction.update_h(hypothesis_asp, CLINGOFILE)
                        if record_prefix:
                            inputfile = os.path.join(BASE_DIR, LASFILE)
                            helper.log_las(inputfile, hypothesis, log_dir, i_episode, time-1)
                
                if done:
                    break
        # Random action until ILASP kicks in
        else:
            for t in range(TIME_RANGE):
                env.render()
                # time.sleep(0.1)

                # Take a step
                action = randint(0, 3)
                next_state, reward, done, _ = env.step(action)

                if done:
                    reward = reward + 100
                    goal_state = next_state
                    reached_goal = True
                else:
                    reward =reward - 1

                action_string = helper.convert_action(action)

                # Make ASP syntax of state transition
                induction.send_state_transition_pos(previous_state, next_state, action_string, wall_list, LASFILE, BACKGROUND)
                # Meanwhile, accumulate all background knowlege
                abduction.add_new_walls(previous_state, wall_list, BACKGROUND)
                # induction.add_surrounding_walls((previous_state, wall_list, BACKGROUND))
                previous_state = next_state

                # Update stats
                stats.episode_rewards[i_episode] += reward
                stats.episode_lengths[i_episode] = t

                if done:
                    break
        
        run_experiment(env, ILASP_ran, i_episode, stats_test, width, TIME_RANGE)

    return stats, stats_test

env = gym.make('vgdl_experiment3.5-v0')
# env = gym.make('vgdl_aaa_small-v0')
# env = gym.make('vgdl_aaa_field-v0')
# env = gym.make('vgdl_aaa_teleport-v0')
# stats, stats_test = k_learning(env, 50, epsilon=0.4, record_prefix=None, is_link=False)
stats, stats_test = k_learning(env, 50, epsilon=0.3, record_prefix="experiment3.5", is_link=True)
plotting.store_stats(stats, BASE_DIR, "experiment3.5_ILASP")
plotting.store_stats(stats_test, BASE_DIR, "experiment3.5_ILASP_test")
plotting.plot_episode_stats_simple(stats)
