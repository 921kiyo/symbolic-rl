 # import ipdb; ipdb.set_trace()
import matplotlib
import gym
import gym_vgdl
import numpy as np
import os
from gym import wrappers

import time

import subprocess

# Q-learning
import itertools
import pandas as pd
import sys

from collections import defaultdict
from lib import plotting, py_asp, helper, induction, abduction

import gym, gym_vgdl

LASFILE = "output.las"
BACKGROUND = "background.lp"
CLINGOFILE = "clingo.lp"
# TIME_RANGE = 20
# env = gym.make('vgdl_aaa_small-v0')

TIME_RANGE = 450
TIME_RANGE2 = 30
env = gym.make('vgdl_aaa_maze-v0')

HEIGHT = env.unwrapped.game.height
WIDTH = env.unwrapped.game.width
# import ipdb; ipdb.set_trace()

def k_learning(env, num_episodes, discount_factor=0.9, alpha=0.5, epsilon=0.1):
    wall_list = induction.get_all_walls(env)
    is_las = False
    first_abduction = False
    # Clean up first
    helper.silentremove(LASFILE)
    helper.silentremove(BACKGROUND)
    helper.silentremove(CLINGOFILE)
    # Add mode bias and adjacent definition for ILASP
    induction.copy_las_base(LASFILE, HEIGHT, WIDTH)

    for i_episode in range(num_episodes):
        # Reset the env and pick the first action
        state = env.reset()
        starting_point = state
        previous_state = state
        previous_state_at = py_asp.state_at(state[0], state[1], 1)
        # Once the plan is obtained, execute the plan
        if is_las:
            if first_abduction == False:
                abduction.make_lp(LASFILE, BACKGROUND, CLINGOFILE, starting_point, goal_state, TIME_RANGE2, WIDTH, HEIGHT)
                first_abduction = True
     
            states_plan, actions_array = abduction.run_clingo(CLINGOFILE)
            print("ASP states ", states_plan)
            print("ASP actions ", actions_array)
            # Execute the planning
            for action_index, action in enumerate(actions_array):
                print("------------------------------")
                print("Planning phase... ", "take action ", action[1])
                env.render()
                time.sleep(0.3)
                action_int = helper.get_action(action[1])
                next_state, reward, done, _ = env.step(action_int)
                observed_state = py_asp.state_at(next_state[0], next_state[1], action_index+2)
                print("observed_state ",observed_state)
                new_wall_added = abduction.add_new_walls(previous_state, wall_list, CLINGOFILE)
                
                # B UPDATE
                if new_wall_added:
                    print("new walls added!")
                    # add the new walls and run clingo again to replan
                    break
                
                wall_list = induction.get_wall_list(CLINGOFILE)
                any_exclusion, pos = induction.generate_plan_pos(previous_state_at, observed_state, states_plan, action[1], wall_list)
                pos += "\n"
                induction.add_new_pos(pos, LASFILE)
                
                # H UPDATE
                if any_exclusion:
                    print("exclusion is there ", pos)
                    hypothesis = induction.run_ILASP(LASFILE)
                    print("New H ", hypothesis)
                    induction.update_h(hypothesis, CLINGOFILE)
                    break
                else:
                    print("No exclusion!!")

                predicted_state = states_plan[action_index+1][1]
                print("predicted_state ", predicted_state)
                # H UPDATE
                if(predicted_state != observed_state):
                    print("H is probably not correct!")
                
                # explore a little bit
                
                # print("done ", done)
                # if done:
                #     is_las = False
                #     break
                state = next_state
                previous_state = next_state
                previous_state_at = observed_state
        # Random action
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
                # print("previous_state ", previous_state)
                # print("next_state ", next_state)
                # print("wall_list ", wall_list)
                induction.send_state_transition(previous_state, next_state, action_string, wall_list, LASFILE)
                # Meanwhile, accumulate all background knowlege
                abduction.add_new_walls(previous_state, wall_list, BACKGROUND)
                previous_state = next_state

                # Update stats
                # stats.episode_rewards[i_episode] += reward
                # stats.episode_lengths[i_episode] = t

                if done:
                    break

                state = next_state

k_learning(env, 100)
