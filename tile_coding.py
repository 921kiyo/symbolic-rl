import gym
import gym_vgdl
import numpy as np
import math
import time

from random import randint

# Q-learning
import itertools
import sys
import os.path
import pickle

from collections import defaultdict

from lib import plotting, py_asp, helper, induction, abduction

TIME_RANGE = 250

base_dir = os.path.dirname(os.path.abspath(__file__))
ACTION_SPACE = 4 # env.action_space.n

def make_epsilon_greedy_policy(tiles, epsilon, nA):
    def policy_fn(height, width, x,y, episode):
        new_epsilon = epsilon*(1/(episode+1))
        # new_epsilon = epsilon
        A = np.ones(nA, dtype=float)* new_epsilon/nA
        
        actions = np.ones(4, dtype=float)
        for i in range(0,4):
           actions[i] = tiles.value(x, y, i)

        best_action = np.argmax(actions)
        A[best_action] += (1.0 - new_epsilon)

        return best_action, A
        
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

class TileCoding:
    def __init__(self, width, height, width_tile, height_tile, offset_x, offset_y, no_tiles):
        self.width = width
        self.height = height
        self.width_tile = width_tile
        self.height_tile = height_tile
        self.offset_x = offset_x
        self.offset_y = offset_y
        self.no_tiles = no_tiles
        self.size_x = int(np.ceil((self.width-self.offset_x)/self.width_tile))
        self.size_y = int(np.ceil((self.height-self.offset_y)/self.height_tile))
        self.weights = np.random.rand(self.size_y, self.size_x*4)
    
    def state_action_features(self,x,y,action):   
        return self.action_features(action)*self.compute_tile_features(x,y)

    def action_features(self, action):
        action_features = np.zeros((self.size_y,self.size_x*4))
        start = action*self.size_x
        end = (action+1)*self.size_x - 1
        action_features[:,start:end] = 1
        return action_features

    def compute_tile_features(self, x,y):
        # size_x * size_y is the number of tiles in tiling        
        tile_features = np.zeros((self.size_y,self.size_x*4))
        x_tile = int(x // self.width_tile)
        y_tile = int(y // self.height_tile)
        tile_features[y_tile,x_tile] = 1
        tile_features[y_tile,x_tile+self.size_x] = 1
        tile_features[y_tile,x_tile+(2*self.size_x)] = 1
        tile_features[y_tile,x_tile+(3*self.size_x)] = 1        
        return tile_features
    def value(self, x,y, action):
        state_action_features = self.state_action_features(x,y, action)
        one_weight = state_action_features*self.weights
        total = 0
        for i in range(len(one_weight)):
            for j in range(len(one_weight[i])):
                total += one_weight[i][j]
        return total
    def update(self, w_delta):
        self.weights += w_delta
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

# def compute_value(height, width, x,y,action, weights):
#     '''
#      Output:
#         v(s, a)
#     '''
#     state_action_features = compute_state_action_feature(height, width, x,y,action) # x(s,a)
#     return state_action_features * weights # v(s,a) = w*x(s,a)

def q_learning(env, num_episodes, discount_factor=1, alpha=0.5, epsilon=0.2, epsilon_decay=1.0):
    height = env.unwrapped.game.height
    width = env.unwrapped.game.width

    tiles = TileCoding(int(width), int(height), width_tile=2, height_tile=2, offset_x=0, offset_y=0, no_tiles=1)
    # wall_list = induction.get_all_walls(env)

    stats = plotting.EpisodeStats(
        episode_lengths=np.zeros(num_episodes),
        episode_rewards=np.zeros(num_episodes),
        episode_runtime=np.zeros(num_episodes))
    
    # Weights for 4 actions * height * width    
    # weights = np.random.rand(height, width*4)
    # weights = np.tile(np.zeros((height, width), dtype=float), 4)

    policy = make_epsilon_greedy_policy(tiles, epsilon, ACTION_SPACE)
    for i_episode in range(num_episodes):
        print("------------------------------")

        # Reset the env and pick the first action
        previous_state = env.reset()

        for t in range(TIME_RANGE):
            print("------------------------------")
            env.render()
            # time.sleep(0.1)
            # Take a step
            _, action_probs = policy(height, width, int(previous_state[0]),int(previous_state[1]), i_episode)
            action = np.random.choice(np.arange(len(action_probs)), p=action_probs)
            print("x:{}, y:{}".format(previous_state[0],previous_state[1]))
            print("action_probs is ", action_probs, " and action {} is chosen".format(action))

            # action = randint(0,3)

            # 0: UP
            # 1: DOWN
            # 2: LEFT
            # 3: RIGHT

            next_state, reward, done, _ = env.step(action)

            # No epsilon, follow the greedy policy
            best_action, _ = policy(height, width, int(next_state[0]),int(next_state[1]), i_episode)
            # action_next = randint(0,3)
            print("action_next is ", best_action)
            if done:
                reward = 100
            else:
                reward = reward - 1
            
            # Update stats
            stats.episode_rewards[i_episode] += reward
            stats.episode_lengths[i_episode] = t

            # get x(s,a)
            # state_action_features = compute_state_action_feature(height, width, int(previous_state[0]),int(previous_state[1]),action)
            state_action_features = tiles.state_action_features(int(previous_state[0]),int(previous_state[1]),action)

            v_now = tiles.value(int(previous_state[0]),int(previous_state[1]), action)
            v_next = tiles.value(int(next_state[0]),int(next_state[1]), best_action)

            # state_action_features = compute_state_action_feature(height, width, int(previous_state[0]),int(previous_state[1]),action)
            # v_now = compute_value(height, width, int(previous_state[0]),int(previous_state[1]),action, weights)
            # v_next = compute_value(height, width, int(next_state[0]),int(next_state[1]),action_next, weights)

            # state_action_features = compute_state_action_feature(height, width, int(previous_state[0]),int(previous_state[1]),action)
            # v_now = compute_value(height, width, int(previous_state[0]),int(previous_state[1]),action, weights)
            # v_next = compute_value(height, width, int(next_state[0]),int(next_state[1]),action_next, weights)
            
            weights_delta = alpha*(reward + discount_factor*v_next - v_now)*state_action_features
            tiles.update(weights_delta)

            previous_state = next_state
            if done:
                print("GOAL")
                break

        # run_experiment(env,state_int, Q, stats_test, i_episode, width, TIME_RANGE)

    return stats

# env = gym.make('vgdl_experiment3.5-v0')
# env = gym.make('vgdl_experiment1-v0')
# env = gym.make('vgdl_aaa_small-v0')
# env = gym.make('vgdl_experiment4_after-v0')

env = gym.make('vgdl_experiment1-v0')
# env = gym.make('vgdl_aaa_small-v0')

stats = q_learning(env, 100, alpha=0.03)

# import ipdb; ipdb.set_trace()
# plotting.plot_episode_stats_test(stats, stats_test)

plotting.plot_episode_stats_simple(stats)
