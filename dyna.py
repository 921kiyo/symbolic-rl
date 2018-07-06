# Model contains state, action next state and reward tuples.

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
from lib import plotting

# ASP syntax conversion
import py2asp

FILENAME = "output.txt"
BACKGROUND = "background.lp"

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
    return (x-1)*6+y
    # return (x-1)*19+y

def send_state_transition(previous_state,next_state, action, wall_list):
    pos = py2asp.positive_example(next_state,previous_state, action, wall_list)
    pos += "\n"
    with open(FILENAME, "a") as myfile:
        myfile.write(pos)

def add_background(previous_state, wall_list):
    walls = py2asp.add_walls(previous_state, wall_list)
    walls += "\n"

    with open(BACKGROUND, "a") as myfile:
        myfile.write(walls)

def convert_action(action):
    if(action == 0):
        return "down"
    elif(action == 1):
        return "up"
    elif(action == 2):
        return "left"
    elif(action == 3):
        return "right"
    elif(action == 4):
        return "non"

def silentremove():
    dir = os.getcwd()
    filename =os.path.join(dir, FILENAME)
    try:
        os.remove(filename)
    except OSError:
        print("output.txt could not be found...")
        pass

def copy_las_base():
    with open("las_base.las") as f:
        with open(FILENAME, "w") as out:
            for line in f:
                out.write(line)

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

    # Remove output.txt
    silentremove()
    copy_las_base()

    # import ipdb; ipdb.set_trace()
    for i_episode in range(num_episodes):

        if(i_episode+1) % 100 == 0:
            print("\rEpisode {}/{}.".format(i_episode+1, num_episodes), end="")
            sys.stdout.flush()

        # Reset the env and pick the first action
        state = env.reset()
        state_int = convert_state(state[0], state[1])

        previous_state = state
        # for t in itertools.count():
        for t in range(20):
            env.render()
            time.sleep(0.2)

            # Take a step
            action_probs = policy(state_int, i_episode)

            action = np.random.choice(np.arange(len(action_probs)), p=action_probs)
            # action = env.action_space.sample()
            next_state, reward, done, _ = env.step(action)

            if done:
                reward = 100
                # Run ILASP to get H
                # hypothesis = subprocess.check_output(["ILASP", "--version=2i", FILENAME, "-ml=10"], universal_newlines=True)
                # print("HYPOTHESIS: ", hypothesis)
                # exit(1)
            else:
                reward = reward - 1

            next_state_int = convert_state(next_state[0], next_state[1])
            # print("-------------")
            # print("next_state[1] ", next_state[1])
            # print("next_state[0] ", next_state[0])
            action_string = convert_action(action)

            # Make ASP syntax of state transition
            send_state_transition(previous_state, next_state, action_string, wall_list)
            # Meanwhile, accumulate all background knowlege
            add_background(previous_state, wall_list)
            # import ipdb; ipdb.set_trace()
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
