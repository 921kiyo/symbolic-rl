import numpy as np
import pandas as pd
from collections import namedtuple
from matplotlib import pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import pickle
import config as cf

EpisodeStats = namedtuple("EpisodeStats",["episode_lengths", "episode_rewards", "episode_runtime"])
TimeStats = namedtuple("TimeStats",["ILASP_runtime"])

def store_stats(stats, base_dir, filename):
    filename = "/" + filename + ".pkl"
    picklepath = base_dir + filename
    output = open(picklepath, "wb")
    pickle.dump(stats, output)
    output.close()

def load_stats(base_dir, filename):
    filename = "/" + filename + ".pkl"
    picklepath = base_dir + filename
    stats = pickle.load(open(picklepath, "rb"))
    return stats

# Average cumulative rewards and runtime of each episode
def average_score(base_dir, pkl_dir, prefix, num_episodes, num_pkl):
    stats = EpisodeStats(
        episode_lengths=np.zeros(num_episodes),
        episode_rewards=np.zeros(num_episodes),
        episode_runtime=np.zeros(num_episodes))

    for pkl in range(num_pkl):
        filename = prefix + str(pkl)
        stats2 = load_stats(pkl_dir, filename)
         
        for i_episode in range(num_episodes):
            stats.episode_rewards[i_episode] += (stats2.episode_rewards[i_episode]/num_pkl)
            stats.episode_runtime[i_episode] += (stats2.episode_runtime[i_episode]/num_pkl)
    store_stats(stats, pkl_dir, prefix+"_average")


def average_ILASP(base_dir, pkl_dir, prefix, num_episodes, time_range, num_pkl):
    stats_out = TimeStats(
        ILASP_runtime=np.zeros((num_episodes,cf.TIME_RANGE)))

    for pkl in range(num_pkl):
        filename = prefix + str(pkl)
        stats_in = load_stats(pkl_dir, filename)

        # Get the total number of ILASP calls
        total = 0
        runtime_total = 0
        for episode in range(num_episodes):
            for t in range(time_range):
                if stats_in.ILASP_runtime[episode][t] > 0:
                    total += 1
                    runtime_total += stats_in.ILASP_runtime[episode][t]
        # import ipdb; ipdb.set_trace()

        # Incremental normalisation
        count = 0
        for episode in range(num_episodes):
                for t in range(time_range):
                    if(stats_in.ILASP_runtime[episode][t] > 0):
                        count += 1
                    stats_out.ILASP_runtime[episode][t] = count/total
    store_stats(stats_out, pkl_dir, prefix+"_average")
    return runtime_total/total

def plot_episode_stats(stats, smoothing_window=1, noshow=False):
    # Plot the episode length over time
    fig1 = plt.figure(figsize=(10,5))
    plt.plot(stats.episode_lengths)
    plt.xlabel("Episode")
    plt.ylabel("Episode Length")
    plt.title("Episode Length over Time")
    if noshow:
        plt.close(fig1)
    else:
        plt.show(fig1)

    # Plot the episode reward over time
    fig2 = plt.figure(figsize=(10,5))
    rewards_smoothed = pd.Series(stats.episode_rewards).rolling(smoothing_window, min_periods=smoothing_window).mean()
    plt.plot(rewards_smoothed)
    plt.xlabel("Episode")
    plt.ylabel("Episode Reward")
    plt.title("Episode Reward over Time")
    if noshow:
        plt.close(fig2)
    else:
        plt.show(fig2)

    # Plot time steps and episode number
    fig3 = plt.figure(figsize=(10,5))
    plt.plot(np.cumsum(stats.episode_lengths), np.arange(len(stats.episode_lengths)))
    plt.xlabel("Time Steps")
    plt.ylabel("Episode")
    plt.title("Episode per time step")
    if noshow:
        plt.close(fig3)
    else:
        plt.show(fig3)

    return fig1, fig2, fig3

def plot_ILASP_progress(stats,smoothing_window=1, noshow=False):

    fig2 = plt.figure(figsize=(10,5))
    ilasp_smoothed = pd.Series(stats.episode_ILASP).rolling(smoothing_window, min_periods=smoothing_window).mean()
    plt.plot(ilasp_smoothed, color="k")
    plt.xlabel("Time steps at episode 0")
    plt.ylabel("The number of hypothesis improvement")
    plt.title("Normalised learning conversion of hypothesis improvement")
    if noshow:
        plt.close(fig2)
    else:
        plt.show(fig2)

def plot_episode_stats_simple(stats, smoothing_window=1, noshow=False, color="green"):

    # Plot the episode reward over time
    fig2 = plt.figure(figsize=(10,5))
    rewards_smoothed = pd.Series(stats.episode_rewards).rolling(smoothing_window, min_periods=smoothing_window).mean()
    plt.plot(rewards_smoothed, color=color)
    plt.xlabel("Episode")
    plt.ylabel("Episode Reward")
    plt.title("Episode Reward over Time")
    if noshow:
        plt.close(fig2)
    else:
        plt.show(fig2)

    return fig2

def plot_episode_stats_runtime(stats, smoothing_window=1, noshow=False, color="green"):
    # Plot the episode reward over time
    fig2 = plt.figure(figsize=(10,5))
    runtime_smoothed = pd.Series(stats.episode_runtime).rolling(smoothing_window, min_periods=smoothing_window).mean()

    plot_ilasp, = plt.plot(runtime_smoothed, "b", label="ILP(RL)")

    plt.plot(runtime_smoothed, color=color)
    plt.xlabel("Episode")
    plt.ylabel("Episode Runtime (second)")
    plt.title("Episode Runtime over Time")
    # plt.legend(handles=[plot_ilasp, plot_test], loc=4)
    plt.legend(handles=[plot_ilasp], loc=1)
    if noshow:
        plt.close(fig2)
    else:
        plt.show(fig2)

    return fig2

def plot_episode_stats_test(stats, stats_test, smoothing_window=1, noshow=False, color="green"):

    # Plot the episode reward over time
    fig2 = plt.figure(figsize=(10,5))
    rewards_smoothed = pd.Series(stats.episode_rewards).rolling(smoothing_window, min_periods=smoothing_window).mean()
    rewards_smoothed_test = pd.Series(stats_test.episode_rewards).rolling(smoothing_window, min_periods=smoothing_window).mean()
    # plt.plot(rewards_smoothed, "r--", , rewards_smoothed_test, "b")
    plot_training, = plt.plot(rewards_smoothed_test, "b", label="test")
    plot_test, = plt.plot(rewards_smoothed, "r--", label="training")
    # plt.plot(rewards_smoothed, color=color)
    plt.xlabel("Episode")
    plt.ylabel("Episode Reward")
    plt.title("Episode Reward over Time")
    plt.legend(handles=[plot_training, plot_test], loc=4)
    if noshow:
        plt.close(fig2)
    else:
        plt.show(fig2)

    return fig2

def plot_episode_stats_two(stats, stats2, smoothing_window=1, noshow=False):

    # Plot the episode reward over time
    fig2 = plt.figure(figsize=(10,5))
    rewards_smoothed = pd.Series(stats.episode_rewards).rolling(smoothing_window, min_periods=smoothing_window).mean()
    rewards_smoothed2 = pd.Series(stats2.episode_rewards).rolling(smoothing_window, min_periods=smoothing_window).mean()

    plot_training, = plt.plot(rewards_smoothed, "k", label="TL")
    plot_test, = plt.plot(rewards_smoothed2, c="gray", ls="--", label="No TL")

    # plot_training, = plt.plot(rewards_smoothed, "k", label="ILP(RL)")
    # plot_test, = plt.plot(rewards_smoothed2, c="gray", ls="--", label="Q learning")
    plt.xlabel("Episode")
    plt.ylabel("Episode Reward")
    plt.title("Episode Reward over Time")
    # plt.title("Episode Reward over Time")
    plt.legend(handles=[plot_training, plot_test], loc=4)
    if noshow:
        plt.close(fig2)
    else:
        plt.show(fig2)

    return fig2

def plot_episode_runtime_two(stats, stats2, smoothing_window=1, noshow=False):
    # Plot the episode reward over time
    fig2 = plt.figure(figsize=(10,5))
    runtime_smoothed = pd.Series(stats.episode_runtime).rolling(smoothing_window, min_periods=smoothing_window).mean()
    runtime_smoothed2 = pd.Series(stats2.episode_runtime).rolling(smoothing_window, min_periods=smoothing_window).mean()

    plot, = plt.plot(runtime_smoothed, "k", label="No TL, no goal")
    plot2, = plt.plot(runtime_smoothed2, c="gray", ls="--", label="No TL, goal")

    # plot_training, = plt.plot(rewards_smoothed, "k", label="ILP(RL)")
    # plot_test, = plt.plot(rewards_smoothed2, c="gray", ls="--", label="Q learning")
    plt.xlabel("Episode")
    plt.ylabel("Episode Reward")
    plt.title("Episode Reward over Time")
    # plt.title("Episode Reward over Time")
    plt.legend(handles=[plot, plot2], loc=4)
    if noshow:
        plt.close(fig2)
    else:
        plt.show(fig2)

    return fig2


def plot_episode_stats_multiple(stats, stats2, stats3, smoothing_window=1, noshow=False):

    # Plot the episode reward over time
    fig2 = plt.figure(figsize=(10,5))
    rewards_smoothed = pd.Series(stats.episode_rewards).rolling(smoothing_window, min_periods=smoothing_window).mean()
    rewards_smoothed2 = pd.Series(stats2.episode_rewards).rolling(smoothing_window, min_periods=smoothing_window).mean()
    rewards_smoothed3 = pd.Series(stats3.episode_rewards).rolling(smoothing_window, min_periods=smoothing_window).mean()

    plot, = plt.plot(rewards_smoothed, "k", label="No TL, no goal")
    plot2, = plt.plot(rewards_smoothed2, c="gray", ls="--", label="No TL, goal")
    plot3, = plt.plot(rewards_smoothed3, c="red", ls="--", label="TL")
    plt.xlabel("Episode")
    plt.ylabel("Episode Reward")
    plt.title("Episode Reward over Time")
    # plt.title("Episode Reward over Time")
    plt.legend(handles=[plot, plot2, plot3], loc=4)
    if noshow:
        plt.close(fig2)
    else:
        plt.show(fig2)

    return fig2