
import gym
import gym_vgdl
import numpy as np

from gym import wrappers

import time


# env = gym.make('vgdl_aliens-v0')
# env = gym.make('vgdl_boulderdash-v0')
# env = gym.make('vgdl_portals-v0')
# env = gym.make('vgdl_survivezombies-v0')
env = gym.make('vgdl_aaa-v0')

done = False
count = 0
observation = env.reset()
sum_score = 0

s = env.reset()
print('init_state: {} example action: {}'.format(s, env.action_space.sample()))

for i in range(2000):
# while not done:
    env.render()
    time.sleep(0.1)

    count+=1
    action = env.action_space.sample()

    state, reward, done, _ = env.step(action)
    print("State: ", state)
    sum_score += reward

    # print("Action " + str(action) + " played at t=", str(i+1) + ", reward=" \
    #         + str(reward) + ", new score=", sum_score)

    if done:
        print("Game terminates at t=" + str(i+1))
        break
