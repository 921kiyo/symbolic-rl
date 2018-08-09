import gym
import gym_vgdl
import numpy as np
import math
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
ACTION_SPACE = 4 # env.action_space.n

def make_epsilon_greedy_policy(Q, epsilon, nA):
    def policy_fn(observation, episodes):
        new_epsilon = epsilon*(1/(episodes+1))
        A = np.ones(nA, dtype=float)* new_epsilon/nA
        best_action = np.argmax(Q[observation])
        A[best_action] += (1.0 - new_epsilon)
        return A
    return policy_fn

def q_learning(env, num_episodes, discount_factor=1, alpha=0.5, epsilon=0.1, epsilon_decay=1.0):
    """
    Args:
        alpha: TD learning rate
    """
    height = env.unwrapped.game.height
    width = env.unwrapped.game.width

    wall_list = induction.get_all_walls(env)
    
    stats = plotting.EpisodeStats(
        episode_lengths=np.zeros(num_episodes),
        episode_rewards=np.zeros(num_episodes))
    
    # 4 actions + 2 for X and Y + 4 surroundings
    weights = np.random.rand(10)

    for i_episode in range(num_episodes):
        print("------------------------------")

        # The policy we're following
        # policy = make_epsilon_greedy_policy(
        #     epsilon * epsilon_decay**i_episode, env.action_space.n)
        
        # Print out which episode we're on, useful for debugging.
        # Also print reward for last episode
        last_reward = stats.episode_rewards[i_episode - 1]
        sys.stdout.flush()
        
        # Reset the env and pick the first action
        previous_state = env.reset()
        
        action_probs = np.ones(4, dtype=float)
        for t in range(TIME_RANGE):
            env.render()
            # time.sleep(0.1)
            # Take a step
            # action_probs = policy(state_int, i_episode)
            
            up_wall, down_wall, right_wall, left_wall = helper.check_surrounding_walls(int(previous_state[0]), int(previous_state[1]), wall_list)

            normalised_x = int(previous_state[0])/int(width)
            normalised_y = int(previous_state[1])/int(height)

            for i in range(0,4):
                action_probs[i] = weights[i] + normalised_x*weights[4] + normalised_y*weights[5] + \
                                  int(up_wall)*weights[6] + int(down_wall)*weights[7] + int(right_wall)*weights[8] + int(left_wall)*weights[9]

                # action_probs[i] = weights[i] + int(previous_state[0])*weights[4] + int(previous_state[1])*weights[5] + \
                #                   int(up_wall)*weights[6] + int(down_wall)*weights[7] + int(right_wall)*weights[8] + int(left_wall)*weights[9] 
            action = np.argmax(action_probs)
            print("action ", action)
            # action = np.random.choice(np.arange(len(action_probs)), p=action_probs)
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
            
            # TD Update
            alpha = 0.01
            v_now = weights[action] + normalised_x*weights[4] + normalised_y*weights[5] + \
                                      int(up_wall)*weights[6] + int(down_wall)*weights[7] + int(right_wall)*weights[8] + int(left_wall)*weights[9] 
            
            normalised_next_x = int(next_state[0])/int(width)
            normalised_next_y = int(next_state[1])/int(height)
            up_wall_next, down_wall_next, right_wall_next, left_wall_next = helper.check_surrounding_walls(int(next_state[0]), int(next_state[1]), wall_list)
            
            v_next = weights[action] + normalised_next_x*weights[4] + normalised_next_y*weights[5] + \
                                int(up_wall_next)*weights[6] + int(down_wall_next)*weights[7] + int(right_wall_next)*weights[8] + int(left_wall_next)*weights[9]
            
            # v_next = weights[action] + int(next_state[0])*weights[4] + int(next_state[1])*weights[5] + \
            #                     int(up_wall_next)*weights[6] + int(down_wall_next)*weights[7] + int(right_wall_next)*weights[8] + int(left_wall_next)*weights[9] 
            
            weights_delta = alpha*(reward + discount_factor*v_next - v_now)*weights
            
            print("weights_delta", weights_delta)
            weights = weights - weights_delta
            # weights = weights + weights_delta
            print("weights", weights)
            if math.isnan(weights[0]):
                import ipdb; ipdb.set_trace()
            previous_state = next_state
            
            if done:
                break

        # run_experiment(env,state_int, Q, stats_test, i_episode, width, TIME_RANGE)

    return Q, stats

# env = gym.make('vgdl_experiment1-v0')
env = gym.make('vgdl_aaa_small-v0')

Q, stats = q_learning(env, 100)

# import ipdb; ipdb.set_trace()
# plotting.plot_episode_stats_test(stats, stats_test)

plotting.plot_episode_stats_simple(stats)
