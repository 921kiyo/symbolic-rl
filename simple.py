import matplotlib
import gym
import gym_vgdl
import numpy as np
import time

import os
import subprocess

from lib.helper import _gen_log_dir

TIME_RANGE = 400
env = gym.make('vgdl_zelda_features-v0')
print(env.unwrapped.observer.get_observation())
print(list(env.unwrapped.observer.get_observation()))

for i_episode in range(TIME_RANGE):

    # Reset the env and pick the first action
    state = env.reset()

    for t in range(TIME_RANGE):
        env.render()
        time.sleep(0.1)
        # Take a step
        action = env.action_space.sample()
        next_state, reward, done, _ = env.step(action)

        if done:
            break

# print("ILASP running...")
# dir = os.path.dirname(os.path.abspath(__file__))
# # dir = os.path.join(dir, 'las_log/cache.las')
# # cache = "--cached-rel=" + dir
# print("dir ", dir)
# print(_gen_log_dir(dir, prefix="a"))

# # ILASP --version=2i output2.las -ml=10 --clingo5 --clingo "clingo5 --opt-strat=usc,stratify"

# filename = "output2.las"
# try:
#     # Hardcode
#     # hypothesis = "state_after(V0) :- adjacent(right, V0, V1), state_before(V1), action(right), not wall(V0).\nstate_after(V0) :- adjacent(left, V0, V1), state_before(V1), action(left), not wall(V0).\nstate_after(V0) :- adjacent(down, V0, V1), state_before(V1), action(down), not wall(V0).\nstate_after(V0) :- adjacent(up, V0, V1), state_before(V1), action(up), not wall(V0)."    
#     # Clingo 5
#     clingo5 = "clingo5 --opt-strat=usc,stratify"
#     hypothesis = subprocess.check_output(["ILASP", "--version=2i", filename, "-ml=10", "--clingo5", "--clingo", clingo5], universal_newlines=True)
    
#     # Normal 
#     # hypothesis = subprocess.check_output(["ILASP", "--version=2i", filename, "-ml=10", "-nc", ], universal_newlines=True)
    
#     # Cache
#     # hypothesis = subprocess.check_output(["ILASP", "--version=2i", filename, "-ml=10", "-nc", cache], universal_newlines=True)
# except subprocess.CalledProcessError as e:
#     print("Error...", e.output)
#     hypothesis = e.output

# print(hypothesis)
