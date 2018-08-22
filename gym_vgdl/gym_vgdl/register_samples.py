from gym.envs.registration import register
from gym_vgdl.vgdl_env import VGDLEnv
import os

# Location of sample games
DATA_DIR = os.path.join( os.path.dirname(__file__), 'vgdl', 'sample_games')

sample_games = [
    'test',
    'aaa_field',
    'aaa_H_shape',
    'aaa_teleport',
    'aaa_medium',
    'aaa_small',
    'experiment1',
    'experiment2',
    'experiment3_before',
    'experiment3_after',
    'experiment4_before',
    'experiment4_after',
    'aliens',
    'boulderdash',
    'chase',
    'frogs',
    'missilecommand',
    'portals',
    'survivezombies',
    'zelda' ]

# A list of relevant classes for each sample game
classes = {
    'test':      ['avatar',  'goal', 'portalentry', 'portalexit', 'random',
                       'straight', 'wall' ],
    'aaa_field':      ['avatar',  'goal', 'portalentry', 'portalexit', 'random',
                       'straight', 'wall' ],
    'aaa_H_shape':    ['avatar',  'goal', 'portalentry', 'portalexit', 'random',
                       'straight', 'wall' ],
    'aaa_teleport':   ['avatar',  'goal', 'portalentry', 'portalexit', 'random',
                       'straight', 'wall' ],
    'aaa_medium':       ['avatar',  'goal', 'portalentry', 'portalexit', 'random',
                       'straight', 'wall' ],
    'aaa_small':      ['avatar',  'goal', 'portalentry', 'portalexit', 'random',
                       'straight', 'wall' ],
    'experiment1':    ['avatar',  'goal', 'portalentry', 'portalexit', 'random',
                       'straight', 'wall' ],
    'experiment2':    ['avatar',  'goal', 'portalentry', 'portalexit', 'random',
                       'straight', 'wall' ],
    'experiment3_before':    ['avatar',  'goal', 'portalentry', 'portalexit', 'random',
                       'straight', 'wall' ],
    'experiment3_after':  ['avatar',  'goal', 'portalentry', 'portalexit', 'random',
                       'straight', 'wall' ],
    'experiment4_before':    ['avatar',  'goal', 'portalentry', 'portalexit', 'random',
                       'straight', 'wall' ],
    'experiment4_after':    ['avatar',  'goal', 'portalentry', 'portalexit', 'random',
                       'straight', 'wall' ],
    'aliens':         ['avatar', 'alien', 'base', 'bomb', 'sam'],
    'boulderdash':    ['avatar', 'boulder', 'butterfly', 'crab', 'diamond',
                       'exitdoor', 'wall'],
    'chase':          ['avatar', 'angry', 'carcass', 'scared', 'wall'],
    'frogs':          ['avatar', 'goal', 'log', 'truck', 'wall'],
    'missilecommand': ['avatar', 'city', 'explosion', 'incoming'],
    'portals':        ['avatar',  'goal', 'portalentry', 'portalexit', 'random',
                       'straight', 'wall' ],
    'survivezombies': ['avatar', 'bee', 'flower', 'hell', 'honey', 'zombie'],
    'zelda':          ['avatar', 'enemy', 'goal', 'key', 'wall']
}

# A list of relevant resources for each sample game
resources = {
    'test':      [],
    'aaa_field':      [],
    'aaa_H_shape':    [],
    'aaa_teleport':   [],
    'aaa_medium':     [],
    'aaa_small':      [],
    'experiment1':    [],
    'experiment2':    [],
    'experiment3_before':    [],
    'experiment3_after':  [],
    'experiment4_before':   [],
    'experiment4_after':    [],
    'aliens':         [],
    'boulderdash':    ['diamond'],
    'chase':          [],
    'frogs':          [],
    'missilecommand': [],
    'portals':        [],
    'survivezombies': ['honey'],
    'zelda':          []
}

suffixes = {
    'image':    "",
    'objects':  "_objects",
    'features': "_features",
}

# Register the sample games
def register_sample_games():
    for game in sample_games:
        for obs_type, suffix in suffixes.items():
            register(
                id='vgdl_{}{}-v0'.format(game, suffix),
                entry_point='gym_vgdl:VGDLEnv',
                kwargs={
                    'game_file': os.path.join( DATA_DIR, game + '.txt'),
                    'level_file': os.path.join( DATA_DIR, game + '_lvl0.txt'),
                    'obs_type': obs_type,
                    'notable_sprites': classes[game],
                    'notable_resources': resources[game],
                    # Use 24 (size of sprites) to render the full sprites
                    'block_size': 24 if obs_type == 'image' else 10
                },
                timestep_limit=1000,
                nondeterministic=True,
            )
