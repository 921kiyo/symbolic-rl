 # import ipdb; ipdb.set_trace()
import matplotlib
import gym
import gym_vgdl
import numpy as np
import os
from gym import wrappers

import time
import random
import subprocess

# Q-learning
import itertools
import pandas as pd
import sys

from lib import plotting, py_asp, helper, induction, abduction

import gym, gym_vgdl

LASFILE = "output.las"
BACKGROUND = "background.lp"
CLINGOFILE = "clingo.lp"

# Increase this to make the decay faster
DECAY_PARAM = 1

TIME_RANGE = TIME_RANGE2 = 20
env = gym.make('vgdl_aaa_small-v0')

# TIME_RANGE = 450
# TIME_RANGE2 = 30
# env = gym.make('vgdl_aaa_maze-v0')

# TIME_RANGE = 300
# TIME_RANGE2 = 20
# env = gym.make('vgdl_aaa_L_shape-v0')

HEIGHT = env.unwrapped.game.height
WIDTH = env.unwrapped.game.width

def k_learning(env, num_episodes, discount_factor=0.9, epsilon=0.65):

    wall_list = induction.get_all_walls(env)

    is_las = False
    first_abduction = False
    # Clean up first
    helper.silentremove(LASFILE)
    helper.silentremove(BACKGROUND)
    helper.silentremove(CLINGOFILE)
    # Add mode bias and adjacent definition for ILASP
    induction.copy_las_base(LASFILE, HEIGHT, WIDTH)

    is_start = True

    stats = plotting.EpisodeStats(
        episode_lengths=np.zeros(num_episodes),
        episode_rewards=np.zeros(num_episodes))

    for i_episode in range(num_episodes):

        # Decaying epsilon greedy params
        # epsilon = epsilon*(1/(i_episode+1)**DECAY_PARAM)
        # print("epsilon ", epsilon)


        # Reset the env and pick the first action
        print("==============NEW EPISODE======================")
        # TODO DO I want ot update this in every episode??
        if is_start:
            state = env.reset()
            agent_position = env.unwrapped.game.getFeatures()
            print("reset the starting position to the beginning")   
        previous_state = state
        previous_state_at = py_asp.state_at(state[0], state[1], 1)
        any_exclusion = False
        # Once the plan is obtained, execute the plan
        if is_las:
            if first_abduction == False:
                abduction.make_lp(LASFILE, BACKGROUND, CLINGOFILE, agent_position, goal_state, TIME_RANGE2, WIDTH, HEIGHT)
                first_abduction = True

            abduction.add_starting_position(agent_position, CLINGOFILE)
            # print("REPLAN AGAIN")
            # time.sleep(1.5)
            # When B is updated, run abduction to do replan
            states_plan, actions_array = abduction.run_clingo(CLINGOFILE)
            print("ASP states ", states_plan)
            print("ASP actions ", actions_array)
            # Execute the planning
            for action_index, action in enumerate(actions_array):
                print("------------------------------")
                print("Planning phase... ", "take action ", action[1])
                env.render()
                # time.sleep(0.1)

                threshold = random.uniform(0,1)                
                action_int = helper.get_action(action[1])

                # explore a little bit
                if threshold < epsilon:
                    action_int = env.action_space.sample()
                    print("Taking a pure random action")
                    is_start = False
                    next_state, reward, done, _ = env.step(action_int)
                    if done:
                        reward = 100
                    else:
                        reward = reward - 1
                    agent_position = env.unwrapped.game.getFeatures()
                    print("agent_position ", agent_position)
                    
                    state = next_state
                    previous_state = next_state
                    observed_state = py_asp.state_at(next_state[0], next_state[1], action_index+2)
                    previous_state_at = observed_state
                    
                    # Update stats
                    stats.episode_rewards[i_episode] += reward
                    stats.episode_lengths[i_episode] = action_index

                    print("done?? ", done)
                    if done:
                        pass

                    break
                else:
                    next_state, reward, done, _ = env.step(action_int)
                    x = int(next_state[0])
                    y = int(next_state[1])
                    if x == 5 and y == 1:
                        print("KIND OF ")
                        reward = 100
                    else:
                        reward = reward - 1
                    # if done:
                    #     reward = 100
                    # else:
                    #     reward = reward - 1
                    
                    observed_state = py_asp.state_at(next_state[0], next_state[1], action_index+2)
                    # print("previous_state ", previous_state)
                    print("observed_state ",observed_state)
                    new_wall_added = abduction.add_new_walls(previous_state, wall_list, CLINGOFILE)
                    
                    # Update stats
                    stats.episode_rewards[i_episode] += reward
                    stats.episode_lengths[i_episode] = action_index

                    # B UPDATE
                    if new_wall_added:
                        print("new walls added!")
                        is_start = True
                        # add the new walls and run clingo again to replan
                        break
                    
                    walls = induction.get_wall_list(CLINGOFILE)
                    any_exclusion, pos = induction.generate_plan_pos(previous_state_at, observed_state, states_plan, action[1], walls)
                    pos += "\n"
                    induction.add_new_pos(pos, LASFILE)
                                        
                    predicted_state = abduction.get_predicted_state(previous_state_at, action[1], states_plan)
                    print("predicted_state ", predicted_state)

                    # H UPDATE
                    if(predicted_state != observed_state):
                        print("H is probably not correct!")

                    if done:
                        # is_las = False
                        break
                
                    state = next_state
                    previous_state = next_state
                    previous_state_at = observed_state
                
            is_start = True
            if any_exclusion:
                print("exclusion is there ", pos)
                hypothesis = induction.run_ILASP(LASFILE)
                print("New H ", hypothesis)
                induction.update_h(hypothesis, CLINGOFILE)
            else:
                print("No exclusion!!")

        # Random action until ILASP kicks in
        else:
            # for t in itertools.count():
            for t in range(TIME_RANGE):
                env.render()
                # time.sleep(0.1)

                # Take a step
                action = env.action_space.sample()
                next_state, reward, done, _ = env.step(action)
                if done:
                    reward = 100
                    goal_state = next_state
                    
                    is_las = True
                else:
                    reward = reward - 1

                action_string = helper.convert_action(action)

                # Make ASP syntax of state transition
                induction.send_state_transition(previous_state, next_state, action_string, wall_list, LASFILE)
                # Meanwhile, accumulate all background knowlege
                abduction.add_new_walls(previous_state, wall_list, BACKGROUND)
                previous_state = next_state

                # Update stats
                stats.episode_rewards[i_episode] += reward
                stats.episode_lengths[i_episode] = t

                if done:
                    break

                state = next_state

    return stats

# stats = k_learning(env, 200, epsilon=0)
# # plotting.plot_episode_stats(stats)
# plotting.plot_episode_stats_simple(stats)
