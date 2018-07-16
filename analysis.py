from main import k_learning

from q_learning import q_learning

from lib import plotting
import gym
import gym_vgdl


# env = gym.make('vgdl_aaa_L_shape-v0')
# env = gym.make('vgdl_aaa_maze-v0')
env = gym.make('vgdl_aaa_small-v0')
Q, stats = q_learning(env, 100)
# plotting.plot_episode_stats_simple(stats=stats, noshow=True, color="green")

stats2 = k_learning(env, 100, epsilon=0.25)
# plotting.plot_episode_stats_simple(stats, color="blue")

plotting.plot_episode_stats_multiple(stats, stats2)
