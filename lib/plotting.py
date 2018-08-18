import numpy as np
import pandas as pd
from collections import namedtuple
from matplotlib import pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import pickle

EpisodeStats = namedtuple("EpisodeStats",["episode_lengths", "episode_rewards", "episode_ILASP"])
EpisodeStats_test = namedtuple("EpisodeStats_test",["episode_lengths_test", "episode_rewards_test"])

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
        episode_ILASP=np.zeros(num_episodes))
    
    for pkl in range(num_pkl):
        filename = prefix + str(pkl)
        stats2 = load_stats(pkl_dir, filename) 
        for i_episode in range(num_episodes):
            stats.episode_rewards[i_episode] += stats2.episode_rewards[i_episode]

    # Average: Divide the total by num of pkl
    for i_episode in range(num_episodes):
        stats.episode_rewards[i_episode] = stats.episode_rewards[i_episode]/num_pkl

    plot_episode_stats_simple(stats=stats, noshow=False, color="green")

def plot_episode_stats(stats, smoothing_window=10, noshow=False):
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

def plot_episode_stats_simple(stats, smoothing_window=10, noshow=False, color="green"):

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

def plot_episode_stats_test(stats, stats_test, smoothing_window=10, noshow=False, color="green"):

    # Plot the episode reward over time
    fig2 = plt.figure(figsize=(10,5))
    rewards_smoothed = pd.Series(stats.episode_rewards).rolling(smoothing_window, min_periods=smoothing_window).mean()
    rewards_smoothed_test = pd.Series(stats_test.episode_rewards_test).rolling(smoothing_window, min_periods=smoothing_window).mean()
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

def plot_episode_stats_multiple(stats, stats2, smoothing_window=10, noshow=False):

    # Plot the episode reward over time
    fig2 = plt.figure(figsize=(10,5))
    rewards_smoothed = pd.Series(stats.episode_rewards).rolling(smoothing_window, min_periods=smoothing_window).mean()
    rewards_smoothed2 = pd.Series(stats2.episode_rewards).rolling(smoothing_window, min_periods=smoothing_window).mean()

    plot_training, = plt.plot(rewards_smoothed, "r--",label="My algorithm")
    plot_test, = plt.plot(rewards_smoothed2, "b", label="Q learning")
    plt.xlabel("Episode")
    plt.ylabel("Episode Reward (Smoothed)")
    plt.title("Episode Reward over Time (Smoothed over window size {})".format(smoothing_window))
    plt.legend(handles=[plot_training, plot_test], loc=4)
    if noshow:
        plt.close(fig2)
    else:
        plt.show(fig2)

    return fig2

def plot_episode_stats_multiple_test(stats, stats2, smoothing_window=10, noshow=False):

    # Plot the episode reward over time
    fig2 = plt.figure(figsize=(10,5))
    rewards_smoothed_mine = pd.Series(stats.episode_rewards_test).rolling(smoothing_window, min_periods=smoothing_window).mean()
    rewards_smoothed_q = pd.Series(stats2.episode_rewards_test).rolling(smoothing_window, min_periods=smoothing_window).mean()

    plot_training, = plt.plot(rewards_smoothed_mine, "r--", label="My algorithm")
    plot_test, =plt.plot(rewards_smoothed_q, "b", label="Q learning")
    plt.xlabel("Episode")
    plt.ylabel("Episode Reward (Smoothed)")
    plt.title("Episode Reward over Time (Smoothed over window size {})".format(smoothing_window))
    plt.legend(handles=[plot_training, plot_test], loc=4)
    if noshow:
        plt.close(fig2)
    else:
        plt.show(fig2)

    return fig2

def average_plot():
    pass