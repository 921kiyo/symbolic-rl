 # import ipdb; ipdb.set_trace()
import numpy as np
import os

import time
import random
import subprocess

# Q-learning
import itertools
import sys

import pickle

from lib import plotting, py_asp, helper, induction, abduction

import gym, gym_vgdl

LASFILE = "output.las"
BACKGROUND = "background.lp"
CLINGOFILE = "clingo.lp"
LAS_CACHE = "cache.las"
LAS_CACHE_PATH = "log"

base_dir = os.path.dirname(os.path.abspath(__file__))
dir = os.path.join(base_dir, LAS_CACHE_PATH)
CACHE = os.path.join(dir, LAS_CACHE)

# Increase this to make the decay faster
DECAY_PARAM = 1

TIME_RANGE = 300
TIME_RANGE2 = 30

def k_learning(env, num_episodes, epsilon=0.65, record_prefix=None, is_link=False):
    height = env.unwrapped.game.height
    width = env.unwrapped.game.width
    cell_range = "\ncell((0..{}, 0..{})).\n".format(width-1, height-1)

    log_dir = None
    # Log everything and keep it here
    if record_prefix:
        log_dir = os.path.join(base_dir, "log")
        log_dir = helper.gen_log_dir(log_dir, record_prefix)

    # check whether las file is in use
    is_las = False
    # check if
    first_abduction = False

    # Clean up all the files first
    helper.silentremove(base_dir, LASFILE)
    helper.silentremove(base_dir, BACKGROUND)
    helper.silentremove(base_dir, CLINGOFILE)
    helper.silentremove(base_dir, LAS_CACHE, LAS_CACHE_PATH)
    helper.create_file(base_dir, LAS_CACHE, LAS_CACHE_PATH)
    # Add mode bias and adjacent definition for ILASP
    induction.copy_las_base(LASFILE, height, width, is_link)

    wall_list = induction.get_all_walls(env)
    stats = plotting.EpisodeStats(
        episode_lengths=np.zeros(num_episodes),
        episode_rewards=np.zeros(num_episodes))

    for i_episode in range(num_episodes):
    # while i_episode < num_episodes:
        print("==============NEW EPISODE======================")
        print("i_episode ", i_episode)

        # Decaying epsilon greedy params
        new_epsilon = epsilon*(1/(i_episode+1)**DECAY_PARAM)

        state = env.reset()
        agent_position = env.unwrapped.observer.get_observation()["position"]

        previous_state = state
        previous_state_at = py_asp.state_at(state[0], state[1], 1)
        any_exclusion = False
        is_exclusion = False

        time = 0
        # Once the plan is obtained, execute the plan
        if is_las:
            while time < TIME_RANGE:
                if first_abduction == False:
                    # Run ILASP to get H
                    hypothesis = induction.run_ILASP(LASFILE, CACHE)
                    abduction.make_lp(hypothesis, LASFILE, BACKGROUND, CLINGOFILE, agent_position, goal_state, TIME_RANGE2, cell_range)
                    first_abduction = True

                    # Logging set up
                    if record_prefix:
                        inputfile = os.path.join(base_dir, LASFILE)
                        helper.log_las(inputfile, hypothesis, log_dir, i_episode, time)

                # Update the starting position for Clingo
                agent_position = env.unwrapped.observer.get_observation()["position"]
                print("agent_position ", agent_position)
                abduction.update_agent_position(agent_position, CLINGOFILE, time)

                # Run clingo to get a plan
                answer_sets = abduction.run_clingo(CLINGOFILE)
                states_plan, actions_array = abduction.sort_planning(answer_sets)
                print("ASP states ", states_plan)
                print("ASP actions ", actions_array)

                # Logging clingo
                if record_prefix:
                    inputfile = os.path.join(base_dir, CLINGOFILE)
                    helper.log_asp(inputfile, answer_sets, log_dir, i_episode, time)

                # Execute the planning
                for action_index, action in enumerate(actions_array):
                    # TODO fix this timestamp
                    time = time + 1
                    print("------------------------------")
                    print("Planning phase... ", "take action ", action[1])

                    # Flip a coin. If threshold < epsilon, explore randomly
                    threshold = random.uniform(0,1)
                    if threshold < new_epsilon:
                        print("Taking a pure random action...")
                        action_int = env.action_space.sample()
                        print("random action is ", helper.convert_action(action_int))

                        # TODO AFTER THIS AND ELSE, CAN I SOMEHOW COMBINE THEM TO SIMPLIFY??
                        next_state, reward, done, _ = env.step(action_int)

                        if done:
                            reward = reward + 100
                        else:
                            reward = reward - 1

                        observed_state = py_asp.state_at(next_state[0], next_state[1], action_index+2)
                        print("observed_state in random ",observed_state)

                        # Update stats
                        stats.episode_rewards[i_episode] += reward
                        stats.episode_lengths[i_episode] = action_index

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

                        state = next_state
                        previous_state = next_state
                        previous_state_at = observed_state
                        print("next_state ", next_state)

                        # TODO AFTER THIS AND ELSE, CAN I SOMEHOW COMBINE THEM TO SIMPLIFY??
                        if done:
                            break
                        # break
                    else:
                        # Following the plan
                        action_int = helper.get_action(action[1])
                        next_state, reward, done, _ = env.step(action_int)

                        if done:
                            reward = reward + 100
                        else:
                            reward = reward - 1

                        observed_state = py_asp.state_at(next_state[0], next_state[1], action_index+2)
                        print("observed_state ",observed_state)

                        # Update stats
                        stats.episode_rewards[i_episode] += reward
                        stats.episode_lengths[i_episode] = action_index

                        new_wall_added = abduction.add_new_walls(previous_state, wall_list, CLINGOFILE)
                        if new_wall_added:
                            print("new walls added!")

                        # Add pos
                        walls = induction.get_seen_walls(CLINGOFILE)
                        walls = walls + wall_list
                        any_exclusion, pos = induction.generate_plan_pos(previous_state_at, observed_state, states_plan, action[1], walls, is_link)
                        pos += "\n"
                        helper.append_to_file(pos, LASFILE)

                        if any_exclusion:
                            is_exclusion = True

                        # Check if the prediction is the same as observed state
                        predicted_state = abduction.get_predicted_state(previous_state_at, action[1], states_plan)
                        print("predicted_state ", predicted_state)
                        # if not, update H
                        if(predicted_state != observed_state):
                            print("H is probably not correct!")

                        state = next_state
                        previous_state = next_state
                        previous_state_at = observed_state

                        if done:
                            break
                    env.render()
                    # time.sleep(0.1)

                if is_exclusion:
                    print("exclusion is there ", pos)
                    hypothesis = induction.run_ILASP(LASFILE, CACHE)
                    if record_prefix:
                        inputfile = os.path.join(base_dir, LASFILE)
                        helper.log_las(inputfile, hypothesis, log_dir, i_episode, time)

                    print("New H ", hypothesis)
                    abduction.update_h(hypothesis, CLINGOFILE)
                else:
                    print("No exclusion!!")

                if done:
                    break

        # Random action until ILASP kicks in
        else:
            for t in range(TIME_RANGE):
                env.render()
                # time.sleep(0.1)

                # Take a step
                action = env.action_space.sample()
                next_state, reward, done, _ = env.step(action)

                if done:
                    reward = reward + 100
                    goal_state = next_state
                    is_las = True
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
                    # i_episode += 1
                    break

                state = next_state

            # if x == int(goal_state[0]) and y == int(goal_state[1]):
            #     # break

    return stats

# env = gym.make('vgdl_experiment1-v0')
# env = gym.make('vgdl_aaa_small-v0')
env = gym.make('vgdl_aaa_field-v0')
# env = gym.make('vgdl_aaa_teleport-v0')
stats = k_learning(env, 50, epsilon=0, record_prefix="None", is_link=False)

plotting.plot_episode_stats_simple(stats)
