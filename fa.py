import gym
import gym_vgdl
import numpy as np

import time

# Q-learning
import itertools
import sys
import os.path
import pickle

from collections import defaultdict

from lib import plotting, py_asp, helper, induction, abduction

TIME_RANGE = 100

base_dir = os.path.dirname(os.path.abspath(__file__))

class Estimator():
    pass

def make_epsilon_greedy_policy(Q, epsilon, nA):
    def policy_fn(observation, episodes):
        new_epsilon = epsilon*(1/(episodes+1))
        A = np.ones(nA, dtype=float)* new_epsilon/nA
        best_action = np.argmax(Q[observation])
        A[best_action] += (1.0 - new_epsilon)
        return A
    return policy_fn

def q_learning(env, estimator, num_episodes, discount_factor=1, alpha=0.5, epsilon=0.1, epsilon_decay=1.0):
    """
    Args:
        alpha: TD learning rate
    """
    # height = env.unwrapped.game.height
    width = env.unwrapped.game.width
    
    stats = plotting.EpisodeStats(
        episode_lengths=np.zeros(num_episodes),
        episode_rewards=np.zeros(num_episodes))
    
    for i_episode in range(num_episodes):
        print("------------------------------")
        if(i_episode+1) % 100 == 0:
            print("\rEpisode {}/{}.".format(i_episode+1, num_episodes), end="")
            sys.stdout.flush()

        # The policy we're following
        policy = make_epsilon_greedy_policy(
            estimator, epsilon * epsilon_decay**i_episode, env.action_space.n)
        
        # Print out which episode we're on, useful for debugging.
        # Also print reward for last episode
        last_reward = stats.episode_rewards[i_episode - 1]
        sys.stdout.flush()
        
        # Reset the environment and pick the first action
        state = env.reset()


        # Reset the env and pick the first action
        previous_state = env.reset()
        state_int = helper.convert_state(previous_state[1], previous_state[0], width)


        for t in range(TIME_RANGE):
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

            # Update stats
            stats.episode_rewards[i_episode] += reward
            stats.episode_lengths[i_episode] = t

            previous_state = next_state

            next_state_int = helper.convert_state(next_state[1], next_state[0], width)

            # TD Update
            q_value_next = estimator.predict(next_state)
            td_target = reward + discount_factor*np.max(q_value_next)
            estimator.update(previous_state, action, td_target)

            # best_next_action = np.argmax(Q[next_state_int])
            # td_target = reward + discount_factor*Q[next_state_int][best_next_action]
            # td_delta = td_target - Q[state_int][action]

            # Q[state_int][action] += alpha * td_delta

            if done:
                break

            previous_state = next_state
            state_int = next_state_int

        # run_experiment(env,state_int, Q, stats_test, i_episode, width, TIME_RANGE)

    return Q, stats

env = gym.make('vgdl_experiment1-v0')

estimator = Estimator()
Q, stats = q_learning(env, estimator, 100)

# import ipdb; ipdb.set_trace()
# plotting.plot_episode_stats_test(stats, stats_test)

plotting.plot_episode_stats_simple(stats)
