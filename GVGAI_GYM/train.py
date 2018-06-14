import gym
import gym_gvgai
import numpy as np
from gym import wrappers

# env = gym.make("gvgai-aliens-lvl0-v0")
env = gym.make("gvgai-aaa-lvl0-v0")


best_length = 0
episode_length = []

best_weights = np.zeros(4)

for i in range(100):
    new_weights = np.random.uniform(-1.0, 1.0, 4)

    length = []

    for j in range(100):

        observation = env.reset()
        # sum_score = 0
        #
        # s = env.reset()
        done = False
        count = 0
        # print('init_state: {} example action: {}'.format(s, env.action_space.sample()))

        # for i in range(2000):
        while not done:
            # show_state(env, i, "Aliens", str(sum_score))
            # env.render()

            count+=1
            # action = env.action_space.sample()
            action = env.action_space.sample()
            # action = keyboard_activate()
            # action = eval(input(''))

            observation, reward, done, _ = env.step(action)
            sum_score += reward

            print("Action " + str(action) + " played at t=", str(i+1) + ", reward=" \
                    + str(reward) + ", new score=", sum_score)
            if done:
                print("Game terminates at t=" + str(i+1))
                break
