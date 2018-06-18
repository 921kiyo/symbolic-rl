import gym
import gym_vgdl
import numpy as np

import matplotlib.pyplot as plt
from IPython import display
from controller import keyboard_activate
from gym import wrappers

import time

def convert_state(x, y):
    return (x-1)*19+y

env = gym.make('vgdl_aaa1-v0')

done = False
count = 0
sum_score = 0

s = env.reset()
print("init state int ", convert_state(s[0], s[1]))
print('init_state: {} example action: {}'.format(s, env.action_space.sample()))
print("Space size is ", env.observation_space)

for t in range(100):
# while not done:
    # env.render()
    # time.sleep(0.01)
    count+=1
    action = env.action_space.sample()

    next_state, reward, done, _ = env.step(action)
    print("After action ", action, ", the state is now at x=", next_state[0], ", y=", next_state[1], " reward: ", reward, " at time ", t)
    state_int = convert_state(next_state[0], next_state[1])
    sum_score += reward

    if done:
        break
