from lib import plotting
import gym
import gym_vgdl
import os.path

base_dir = os.path.dirname(os.path.abspath(__file__))

def experiment1():
    pkl_dir = os.path.join(base_dir, "result_pkl/experiment1")
    # pkl_dir2 = os.path.join(base_dir, "result_pkl/experiment2_q")

    # make average score
    plotting.average_score(base_dir, pkl_dir, "exp1_v", 100, 30)
    # plotting.average_score(base_dir, pkl_dir2, "exp4_test_v", 100, 30)
    runtime = plotting.average_ILASP(base_dir, pkl_dir, "exp1_ilasp_v", 100, 250, 30)
    # Load the pkl files
    stats = plotting.load_stats(pkl_dir, "exp1_v_average")
    stats2 = plotting.load_stats(pkl_dir, "exp1_ilasp_v_average")
    
    # import ipdb; ipdb.set_trace()

    # stats2 = plotting.load_stats(pkl_dir2, "exp4_test_v_average")
    # plotting.plot_episode_stats_two(stats, stats2)
    # import ipdb; ipdb.set_trace()
    # plotting.plot_episode_stats_simple(stats)
    plotting.plot_episode_stats_runtime(stats)

def experiment2():
    pkl_dir = os.path.join(base_dir, "result_pkl/experiment2")
    # pkl_dir2 = os.path.join(base_dir, "result_pkl/experiment2_q")
    # make average score
    plotting.average_score(base_dir, pkl_dir, "exp2_v", 100, 30)
    # plotting.average_score(base_dir, pkl_dir2, "exp4_test_v", 100, 30)
    # Load the pkl files
    stats = plotting.load_stats(pkl_dir, "exp2_v_average")
    # stats2 = plotting.load_stats(pkl_dir2, "exp4_test_v_average")
    # plotting.plot_episode_stats_two(stats, stats2)
    # import ipdb; ipdb.set_trace()
    # plotting.plot_episode_stats_simple(stats)
    plotting.plot_episode_stats_runtime(stats)

def experiment3():
    pkl_dir = os.path.join(base_dir, "result_pkl/experiment3_after_noTL_noGoal")
    pkl_dir2 = os.path.join(base_dir, "result_pkl/experiment3_after_noTL_goal")
    pkl_dir3 = os.path.join(base_dir, "result_pkl/experiment3_after_TL")
    # make average score
    plotting.average_score(base_dir, pkl_dir, "exp3_test_v", 100, 30)
    plotting.average_score(base_dir, pkl_dir2, "exp4_test_v", 100, 30)
    # plotting.average_score(base_dir, pkl_dir3, "exp3_v", 100, 30)
    # Load the pkl files
    stats = plotting.load_stats(pkl_dir, "exp3_test_v_average")
    stats2 = plotting.load_stats(pkl_dir2, "exp4_test_v_average")
    stats3 = plotting.load_stats(pkl_dir3, "exp4_test_after_TL_v_average")
    # import ipdb; ipdb.set_trace()
    plotting.plot_episode_stats_multiple(stats, stats2, stats3)

def experiment3_test():
    pkl_dir = os.path.join(base_dir, "result_pkl/experiment3_after_noTL_noGoal")
    pkl_dir2 = os.path.join(base_dir, "result_pkl/experiment3_after_noTL_goal")
    pkl_dir3 = os.path.join(base_dir, "result_pkl/experiment3_after_TL")
    # make average score
    plotting.average_score(base_dir, pkl_dir, "exp3_test_v", 100, 30)
    plotting.average_score(base_dir, pkl_dir2, "exp4_test_v", 100, 30)
    # plotting.average_score(base_dir, pkl_dir3, "exp3_v", 100, 30)
    # Load the pkl files
    stats = plotting.load_stats(pkl_dir, "exp3_test_v_average")
    stats2 = plotting.load_stats(pkl_dir2, "exp4_test_v_average")
    stats3 = plotting.load_stats(pkl_dir3, "exp4_test_after_TL_v_average")
    # import ipdb; ipdb.set_trace()
    plotting.plot_episode_stats_multiple(stats, stats2, stats3)

experiment1()

# plotting.average_score(base_dir, pkl_dir, "exp4_after_TL_v", 100, 30)
# plotting.average_score(base_dir, pkl_dir, "exp1_v", 100, 30)
# plotting.average_score(base_dir, pkl_dir, "exp3_test_v", 100, 30)
# plotting.average_score(base_dir, pkl_dir_q, "exp3_test_v", 100, 30)

# plotting.average_score(base_dir, pkl_dir, "exp5_test_TL_v", 100, 30)
# plotting.average_score(base_dir, pkl_dir_q, "exp5_test_noTL_v", 100, 30)

# plotting.average_ILASP(base_dir, pkl_dir, "exp2_v", 2, 250, 30)

# stats = plotting.load_stats(pkl_dir, "exp1_v_average")
# stats_q = plotting.load_stats(pkl_dir_q, "temp_test_v_average")
# stats = plotting.load_stats(pkl_dir, "exp1_test_v_average")


# plotting.plot_ILASP_progress(stats)

# stats = plotting.load_stats(pkl_dir, "exp2_v_average")
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
# plotting.plot_ILASP_progress(stats)