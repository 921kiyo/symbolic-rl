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

# class TilingsValueFunction:
#     # @numOfTilings: # of tilings
#     # @tileWidth: each tiling has several tiles, this parameter specifies the width of each tile
#     # @tilingOffset: specifies how tilings are put together
#     def __init__(self, numOfTilings, tileWidth, tilingOffset, n_states):
#         self.numOfTilings = numOfTilings
#         self.tileWidth = tileWidth
#         self.tilingOffset = tilingOffset

#         # To make sure that each sate is covered by same number of tiles,
#         # we need one more tile for each tiling
#         self.tilingSize = n_states // tileWidth + 1

#         # weight for each tile
#         self.params = np.zeros((self.numOfTilings, self.tilingSize))

#         # For performance, only track the starting position for each tiling
#         # As we have one more tile for each tiling, the starting position will be negative
#         self.tilings = np.arange(-tileWidth + 1, 0, tilingOffset)

#     # get the value of @state
#     def value(self, state):
#         stateValue = 0.0
#         # go through all the tilings
#         for tilingIndex in range(0, len(self.tilings)):
#             # find the active tile in current tiling
#             tileIndex = (state - self.tilings[tilingIndex]) // self.tileWidth
#             stateValue += self.params[tilingIndex, tileIndex]
#         return stateValue

#     # update parameters
#     # @delta: step size * (target - old estimation)
#     # @state: state of current sample
#     def update(self, delta, state):

#         # each state is covered by same number of tilings
#         # so the delta should be divided equally into each tiling (tile)
#         delta /= self.numOfTilings

#         # go through all the tilings
#         for tilingIndex in range(0, len(self.tilings)):
#             # find the active tile in current tiling
#             tileIndex = (state - self.tilings[tilingIndex]) // self.tileWidth
#             self.params[tilingIndex, tileIndex] += delta

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


def compute_tile_features(height, width, x,y):
    feature_vectors = np.zeros((height,width), dtype=float)
    feature_vectors[y][x] = 1
    return feature_vectors

def compute_features(height, width, x, y):    
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

def compute_state_action_feature(height, width,x,y, action):
    '''
     Output:
        x(s, a)
    '''
    
    # Make only the relevant action column 1, and the rest be 0
    offsetter = np.tile(np.zeros((height, width)), 4)
    start = width*action
    end = width*action + (width)
    offsetter[:,start:end] = 1
    # state features are replicated for each action
    state_feature = compute_features(height, width,x,y) # x(s)
    state_action_features = np.tile(state_feature, 4) # x(s,a) = |x(s)|*|A| 
    return state_action_features*offsetter

def compute_value(height, width, x,y,action, weights):
    '''
     Output:
        v(s, a)
    '''
    state_action_features = compute_state_action_feature(height, width, x,y,action) # x(s,a)
    return state_action_features * weights # v(s,a) = w*x(s,a)

def q_learning(env, num_episodes, discount_factor=1, alpha=0.5, epsilon=0.2, epsilon_decay=1.0):
    height = env.unwrapped.game.height
    width = env.unwrapped.game.width

    # wall_list = induction.get_all_walls(env)

    stats = plotting.EpisodeStats(
        episode_lengths=np.zeros(num_episodes),
        episode_rewards=np.zeros(num_episodes),
        episode_ILASP=np.zeros(num_episodes))
    
    # Weights for 4 actions * height * width
    # weights = np.random.rand(width,height*4)
    
    weights = np.random.rand(height, width*4)
    # weights = np.tile(np.zeros((height, width), dtype=float), 4)
    policy = make_epsilon_greedy_policy(weights, epsilon, ACTION_SPACE)
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

            # action = env.action_space.sample()

            # 0: UP
            # 1: DOWN
            # 2: LEFT
            # 3: RIGHT

            next_state, reward, done, _ = env.step(action)

            # No epsilon, follow the greedy policy
            actions_next, _ = policy(height, width, int(next_state[0]),int(next_state[1]), i_episode)
            action_next = np.argmax(actions_next)
            print("action_next is ", action_next)
            if done:
                reward = 100
            else:
                reward = reward - 1
            
            # Update stats
            stats.episode_rewards[i_episode] += reward
            stats.episode_lengths[i_episode] = t

            # get x(s,a)
            state_action_features = compute_state_action_feature(height, width, int(previous_state[0]),int(previous_state[1]),action)
            v_now = compute_value(height, width, int(previous_state[0]),int(previous_state[1]),action, weights)
            v_next = compute_value(height, width, int(next_state[0]),int(next_state[1]),action_next, weights)

            weights_delta = alpha*(reward + discount_factor*v_next - v_now)*state_action_features
            weights += weights_delta
            # for i in range(-1,2):
            #     for j in range(-1,2):
            #         temp = np.zeros(4)
            #         for a in range(0,4):
            #             temp_x = int(previous_state[0])+i
            #             temp_y = int(previous_state[1])+j
            #             if temp_x < width or temp_y < height:
            #                 temp[a] = weights[temp_x, temp_y*(a+1)]
            #                 temp[a] = temp[a] - weights_delta[a]
            #                 weights[(int(previous_state[0])+i), (int(previous_state[1])+j)*(a+1)] = temp[a]

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

# env = gym.make('vgdl_experiment1-v0')
env = gym.make('vgdl_aaa_small-v0')

stats = q_learning(env, 100, alpha=0.1)

# import ipdb; ipdb.set_trace()
# plotting.plot_episode_stats_test(stats, stats_test)

plotting.plot_episode_stats_simple(stats)
