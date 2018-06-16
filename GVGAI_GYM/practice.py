import gym
import gym_gvgai
import numpy as np

import matplotlib.pyplot as plt
from IPython import display
from controller import keyboard_activate
from gym import wrappers


# def show_state(env, step=0, name="", info=""):
#     plt.figure(3)
#     plt.clf()
#     plt.imshow(env.render(mode="rgb_array"))
#     plt.title("%s | Steap %d %s" % (name, step, info))
#     plt.axis("off")
#
#     display.clear_output(wait=True)
#     display.display(plt.gcf())
#
# for env in gym.envs.registry.all():
#     if env.id.startswith('gvgai'):
#         print(env.id)

env = gym.make("gvgai-aliens-lvl0-v0")
# env = gym.make("gvgai-aaa-lvl0-v0")
# env = gym.make("gvgai-aaa-lvl0-v0")

done = False
count = 0
observation = env.reset()
sum_score = 0

s = env.reset()
print('init_state: {} example action: {}'.format(s, env.action_space.sample()))

# for i in range(2000):
while not done:
    # show_state(env, i, "Aliens", str(sum_score))
    env.render()

    count+=1
    # action = env.action_space.sample()
    action = env.action_space.sample()
    # action = keyboard_activate()
    # action = eval(input(''))

    observation, reward, done, _ = env.step(action)
    sum_score += reward

    # print("Action " + str(action) + " played at t=", str(i+1) + ", reward=" \
    #         + str(reward) + ", new score=", sum_score)

    if done:
        print("Game terminates at t=" + str(i+1))
        break
