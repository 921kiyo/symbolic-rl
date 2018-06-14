import gym
import gym_gvgai

import matplotlib.pyplot as plt
from IPython import display
from controller import keyboard_activate


def show_state(env, step=0, name="", info=""):
    plt.figure(3)
    plt.clf()
    plt.imshow(env.render(mode="rgb_array"))
    plt.title("%s | Steap %d %s" % (name, step, info))
    plt.axis("off")

    display.clear_output(wait=True)
    display.display(plt.gcf())

# for env in gym.envs.registry.all():
#     if env.id.startswith('gvgai'):
#         print(env.id)

# env = gym.make("gvgai-aliens-lvl0-v0")
env = gym.make("gvgai-aaa-lvl0-v0")

env.reset()
sum_score = 0

for i in range(2000):
    show_state(env, i, "Aliens", str(sum_score))
    # action_id = env.action_space.sample()
    action_id = keyboard_activate()
    state, reward, isOver, debug = env.step(action_id)
    sum_score += reward

    print("Action " + str(action_id) + " played at t=", str(i+1) + ", reward=" \
            + str(reward) + ", new score=", sum_score)
    if isOver:
        print("Game terminates at t=" + str(i+1))
        break
