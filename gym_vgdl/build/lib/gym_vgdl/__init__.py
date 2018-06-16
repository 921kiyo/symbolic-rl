from gym.envs.registration import register
from gym_vgdl.vgdl_env import VGDLEnv
from .register_samples import register_sample_games
import os

# Register samples
register_sample_games()

register(
    id='vgdl_generic-v0',
    entry_point='gym_vgdl:VGDLEnv',
    kwargs={
        'block_size': 10
    },
    nondeterministic=True,
)

