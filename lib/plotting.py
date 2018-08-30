import numpy as np
import pandas as pd
from collections import namedtuple
from matplotlib import pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import pickle

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

    store_stats(stats, pkl_dir, prefix+"_average")

def average_ILASP(base_dir, pkl_dir, prefix, num_episodes, time_range, num_pkl):
    stats = EpisodeStats(
        episode_lengths=np.zeros(num_episodes),
        episode_rewards=np.zeros(num_episodes),
        episode_runtime=np.zeros(num_episodes))
    
    for pkl in range(num_pkl):
        filename = prefix + str(pkl)
        stats2 = load_stats(pkl_dir, filename)
        # Get the total number of ILASP calls
        total = 0
        for s in stats2.episode_ILASP:
            total += s
        total += 3
        # Incremental normalisation
        count = 0
        for index, elm in enumerate(stats2.episode_ILASP):
            if(elm > 0):
                # if elm > 1:
                #     import ipdb; ipdb.set_trace()
                count += 1
            stats2.episode_ILASP[index] = count/total            

        for t in range(time_range):
            stats.episode_ILASP[t] += (stats2.episode_ILASP[t]/num_pkl)

    # for pkl in range(num_pkl):
    #     filename = prefix + str(pkl)
    #     stats2 = load_stats(pkl_dir, filename) 
    #     for i_episode in range(num_episodes):
    #         stats.episode_rewards[i_episode] += (stats2.episode_rewards[i_episode]/num_pkl)
    #         stats.episode_ILASP[i_episode] += (stats2.episode_ILASP[i_episode]/num_pkl)

    store_stats(stats, pkl_dir, prefix+"_average")

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
    plt.ylabel("Episode Reward (Smoothed)")
    plt.title("Episode Reward over Time (Smoothed over window size {})".format(smoothing_window))
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
    plt.ylabel("Episode Reward (Smoothed)")
    plt.title("Episode Reward over Time (Smoothed over window size {})".format(smoothing_window))
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
    plt.ylabel("Episode Reward (Smoothed)")
    plt.title("Episode Reward over Time (Smoothed over window size {})".format(smoothing_window))
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

    # plot_training, = plt.plot(rewards_smoothed, "k", label="My algorithm")
    # plot_test, = plt.plot(rewards_smoothed2, c="gray", ls="--", label="Q learning")
    plt.xlabel("Episode")
    plt.ylabel("Episode Reward")
    plt.title("Episode Reward over Time")
    # plt.title("Episode Reward over Time (Smoothed over window size {})".format(smoothing_window))
    plt.legend(handles=[plot_training, plot_test], loc=4)
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
    # plt.title("Episode Reward over Time (Smoothed over window size {})".format(smoothing_window))
    plt.legend(handles=[plot, plot2, plot3], loc=4)
    if noshow:
        plt.close(fig2)
    else:
        plt.show(fig2)

    return fig2