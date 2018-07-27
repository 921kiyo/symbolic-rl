from main import k_learning

from q_learning import q_learning

from lib import plotting
import gym
import gym_vgdl
import os.path

base_dir = os.path.dirname(os.path.abspath(__file__))


# env = gym.make('vgdl_aaa_L_shape-v0')
# env = gym.make('vgdl_aaa_maze-v0')
env = gym.make('vgdl_experiment3.5-v0')
Q, stats = q_learning(env, 50)

plotting.store_stats(stats, base_dir, "test")
stats2 = plotting.load_stats(base_dir, "test")

# plotting.plot_episode_stats_simple(stats=stats, noshow=True, color="green")
stats2 = k_learning(env, 50, epsilon=0.3, record_prefix="experiment2", is_link=True)
plotting.plot_episode_stats_simple(stats2, color="blue")

# plotting.plot_episode_stats_multiple(stats, stats2)
