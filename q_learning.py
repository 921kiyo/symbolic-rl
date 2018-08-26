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
import config as cf

base_dir = os.path.dirname(os.path.abspath(__file__))

ACTION_SPACE = 4 # env.action_space.n

def make_epsilon_greedy_policy(Q, epsilon, nA):
    def policy_fn(observation, episodes):
        # new_epsilon = epsilon*(1/(episodes+1))
        new_epsilon = epsilon
        A = np.ones(nA, dtype=float)* new_epsilon/nA
        best_action = np.argmax(Q[observation])
        print("action_probs ", A[0])
        print("best_action ", best_action)
        A[best_action] += (1.0 - new_epsilon)
        return A
    return policy_fn

def run_experiment(env, Q, stats_test, i_episode, width, time_range):
    
    policy = make_epsilon_greedy_policy(Q, 0, ACTION_SPACE)
    
    current_state = env.reset()
    current_state_int = helper.convert_state(current_state[1], current_state[0], width)
    for t in range(time_range):
        env.render()
        # time.sleep(0.1)
        print("running test.....", current_state_int)
        action_probs = policy(current_state_int, 1)
        action = np.argmax(action_probs)
        next_state, reward, done, _ = env.step(action)

        current_state_int = helper.convert_state(next_state[1], next_state[0], width)
        
        if done:
            reward = 10
        else:
            reward = reward - 1    
        print("reward here is ", reward)
        print("i_episode here is ", i_episode)
        # Update stats
        # for i in range(i_episode-9, i_episode+1):
        stats_test.episode_rewards[i_episode] += reward
        stats_test.episode_lengths[i_episode] = t
        
        if done:
            break

def q_learning(env, num_episodes, discount_factor=1, alpha=0.5, epsilon=0.1):
    """
    Args:
        alpha: TD learning rate
    """
    # height = env.unwrapped.game.height
    width = env.unwrapped.game.width
    # Q = defaultdict(lambda: np.zeros(ACTION_SPACE))
    # Q = defaultdict(lambda: np.random.rand(ACTION_SPACE))
    Q = defaultdict(lambda: np.ones(ACTION_SPACE))
    
    stats = plotting.EpisodeStats(
        episode_lengths=np.zeros(num_episodes),
        episode_rewards=np.zeros(num_episodes),
        episode_runtime=np.zeros(num_episodes))
    
    stats_test = plotting.EpisodeStats(
        episode_lengths=np.zeros(num_episodes),
        episode_rewards=np.zeros(num_episodes),
        episode_runtime=np.zeros(num_episodes))

    policy = make_epsilon_greedy_policy(Q, epsilon, ACTION_SPACE)
    for i_episode in range(num_episodes):
        print("------------------------------")
        start_total_runtime = time.time()

        # Reset the env and pick the first action
        previous_state = env.reset()
        state_int = helper.convert_state(previous_state[1], previous_state[0], width)

        for t in range(cf.TIME_RANGE):
            env.render()
            # time.sleep(0.1)
            # Take a step
            action_probs = policy(state_int, i_episode)
            action = np.random.choice(np.arange(len(action_probs)), p=action_probs)
            # action = env.action_space.sample()
            if(action == 4):
                import ipdb; ipdb.set_trace()
            # print("---------------------------------")
            # 0: UP
            # 1: DOWN
            # 2: LEFT
            # 3: RIGHT

            next_state, reward, done, _ = env.step(action)
            if done:
                reward = 10
            else:
                reward = reward - 1

            previous_state = next_state

            next_state_int = helper.convert_state(next_state[1], next_state[0], width)

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

            previous_state = next_state
            state_int = next_state_int

        stats.episode_runtime[i_episode] += (time.time()-start_total_runtime)
        # run_experiment(env, Q, stats_test, i_episode, width, cf.TIME_RANGE)
    return Q, stats, stats_test

env = gym.make('vgdl_experiment2-v0')
temp_dir = os.path.join(base_dir, "result_pkl/experiment2_q")
# import ipdb; ipdb.set_trace()
# Q, stats, stats_test = q_learning(env, 100)

# for i in range(30):
Q, stats, stats_test = q_learning(env, 100)
    # plotting.store_stats(stats, temp_dir, "exp2_v{}".format(i))
    # plotting.store_stats(stats_test, temp_dir, "exp2_test_v{}".format(i))

# import ipdb; ipdb.set_trace()
# plotting.plot_episode_stats_test(stats, stats_test)

# plotting.plot_episode_stats(stats)
# plotting.plot_episode_stats_simple(stats)
# plotting.plot_episode_stats_simple(stats_test)
