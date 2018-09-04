  import gym # import OpenAI gym package
  import gym_vgdl # used to connect VGDL and OpenAI gym

  num_episodes = 100 # num_episodes is specified by users
  time_steps = 100 # time_steps is specified by users

  # initialise an instance of a VDGL game
  env = gym.make('VDGL_ENVNAME')

  for i_episode in range(num_episodes):
      env.reset()  # the agent starts from a starting point
      for t in range(time_steps):
          action = 0 # an integer between 0 and 3
                     # and is chosen by your RL algorithm.
                     # Action 0: Up, 1: Down, 2: Left, 3: Right

          # take an action and get an observation
          next_state, reward, done, _ = env.step(action)
          env.render() # update the frame of the environment

          # when done is True, the agent is at a terminal state
          # and the current episode is finished
          if done:
              break
