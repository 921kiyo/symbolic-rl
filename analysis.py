from lib import plotting
import gym
import gym_vgdl
import os.path

base_dir = os.path.dirname(os.path.abspath(__file__))

def experiment_learning(exp_no):
    pkl_dir = os.path.join(base_dir, "result_pkl/experiment{}".format(str(exp_no)))
    pkl_dir_q = os.path.join(base_dir, "result_pkl/experiment{}_q".format(str(exp_no)))

    # pkl_dir = os.path.join(base_dir, "result_pkl/experiment1_delete")
    # pkl_dir_q = os.path.join(base_dir, "result_pkl/experiment1_q_del")

    # make average score for training
    plotting.average_score(base_dir, pkl_dir, "exp{}_v".format(str(exp_no)), 100, 30)
    plotting.average_score(base_dir, pkl_dir_q, "exp{}_v".format(str(exp_no)), 100, 30)

    # make average score for test
    plotting.average_score(base_dir, pkl_dir, "exp{}_test_v".format(str(exp_no)), 100, 30)
    plotting.average_score(base_dir, pkl_dir_q, "exp{}_test_v".format(str(exp_no)), 100, 30)

    runtime, total  = plotting.average_ILASP(base_dir, pkl_dir, "exp{}_ilasp_v".format(str(exp_no)), 100, 250, 30)
    # Load the pkl files
    stats = plotting.load_stats(pkl_dir, "exp{}_v_average".format(str(exp_no)))
    stats_q = plotting.load_stats(pkl_dir_q, "exp{}_v_average".format(str(exp_no)))

    stats_test = plotting.load_stats(pkl_dir, "exp{}_test_v_average".format(str(exp_no)))
    stats_q_test = plotting.load_stats(pkl_dir_q, "exp{}_test_v_average".format(str(exp_no)))

    stats_ilasp = plotting.load_stats(pkl_dir, "exp{}_ilasp_v_average".format(str(exp_no)))
    
    plotting.plot_episode_stats_learning(stats, stats_q)
    plotting.plot_episode_stats_learning(stats_test, stats_q_test)
    # plotting.plot_episode_stats_runtime(stats, stats_q)
    plotting.plot_ILASP_progress(stats_ilasp)
    plotting.plot_episode_stats_runtime(stats, stats_q)

# def ilasp_runtime(exp_no):
#     pkl_dir = os.path.join(base_dir, "result_pkl/experiment{}".format(str(exp_no)))
#     pkl_dir_q = os.path.join(base_dir, "result_pkl/experiment{}_q".format(str(exp_no)))
#     # pkl_dir = os.path.join(base_dir, "result_pkl/experiment1_delete")
#     # pkl_dir_q = os.path.join(base_dir, "result_pkl/experiment1_q_del")
#     # make average score for training
#     plotting.average_ILASP(base_dir, pkl_dir, "exp{}_v".format(str(exp_no)), 100, 30)
#     plotting.average_ILASP(base_dir, pkl_dir_q, "exp{}_v".format(str(exp_no)), 100, 30)
#     plotting.plot_ILASP_progress

def experiment_transfer():
    pkl_dir = os.path.join(base_dir, "result_pkl/experiment3_after_noTL_noGoal")
    pkl_dir2 = os.path.join(base_dir, "result_pkl/experiment3_after_noTL_goal")
    pkl_dir3 = os.path.join(base_dir, "result_pkl/experiment3_after_TL")
    pkl_dir_q = os.path.join(base_dir, "result_pkl/experiment3_q")
    # make average score
    plotting.average_score(base_dir, pkl_dir, "exp3_test_v", 100, 30)
    plotting.average_score(base_dir, pkl_dir2, "exp4_test_v", 100, 30)
    # plotting.average_score(base_dir, pkl_dir3, "exp3_v", 100, 30)
    plotting.average_score(base_dir, pkl_dir_q, "exp3_v", 100, 30)
    # Load the pkl files
    stats = plotting.load_stats(pkl_dir, "exp3_v_average")
    stats2 = plotting.load_stats(pkl_dir2, "exp4_v_average")
    stats3 = plotting.load_stats(pkl_dir3, "exp4_after_TL_v_average")
    stats_q = plotting.load_stats(pkl_dir_q, "exp3_v_average")

    # import ipdb; ipdb.set_trace()
    plotting.plot_episode_stats_transfer(stats, stats2, stats3, stats_q)

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
    plotting.plot_episode_stats_transfer(stats, stats2, stats3)

# experiment_learning(2)
experiment_transfer()

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