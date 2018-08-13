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

class TilingsValueFunction:
    # @numOfTilings: # of tilings
    # @tileWidth: each tiling has several tiles, this parameter specifies the width of each tile
    # @tilingOffset: specifies how tilings are put together
    def __init__(self, numOfTilings, tileWidth, tilingOffset, n_states):
        self.numOfTilings = numOfTilings
        self.tileWidth = tileWidth
        self.tilingOffset = tilingOffset

        # To make sure that each sate is covered by same number of tiles,
        # we need one more tile for each tiling
        self.tilingSize = n_states // tileWidth + 1

        # weight for each tile
        self.params = np.zeros((self.numOfTilings, self.tilingSize))

        # For performance, only track the starting position for each tiling
        # As we have one more tile for each tiling, the starting position will be negative
        self.tilings = np.arange(-tileWidth + 1, 0, tilingOffset)

    # get the value of @state
    def value(self, state):
        stateValue = 0.0
        # go through all the tilings
        for tilingIndex in range(0, len(self.tilings)):
            # find the active tile in current tiling
            tileIndex = (state - self.tilings[tilingIndex]) // self.tileWidth
            stateValue += self.params[tilingIndex, tileIndex]
        return stateValue

    # update parameters
    # @delta: step size * (target - old estimation)
    # @state: state of current sample
    def update(self, delta, state):

        # each state is covered by same number of tilings
        # so the delta should be divided equally into each tiling (tile)
        delta /= self.numOfTilings

        # go through all the tilings
        for tilingIndex in range(0, len(self.tilings)):
            # find the active tile in current tiling
            tileIndex = (state - self.tilings[tilingIndex]) // self.tileWidth
            self.params[tilingIndex, tileIndex] += delta

def make_epsilon_greedy_policy(tiles, epsilon, nA):
    def policy_fn(x,y, episode):
        # new_epsilon = epsilon*(1/(episode+1))
        new_epsilon = epsilon
        A = np.ones(nA, dtype=float)* new_epsilon/nA
        
        actions = np.ones(4, dtype=float)
        for i in range(0,4):
            actions[i] = tiles[x,y*(i+1)]

        best_action = np.argmax(actions)
        print("VALUE ",actions)
        print("best_action ", best_action)
        A[best_action] += (1.0 - new_epsilon)
        return actions, A
    return policy_fn

def q_learning(env, num_episodes, discount_factor=1, alpha=0.5, epsilon=0.1, epsilon_decay=1.0):
    """
    Args:
        alpha: Tile Coding
    """
    height = env.unwrapped.game.height
    width = env.unwrapped.game.width

    # numOfTilings = 1
    # tileWidth = 2
    # tilingOffset = 2
    # n_states = height * width

    # valueFunction = TilingsValueFunction(numOfTilings, tileWidth, tilingOffset, n_states)    
    
    # wall_list = induction.get_all_walls(env)
    stats = plotting.EpisodeStats(
        episode_lengths=np.zeros(num_episodes),
        episode_rewards=np.zeros(num_episodes))
    
    # 4 actions
    tiles = np.random.rand(height,width*4)

    policy = make_epsilon_greedy_policy(tiles, epsilon, ACTION_SPACE)
    for i_episode in range(num_episodes):
        print("------------------------------")
                
        # Reset the env and pick the first action
        previous_state = env.reset()
        # previous_state_int = helper.convert_state(previous_state[1], previous_state[0], width)

        action_probs_next = np.ones(4, dtype=float)
        for t in range(TIME_RANGE):
            env.render()
            time.sleep(0.01)
            # Take a step
            actions_at_state, action_probs = policy(int(previous_state[0]),int(previous_state[1]), i_episode)
            # print("action_probs ", action_probs)
            action = np.random.choice(np.arange(len(action_probs)), p=action_probs)
            print("action ", action)
            # import ipdb; ipdb.set_trace()

            # valueFunction.value(previous_state_int)

            # for i in range(0,4):
            #     action_probs[i] = tiles[int(previous_state[0]),int(previous_state[1])*(i+1)]
            # print("action_probs ",action_probs)
            # action = np.argmax(action_probs)
            
            # action = np.random.choice(np.arange(len(action_probs)), p=action_probs)
            # action = env.action_space.sample()

            # 0: UP
            # 1: DOWN
            # 2: LEFT
            # 3: RIGHT

            next_state, reward, done, _ = env.step(action)

            # valueFunction.value(previous_state_int)
            for i in range(0,4):
                action_probs_next[i] = tiles[int(next_state[0]),int(next_state[1])*(i+1)]
            # print("action_probs_next ",action_probs_next)
            action_next = np.argmax(action_probs_next)
            
            if done:
                print("GOOOOOOOOOLLLLLLL")
                reward = 100
            else:
                reward = reward - 1
            
            # Update stats
            stats.episode_rewards[i_episode] += reward
            stats.episode_lengths[i_episode] = t
            
            alpha = alpha/(t+1)
            v_now = tiles[int(previous_state[0]),int(previous_state[1])*(action+1)]
            v_next = tiles[int(next_state[0]),int(next_state[1])*(action_next+1)]
            # print("v_now ", v_now)
            # print("v_nex ", v_next)
            if math.isnan(v_now):
                import ipdb; ipdb.set_trace()
            weights_delta = alpha*(reward + discount_factor*v_next - v_now)*actions_at_state
            actions_at_state =  actions_at_state - weights_delta
            for i in range(0,4):
                tiles[int(previous_state[0]),int(previous_state[1])*(i+1)] = actions_at_state[i] 

            previous_state = next_state
            # previous_state_int = next_state_int
            if done:
                break

        # run_experiment(env,state_int, Q, stats_test, i_episode, width, TIME_RANGE)

    return tiles, stats

# env = gym.make('vgdl_experiment1-v0')
env = gym.make('vgdl_aaa_small-v0')

Q, stats = q_learning(env, 100, alpha=0.01)

# import ipdb; ipdb.set_trace()
# plotting.plot_episode_stats_test(stats, stats_test)

plotting.plot_episode_stats_simple(stats)
