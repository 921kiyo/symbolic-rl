# Model contains state, action next state and reward tuples.

import matplotlib
import gym
import gym_vgdl
import numpy as np

from gym import wrappers

import time


# Q-learning
import itertools
import pandas as pd
import sys

from collections import defaultdict
from lib import plotting

# ASP conversion
import py2asp

env = gym.make('vgdl_aaa_small-v0')

def make_epsilon_greedy_policy(Q, epsilon, nA):
    def policy_fn(observation, episodes):
        new_epsilon = epsilon*(1/(episodes+1))
        A = np.ones(nA, dtype=float)* new_epsilon/nA
        best_action = np.argmax(Q[observation])
        A[best_action] += (1.0 - new_epsilon)
        return A
    return policy_fn

def convert_state(x, y):
    return (x-1)*19+y

def q_learning(env, num_episodes, discount_factor=0.9, alpha=0.5, epsilon=0.1):
    """
    Args:
        alpha: TD learning rate
    """

    Q = defaultdict(lambda: np.zeros(env.action_space.n))

    stats = plotting.EpisodeStats(
        episode_lengths=np.zeros(num_episodes),
        episode_rewards=np.zeros(num_episodes))

    policy = make_epsilon_greedy_policy(Q, epsilon, env.action_space.n)
    for i_episode in range(num_episodes):

        if(i_episode+1) % 100 == 0:
            print("\rEpisode {}/{}.".format(i_episode+1, num_episodes), end="")
            sys.stdout.flush()

        # Reset the env and pick the first action
        state = env.reset()
        state_int = convert_state(state[1], state[0])

        # for t in itertools.count():
        for t in range(20):
            env.render()
            # time.sleep(0.1)
            # Take a step
            action_probs = policy(state_int, i_episode)

            action = np.random.choice(np.arange(len(action_probs)), p=action_probs)
            # action = env.action_space.sample()

            # 0: UP
            # 1: DOWN
            # 2: LEFT
            # 3: RIGHT

            next_state, reward, done, _ = env.step(action)
            if done:
                reward = 100
            else:
                reward = reward - 1

            next_state_int = convert_state(next_state[1], next_state[0])
            print("After action ", action, ", the state is now at x=",
                    next_state[0], ", y=", next_state[1], " reward: ", reward,
                    " at time ", t, " at episode ", i_episode)
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
