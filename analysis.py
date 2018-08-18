from lib import plotting
import gym
import gym_vgdl
import os.path

base_dir = os.path.dirname(os.path.abspath(__file__))

# import ipdb; ipdb.set_trace()   
# env = gym.make('vgdl_aaa_L_shape-v0')
# env = gym.make('vgdl_aaa_maze-v0')
# env = gym.make('vgdl_experiment3.5-v0')
# Q, stats = q_learning(env, 50)

# plotting.store_stats(stats, base_dir, "test")
# stats2 = plotting.load_stats(base_dir, "test")

# # plotting.plot_episode_stats_simple(stats=stats, noshow=True, color="green")
# stats2 = k_learning(env, 50, epsilon=0.3, record_prefix="experiment2", is_link=True)
# plotting.plot_episode_stats_simple(stats2, color="blue")

# # plotting.plot_episode_stats_multiple(stats, stats2)

# pkl_dir = os.path.join(base_dir, "experiment1_q")
pkl_dir = os.path.join(base_dir, "experiment1")

plotting.average_score(base_dir, pkl_dir, "exp1_v", 100, 30)

stats = plotting.load_stats(pkl_dir, "exp1_v_average")
plotting.plot_episode_stats_simple(stats, smoothing_window=1)