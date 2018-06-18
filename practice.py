import gym
import gym_vgdl
import numpy as np

import matplotlib.pyplot as plt
from IPython import display
from controller import keyboard_activate
from gym import wrappers

import time

def convert_state(x, y):
    return (y-1)*19+x;

env = gym.make('vgdl_aaa-v0')

done = False
count = 0
sum_score = 0

s = env.reset()
print("init state int ", convert_state(s[0], s[1]))
print('init_state: {} example action: {}'.format(s, env.action_space.sample()))
print("Space size is ", np.zeros(env.action_space.n))
# for i in range(2000):
while not done:
    # show_state(env, i, "Aliens", str(sum_score))
    env.render()
    # time.sleep(0.01)
    count+=1
    # action = env.action_space.sample()
    action = env.action_space.sample()
    # action = keyboard_activate()
    # action = eval(input(''))

    next_state, reward, done, _ = env.step(action)
    # print("next_state ", next_state)
    state_int = convert_state(next_state[0], next_state[1])
    # print("state_int ", state_int)
    sum_score += reward

    # print("Action " + str(action) + " played at t=", str(i+1) + ", reward=" \
    #         + str(reward) + ", new score=", sum_score)

    if done:
        break
