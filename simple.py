import matplotlib
import gym
import gym_vgdl
import numpy as np
import time

import os
import subprocess

from lib.helper import gen_log_dir

TIME_RANGE = 400
# env = gym.make('vgdl_zelda_features-v0')
# env = gym.make('vgdl_experiment1-v0')
env = gym.make('vgdl_experiment5-v0')
# env = gym.make('vgdl_portals-v0')
# env = gym.make('vgdl_aaa_teleport-v0')
# env = gym.make('vgdl_aaa_small-v0')

for i_episode in range(TIME_RANGE):

    # Reset the env and pick the first action
    state = env.reset()

    for t in range(TIME_RANGE):
        env.render()
        time.sleep(0.5)
        # Take a step
        # action = env.action_space.sample()
        next_state, reward, done, _ = env.step(4)

        if done:
            break

