import gym
import gym_vgdl
import numpy as np

import matplotlib.pyplot as plt
from IPython import display
from controller import keyboard_activate
from gym import wrappers

import time

# ASP conversion
import py2asp



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

previous_state = s
for t in range(100):
# while not done:
    # env.render()
    # time.sleep(0.01)
    count+=1
    action = env.action_space.sample()
    print("---------------------------------")
    print(py2asp.agent_before(previous_state[0], previous_state[1], t))

    next_state, reward, done, _ = env.step(action)
    # print("After action ", action, ", the state is now at x=", next_state[0], ", y=", next_state[1], " reward: ", reward, " at time ", t)

    print(py2asp.agent_after(next_state[0], next_state[1], t))
    print(py2asp.reward(reward, t))
    print(py2asp.action(action, t))
    state_int = convert_state(next_state[0], next_state[1])
    sum_score += reward

    previous_state = next_state

    if done:
        break
