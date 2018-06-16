from collections import OrderedDict
import gym
from gym import spaces
from .vgdl import core
import pygame
import numpy as np
from .list_space import list_space


class VGDLEnv(gym.Env):
    metadata = {
        'render.modes': ['human', 'rgb_array'],
        'video.frames_per_second': 25
    }

    def __init__(self,
                 game_file = None,
                 level_file = None,
                 obs_type='image',
                 **kwargs):


        # Variables
        self._obs_type = obs_type
        self.viewer = None
        self.game_args = kwargs
        
        # Load game description and level description
        if game_file is not None:
            with open (game_file, "r") as myfile:
                game_desc = myfile.read()
            with open (level_file, "r") as myfile:
                level_desc = myfile.read()
            self.loadGame(game_desc, level_desc)
        
         
    def loadGame(self, game_desc, level_desc, **kwargs):
    
        self.game_desc = game_desc
        self.level_desc = level_desc
        self.game_args.update(kwargs)
                
        # Need to build a sample level to get the available actions and screensize....
        self.game = core.VGDLParser().parseGame(self.game_desc, **self.game_args)
        self.game.buildLevel(self.level_desc)
        
        self.score_last = self.game.score

        # Set action space and observation space
        self._action_set = OrderedDict(self.game.getPossibleActions())
        self.action_space = spaces.Discrete(len(self._action_set))
        
        self.screen_width, self.screen_height = self.game.screensize
        
        if self._obs_type == 'image':
            self.observation_space = spaces.Box(low=0, high=255,
                    shape=(self.screen_height, self.screen_width, 3) )
        elif self._obs_type == 'objects':
            # An objects observation consists of a list of observations,
            # one for each sprite (including walls).
            # An observation is [y, x, orient_y, orient_x, *class_one_hot, *resources]
            self.observation_space = list_space( spaces.Box(low=-100, high=100,
                    shape=(self.game.lenObservation(),) ) )
        elif self._obs_type == 'features':
            self.observation_space = spaces.Box(low=0, high=100,
                    shape=(self.game.lenFeatures(),) )

        # Keep a Surface for drawing on (screen)
        # and a bigger one that is actually rendered (display)
        self.zoom = 25 // self.game.block_size
        self.display_size = np.array(self.game.screensize) * self.zoom
        self.display = pygame.display.set_mode(self.display_size, 0, 32)
        self.screen = pygame.Surface(self.game.screensize)
        self.game.screen = self.screen
        self.game.screen.fill((0, 0, 0))

        # Not sure what the background is needed for, it's not drawn
        #TODO: get rid of this
        self.game.background = pygame.Surface(self.game.screensize)
        
        
    @property
    def _n_actions(self):
        return len(self._action_set)

    @property
    def _action_keys(self):
        return list(self._action_set.values())

    def get_action_meanings(self):
        # In the spirit of the Atari environment, describe actions with strings
        return list(self._action_set.keys())

    def _draw_screen(self):
        self.game._drawAll()

    def _update_display(self):
        # Scale drawn surface onto rendered surface
        pygame.transform.scale(self.screen, self.display_size, self.display)
        pygame.display.update()

    def _get_image(self):
        self._draw_screen()
        return np.flipud(np.rot90(pygame.surfarray.array3d(
            self.screen).astype(np.uint8)))

    def _get_obs(self):
        if self._obs_type == 'image':
            return self._get_image()
        elif self._obs_type == 'objects':
            return self.game.getObservation()
        elif self._obs_type == 'features':
            return self.game.getFeatures()


    def step(self, a):
        self.game.tick(self._action_keys[a], True)
        state = self._get_obs()
        reward = self.game.score - self.score_last
        self.score_last = self.game.score
        terminal = self.game.ended
        return state, reward, terminal, {}

    def reset(self):
        self.game.reset()
        self.game.buildLevel(self.level_desc)
        self.score_last = self.game.score
        state = self._get_obs()
        return state

    def render(self, mode='human', close=False):
        if close:
            pygame.display.quit()
        if mode == 'rgb_array':
            img = self._get_image()
            return img
        elif mode == 'human':
            # For now, pygame is always used for drawing
            self._update_display()
            return True

    def close(self):
        pygame.display.quit()



class Padlist(gym.ObservationWrapper):
    def __init__(self, env=None, max_objs=200):
        self.max_objects = max_objs
        super(Padlist, self).__init__(env)
        env_shape = self.observation_space.shape
        env_shape[0] = self.max_objects
        self.observation_space = gym.spaces.Box(low=-100, high=100, shape=env_shape)

    def _observation(self, obs):
        return Padlist.process(obs, self.max_objects)

    @staticmethod
    def process(input_list, to_len):
        max_len = to_len
        item_len = len(input_list)
        if item_len < max_len:
          padded = np.pad(
              np.array(input_list,dtype=np.float32),
              ((0,max_len-item_len),(0,0)),
              mode='constant')
          return padded
        else:
          return np.array(input_list, dtype=np.float32)[:max_len]


