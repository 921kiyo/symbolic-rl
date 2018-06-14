import gym
import gym_gvgai
import numpy as np
from gym import wrappers

# env = gym.make("gvgai-aliens-lvl0-v0")
env = gym.make("gvgai-aaa-lvl0-v0")

MAXSTATES = 10**4
GAMMA = 0.9
ALPHA = 0.01

# Helper function to find the max val from the tabular
def max_dict(d):
    max_v = float('-inf')
    for key, val in d.items():
        if val > max_v:
            max_v = val
            max_key = key
    return max_key, max_v

def get_state_as_string(state):
    string_state = ''.join(str(int(e)) for e in state)
    return string_state

def get_all_states_as_string():
    states = []
    for i in range(MAXSTATES):
        states.append(str(i).zfill(4))
        return states


def initialise_Q():
    Q = {}
    all_states = get_all_states_as_string()
    for state in all_states:
        Q[state] = {}
        for action in range(env.action_space.n):
            Q[state][action] = 0
    return Q


def play_one_game(Q, eps=0.5):
    observation = env.reset()
    done = False
    count = 0
    total_reward = 0

    while not done:
        # env.render()
        count+=1

        if np.random.uniform() < eps:
            action = env.action_space.sample()
        else:
            action = max_dict(Q[state])[0] # ??

        observation, reward, done, _ = env.step(action)
        total_reward += reward

        # if done:
        #     # print("Game terminates at t=" + str(i+1))
        #     # break
        print("observation,", observation)
        state_new = get_state_as_string(observation)

        al, max_q_slal = max_dict(Q[state_new])
        Q[state][action] += ALPHA*(reward + GAMMA*max_q_slal - Q[state][action])

        state = state_new
        action = al

    return total_reward, count

def play_many_games(N=10000):
    Q = initialise_Q()

    length = []
    reward = []

    for n in range(N):
        eps = 1.0/np.sqrt(n+1) # Epsilon decreases over time

        episode_reward, episode_length = play_one_game(Q, eps)


        if n % 100 == 0:
            print(n, '%.4f' % eps, episode_reward)

        length.append(episode_length)
        reward.append(episode_reward)
    return length, reward

def plot_running_avg(totalrewards):
    N = len(totalrewards)
    running_avg = np.empty(N)
    for t in range(N):
        running_avg[t] = np.mean(totalrewards[max(0, t-100):(t+1)])
    plt.plot(running_avg)
    plt.title("Running Average")
    plt.show()

if __name__ == '__main__':
    episode_lengths, episode_rewards = play_many_games()

    plot_running_avg(episode_rewards)

# best_length = 0
# episode_length = []
#
# best_weights = np.zeros(4)
#
# for i in range(100):
#     new_weights = np.random.uniform(-1.0, 1.0, 4)
#
#     length = []
#
#     for j in range(100):
#
#         observation = env.reset()
#         # sum_score = 0
#         #
#         # s = env.reset()
#         done = False
#         count = 0
#         # print('init_state: {} example action: {}'.format(s, env.action_space.sample()))
#
#         # for i in range(2000):
#         while not done:
#             # show_state(env, i, "Aliens", str(sum_score))
#             # env.render()
#
#             count+=1
#             # action = env.action_space.sample()
#             action = env.action_space.sample()
#             # action = keyboard_activate()
#             # action = eval(input(''))
#
#             observation, reward, done, _ = env.step(action)
#             sum_score += reward
#
#             print("Action " + str(action) + " played at t=", str(i+1) + ", reward=" \
#                     + str(reward) + ", new score=", sum_score)
#             if done:
#                 print("Game terminates at t=" + str(i+1))
#                 break
