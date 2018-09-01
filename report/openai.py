  import gym # import OpenAI gym package
  import gym_vgdl # used to connect VGDL and OpenAI gym

  env = gym.make('VDGL_ENVNAME') # initialise an instance of a game
  env.reset()
  action = 0 # integer between 0 and 3
  # 0: Up
  # 1: Down
  # 2: Left
  # 3: Right
  next_state, reward, done, _ = env.step(action) # take an action and get an observation
  env.render() # update the frame of the environment (for visualisation purpose)
