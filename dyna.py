# Model contains state, action next state and reward tuples.
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

FILENAME = "output.txt"
BACKGROUND = "background.lp"
CLINGOFILE = "clingo.lp"
TIME_RANGE = 20
env = gym.make('vgdl_aaa_small-v0')

def make_epsilon_greedy_policy(Q, epsilon, nA):
    def policy_fn(observation, episodes):
        new_epsilon = epsilon*(1/(episodes+1))
        A = np.ones(nA, dtype=float)* new_epsilon/nA
        best_action = np.argmax(Q[observation])
        A[best_action] += (1.0 - new_epsilon)
        return A
    return policy_fn

def q_learning(env, num_episodes, discount_factor=0.9, alpha=0.5, epsilon=0.1):
    """
    Args:
        alpha: TD learning rate
    """

    Q = defaultdict(lambda: np.zeros(env.action_space.n))
    walls= env.unwrapped.game.getSprites('wall')
    wall_list = []
    for wall in walls:
        x = wall.rect.left/5
        y = wall.rect.top/5
        wall_list.append((int(x),int(y)))

    stats = plotting.EpisodeStats(
        episode_lengths=np.zeros(num_episodes),
        episode_rewards=np.zeros(num_episodes))

    policy = make_epsilon_greedy_policy(Q, epsilon, env.action_space.n)

    # Clean up first
    helper.silentremove(FILENAME)
    helper.silentremove(BACKGROUND)
    helper.silentremove(CLINGOFILE)
    # Add mode bias and adjacent definition for ILASP
    helper.copy_las_base(FILENAME)

    for i_episode in range(num_episodes):
        if(i_episode+1) % 100 == 0:
            print("\rEpisode {}/{}.".format(i_episode+1, num_episodes), end="")
            sys.stdout.flush()

        # Reset the env and pick the first action
        state = env.reset()
        state_int = helper.convert_state(state[0], state[1])
        starting_point = state

        previous_state = state
        # for t in itertools.count():
        for t in range(TIME_RANGE):
            env.render()
            # time.sleep(0.1)

            # Take a step
            action_probs = policy(state_int, i_episode)

            action = np.random.choice(np.arange(len(action_probs)), p=action_probs)
            # action = env.action_space.sample()
            next_state, reward, done, _ = env.step(action)

            if done:
                reward = 100
                goal_state = next_state
                helper.make_lp(FILENAME, BACKGROUND, CLINGOFILE, starting_point, goal_state, TIME_RANGE)
                helper.run_clingo(CLINGOFILE)
            else:
                reward = reward - 1

            next_state_int = helper.convert_state(next_state[0], next_state[1])
            action_string = helper.convert_action(action)

            # Make ASP syntax of state transition
            helper.send_state_transition(previous_state, next_state, action_string, wall_list, FILENAME)
            # Meanwhile, accumulate all background knowlege
            helper.add_background(previous_state, wall_list, BACKGROUND)
            previous_state = next_state

            # Update stats
            stats.episode_rewards[i_episode] += reward
            stats.episode_lengths[i_episode] = t

            # TD Update
            best_next_action = np.argmax(Q[next_state_int])

            td_target = reward + discount_factor*Q[next_state_int][best_next_action]
            td_delta = td_target - Q[state_int][action]

            Q[state_int][action] += alpha * td_delta
            if done:
                break

            state = next_state
            state_int = next_state_int

    # Display the final Q-Table
    # for key, value in enumerate(Q.items()):
    #     print(value)
    #     print("\n")

    return Q, stats

Q, stats = q_learning(env, 100)
# plotting.plot_episode_stats(stats)
plotting.plot_episode_stats_simple(stats)
