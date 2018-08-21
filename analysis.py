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

# pkl_dir = os.path.join(base_dir, "experiment1")
# pkl_dir_q = os.path.join(base_dir, "experiment1_q")
pkl_dir = os.path.join(base_dir, "exp1_ILASP")
pkl_dir_q = os.path.join(base_dir, "experiment5_noTL")

# plotting.average_score(base_dir, pkl_dir, "exp4_after_TL_v", 100, 30)
# plotting.average_score(base_dir, pkl_dir_q, "temp_test_v", 100, 30)
# plotting.average_score(base_dir, pkl_dir, "exp3_test_v", 100, 30)
# plotting.average_score(base_dir, pkl_dir_q, "exp3_test_v", 100, 30)

# plotting.average_score(base_dir, pkl_dir, "exp5_test_TL_v", 100, 30)
# plotting.average_score(base_dir, pkl_dir_q, "exp5_test_noTL_v", 100, 30)

# plotting.average_ILASP(base_dir, pkl_dir, "exp1_v", 2, 250, 30)

# stats = plotting.load_stats(pkl_dir, "exp1_test_v_average")
# stats_q = plotting.load_stats(pkl_dir_q, "temp_test_v_average")
# stats = plotting.load_stats(pkl_dir, "exp1_test_v_average")


# plotting.plot_ILASP_progress(stats)

stats = plotting.load_stats(pkl_dir, "exp1_v_average")
# import ipdb; ipdb.set_trace()
# stats_q = plotting.load_stats(pkl_dir_q, "exp5_test_noTL_v_average")
# stats_q = plotting.load_stats(pkl_dir_q, "exp3_test_v_average")

# for i in range(12):
#     print("-----------------------")
#     print("No.", i)
#     stats = plotting.load_stats(pkl_dir, "exp3_test_v{}".format(str(i)))
#     print(stats)

# plotting.plot_episode_stats_simple(stats, smoothing_window=1)
# plotting.plot_episode_stats_multiple(stats, stats_q)
plotting.plot_ILASP_progress(stats)