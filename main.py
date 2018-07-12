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
from lib import plotting, py2asp, helper

import gym, gym_vgdl

FILENAME = "output.las"
BACKGROUND = "background.lp"
CLINGOFILE = "clingo.lp"
TIME_RANGE = 20
env = gym.make('vgdl_aaa_small-v0')

HEIGHT = env.unwrapped.game.height
WIDTH = env.unwrapped.game.width

def q_learning(env, num_episodes, discount_factor=0.9, alpha=0.5, epsilon=0.1):
    wall_list = helper.get_all_walls(env)
    is_las = False
    
    # Clean up first
    helper.silentremove(FILENAME)
    helper.silentremove(BACKGROUND)
    helper.silentremove(CLINGOFILE)
    # Add mode bias and adjacent definition for ILASP
    helper.copy_las_base(FILENAME)

    for i_episode in range(num_episodes):
        # Reset the env and pick the first action
        state = env.reset()
        starting_point = state
        previous_state = state

        # Once the plan is obtained, execute the plan
        if is_las:
            helper.make_lp(FILENAME, BACKGROUND, CLINGOFILE, starting_point, goal_state, TIME_RANGE, WIDTH, HEIGHT)
            states_array, actions_array = helper.run_clingo(CLINGOFILE)
            # Execute the planning
            for action in actions_array:
                next_state, reward, done = helper.execute_planning(env, states_array, action)
            # explore a little bit
                print("done ", done)
                if done:
                    is_las = False
                    break
                state = next_state
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
                print("previous_state ", previous_state)
                print("next_state ", next_state)
                print("wall_list ", wall_list)
                helper.send_state_transition(previous_state, next_state, action_string, wall_list, FILENAME)
                # Meanwhile, accumulate all background knowlege
                helper.add_background(previous_state, wall_list, BACKGROUND)
                previous_state = next_state

                # Update stats
                # stats.episode_rewards[i_episode] += reward
                # stats.episode_lengths[i_episode] = t

                if done:
                    break

                state = next_state

q_learning(env, 100)
