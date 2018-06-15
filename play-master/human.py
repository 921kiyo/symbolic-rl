import sys
import time
import itertools
import numpy as np
import logging
logger = logging.getLogger(__name__)

import gym
from gym_recording.wrappers import TraceRecordingWrapper


class HumanController:
    def __init__(self, env_name, trace_path):
        self.env_name = env_name
        self.env = gym.make(env_name)
        self.env = TraceRecordingWrapper(self.env, trace_path)
        self.fps = 25
        self.cum_reward = 0


    def play(self):
        self.env.reset()

        for step_i in itertools.count():
            # Only does something for VGDL because Atari's Pyglet is event-based
            self.controls.capture_key_presses()

            obs, reward, done, info = self.env.step(self.controls.current_action)
            if reward:
                logger.debug("reward %0.3f" % reward)

            self.cum_reward += reward
            window_open = self.env.render()

            if not window_open:
                logger.debug('Window closed')
                return False

            if done:
                logger.debug('===> Done!')
                break

            if self.controls.restart:
                logger.info('Requested restart')
                self.controls.restart = False
                break

            while self.controls.pause:
                self.controls.capture_key_presses()
                self.env.render()
                time.sleep(1. / self.fps)

            time.sleep(1. / self.fps)


class HumanAtariController(HumanController):
    def __init__(self, env_name, *args):
        super().__init__(env_name, *args)

        from controls import AtariControls
        self.controls = AtariControls(self.env.unwrapped.get_action_meanings())

        # Render once to initialize the viewer
        self.env.render(mode='human')
        self.window = self.env.unwrapped.viewer.window
        self.window.on_key_press = self.controls.on_key_press
        self.window.on_key_release = self.controls.on_key_release



class HumanVGDLController(HumanController):
    def __init__(self, env_name, *args):
        super().__init__(env_name, *args)

        from controls import VGDLControls
        self.controls = VGDLControls(self.env.unwrapped.get_action_meanings())
        self.env.render(mode='human')


def determine_controller(env_name):
    if env_name.startswith('vgdl'):
        import gym_vgdl
        return HumanVGDLController
    else:
        return HumanAtariController
