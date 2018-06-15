Quick and dirty port of py-vgdl (https://github.com/schaul/py-vgdl) to work as an OpenAI Gym (https://github.com/openai/gym) environment.

Install using pip:

```
git clone https://github.com/EndingCredits/gym_vgdl.git
cd gym_vgdl/
pip install -e .
```

Then remember to `import gym_vgdl` and you can use the games as any other env using e.g. `env = gym.make('vgdlaliens-v0')`. New games can be added by grabbing the VGDL game and level descriptions and adding them to `gym_vgdl/vgdl/games`, and modifying `__init__.py`.

