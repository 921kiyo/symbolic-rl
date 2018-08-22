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

from random import randint

from collections import defaultdict
from tiles import IHT,tiles,tileswrap,hashcoords,TilingsValueFunction

from lib import plotting, py_asp, helper, induction, abduction

TIME_RANGE = 250

base_dir = os.path.dirname(os.path.abspath(__file__))
ACTION_SPACE = 4 # env.action_space.n

def make_epsilon_greedy_policy(weights, epsilon, nA):
    def policy_fn(height, width, x,y, episode):
        new_epsilon = epsilon*(1/(episode+1))
        # new_epsilon = epsilon
        A = np.ones(nA, dtype=float)* new_epsilon/nA
        
        actions = np.ones(4, dtype=float)
        for i in range(0,4):
           v = compute_value(height, width, x, y, i, weights)
           actions[i] = v[y,x+(width*i)]

        best_action = np.argmax(actions)
        A[best_action] += (1.0 - new_epsilon)

        return actions, A
        
    return policy_fn

# def compute_xy_features(height, width, x,y):
#     feature_vectors = np.zeros((width,height), dtype=float)
#     feature_vectors[x][y] = 1
#     return feature_vectors

# def compute_wall_features(x,y):
#     return 1

# def compute_A(height, width,x,y,action):
#     '''
#      Output:
#         |A|
#     '''
#     actions = np.zeros((height, width*4), dtype=float)
#     start = width*(action+1)
#     end = width*(action+1)
#     actions[:,start:end] = 1
#     return actions

# def compute_tile_features(height, width, x,y):
#     feature_vectors = np.zeros((height,width), dtype=float)
#     feature_vectors[y][x] = 1
#     return feature_vectors

# def compute_features(height, width, x, y):    
#     '''
#      Output:
#         x(s)
#     '''
#     tile_features = compute_tile_features(height, width, x,y) # |height*width|

#     # walls_features = compute_wall_features(x,y)
#     # xy_features = compute_xy_features(height, width, x,y) # only |2|, x and y
#     # features = np.stack([tile_features])
#     return tile_features
#     # return features

# def compute_state_action_feature(height, width,x,y, action):
#     '''
#      Output:
#         x(s, a)
#     '''
    
#     # Make only the relevant action column 1, and the rest be 0
#     offsetter = np.tile(np.zeros((height, width)), 4)
#     start = width*action
#     end = width*action + (width)
#     offsetter[:,start:end] = 1
#     # state features are replicated for each action
#     state_feature = compute_features(height, width,x,y) # x(s)
#     state_action_features = np.tile(state_feature, 4) # x(s,a) = |x(s)|*|A| 
#     return state_action_features*offsetter

def compute_value(height, width, x,y,action, weights):
    '''
     Output:
        v(s, a)
    '''
    state_action_features = compute_state_action_feature(height, width, x,y,action) # x(s,a)
    return state_action_features * weights # v(s,a) = w*x(s,a)

class TileCoding:
    def __init__(self, env, num_of_tilings,tile_width,tile_offset):
        self.env = env
        self.height = env.unwrapped.game.height
        self.width = env.unwrapped.game.width
        self.num_of_tilings = num_of_tilings
        self.tile_width = tile_width
        self.tile_offset = tile_offset
        self.n_states = self.height*self.width
        self.vf_up = TilingsValueFunction(num_of_tilings, tile_width, tile_offset, self.n_states)
        self.vf_down = TilingsValueFunction(num_of_tilings, tile_width, tile_offset, self.n_states)
        self.vf_right = TilingsValueFunction(num_of_tilings, tile_width, tile_offset, self.n_states)
        self.vf_left = TilingsValueFunction(num_of_tilings, tile_width, tile_offset, self.n_states)
        # import ipdb; ipdb.set_trace()

    def compute_features(self, height, width, x, y):    
        '''
        Output:
            x(s)
        '''
        tile_features = compute_tile_features(height, width, x,y) # |height*width|

        # walls_features = compute_wall_features(x,y)
        # xy_features = compute_xy_features(height, width, x,y) # only |2|, x and y
        # features = np.stack([tile_features])
        return tile_features
        # return features

    def compute_state_action_feature(self, state, action):
        '''
        Output:
            x(s, a)
        '''
        state_action_features = np.zeros(4)
        state_action_features[action] = 1
        return state_action_features
        # Make only the relevant action column 1, and the rest be 0
        # offsetter = np.tile(np.zeros((self.height, self.width)), 4)
        # start = self.width*action
        # end = self.width*action + (self.width)
        # offsetter[:,start:end] = 1
        # # state features are replicated for each action
        # state_feature = compute_features(self.height, self.width,x,y) # x(s)
        # state_action_features = np.tile(state_feature, 4) # x(s,a) = |x(s)|*|A| 
        # return state_action_features*offsetter

    def compute_value(self, state,action):
        '''
        Output:
            v(s, a)
        '''
        state_action_features = [0,0,0,0]
        state_action_features[0] = self.vf_up.value(state)
        state_action_features[1] = self.vf_down.value(state)
        state_action_features[2] = self.vf_right.value(state)
        state_action_features[3] = self.vf_left.value(state)
        return state_action_features[action]
        # state_action_features = self.compute_state_action_feature(x,y,action) # x(s,a)
        # return state_action_features # v(s,a) = w*x(s,a)

    def q_learning(self, num_episodes, discount_factor=1, alpha=0.5, epsilon=0.2, epsilon_decay=1.0):

        stats = plotting.EpisodeStats(
            episode_lengths=np.zeros(num_episodes),
            episode_rewards=np.zeros(num_episodes),
            episode_ILASP=np.zeros(num_episodes))
        
        # policy = make_epsilon_greedy_policy(weights, epsilon, ACTION_SPACE)
        for i_episode in range(num_episodes):
            print("------------------------------")
            # Reset the env and pick the first action
            previous_state = env.reset()
            previous_state_int = int(helper.convert_state(previous_state[1], previous_state[0], self.width))

            for t in range(TIME_RANGE):
                print("------------------------------")
                env.render()
                time.sleep(0.01)
                action = randint(0, 3)
                # action = np.random.choice(np.arange(len(action_probs)), p=action_probs)
                print("x:{}, y:{}".format(previous_state[0],previous_state[1]))
                # print("action_probs is ", action_probs, " and action {} is chosen".format(action))
                next_state, reward, done, _ = env.step(action)
                next_state_int = int(helper.convert_state(next_state[1], next_state[0], self.width))
                print("next_state_int ", next_state_int)
                # No epsilon, follow the greedy policy
                # actions_next, _ = policy(height, width, int(next_state[0]),int(next_state[1]), i_episode)
                # action_next = np.argmax(actions_next)
                action_next = 1
                # print("action_next is ", action_next)
                if done:
                    reward = 10
                else:
                    reward = reward - 1

                # Update stats
                stats.episode_rewards[i_episode] += reward
                stats.episode_lengths[i_episode] = t

                # get x(s,a)
                state_action_features = self.compute_state_action_feature(previous_state_int,action)

                v_now = self.compute_value(previous_state_int,action)
                v_next = self.compute_value(next_state_int,action_next)
                weights_delta = alpha*(reward + discount_factor*v_next - v_now)*state_action_features
                
                self.vf_up.update(weights_delta[0], previous_state_int)
                self.vf_down.update(weights_delta[1], previous_state_int)
                self.vf_right.update(weights_delta[2], previous_state_int)
                self.vf_left.update(weights_delta[3], previous_state_int)
                # import ipdb; ipdb.set_trace()

                previous_state = next_state
                previous_state_int = next_state_int
                if done:
                    print("GOAL")
                    break

        # run_experiment(env,state_int, Q, stats_test, i_episode, width, TIME_RANGE)
        return stats

# def q_learning(env, num_episodes, discount_factor=1, alpha=0.5, epsilon=0.2, epsilon_decay=1.0):
#     height = env.unwrapped.game.height
#     width = env.unwrapped.game.width
#     # wall_list = induction.get_all_walls(env)

#     stats = plotting.EpisodeStats(
#         episode_lengths=np.zeros(num_episodes),
#         episode_rewards=np.zeros(num_episodes),
#         episode_ILASP=np.zeros(num_episodes))
    
#     weights = np.random.rand(height, width*4)
#     # weights = np.tile(np.zeros((height, width), dtype=float), 4)
#     policy = make_epsilon_greedy_policy(weights, epsilon, ACTION_SPACE)
#     for i_episode in range(num_episodes):
#         print("------------------------------")

#         # Reset the env and pick the first action
#         previous_state = env.reset()

#         for t in range(TIME_RANGE):
#             print("------------------------------")
#             env.render()
#             # time.sleep(0.1)
#             # Take a step
#             _, action_probs = policy(height, width, int(previous_state[0]),int(previous_state[1]), i_episode)
#             action = np.random.choice(np.arange(len(action_probs)), p=action_probs)
#             print("x:{}, y:{}".format(previous_state[0],previous_state[1]))
#             print("action_probs is ", action_probs, " and action {} is chosen".format(action))

#             # action = env.action_space.sample()

#             # 0: UP
#             # 1: DOWN
#             # 2: LEFT
#             # 3: RIGHT

#             next_state, reward, done, _ = env.step(action)

#             # No epsilon, follow the greedy policy
#             actions_next, _ = policy(height, width, int(next_state[0]),int(next_state[1]), i_episode)
#             action_next = np.argmax(actions_next)
#             print("action_next is ", action_next)
#             if done:
#                 reward = 100
#             else:
#                 reward = reward - 1
            
#             # Update stats
#             stats.episode_rewards[i_episode] += reward
#             stats.episode_lengths[i_episode] = t

#             # get x(s,a)
#             state_action_features = compute_state_action_feature(height, width, int(previous_state[0]),int(previous_state[1]),action)

#             v_now = compute_value(height, width, int(previous_state[0]),int(previous_state[1]),action, weights)
#             v_next = compute_value(height, width, int(next_state[0]),int(next_state[1]),action_next, weights)

#             weights_delta = alpha*(reward + discount_factor*v_next - v_now)*state_action_features
#             weights += weights_delta

#             previous_state = next_state
#             if done:
#                 print("GOAL")
#                 break

#         # run_experiment(env,state_int, Q, stats_test, i_episode, width, TIME_RANGE)

#     return stats

# env = gym.make('vgdl_experiment3.5-v0')
# env = gym.make('vgdl_experiment1-v0')
# env = gym.make('vgdl_aaa_small-v0')
# env = gym.make('vgdl_experiment4_after-v0')

env = gym.make('vgdl_experiment1-v0')
# env = gym.make('vgdl_aaa_small-v0')
agent = TileCoding(env, 100, 4, 2)
stats = agent.q_learning(100)
# stats = q_learning(env, 300, alpha=0.03)

# import ipdb; ipdb.set_trace()
# plotting.plot_episode_stats_test(stats, stats_test)

plotting.plot_episode_stats_simple(stats)
