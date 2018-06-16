from gym_recording import playback
import numpy as np
import argparse

parser = argparse.ArgumentParser()
parser.add_argument('path', type=str)
args = parser.parse_args()

eps = {}

def handle_episode(o, a, r):
    eps['o'] = np.copy(o)
    eps['a'] = np.copy(a)
    eps['r'] = np.copy(r)

# playback.scan_recorded_traces(args.path, handle_episode)

rdr = playback.TraceRecordingReader(args.path)
added_episode_count = 0
print('# batches', len(rdr.get_recorded_batches()))
for batch in rdr.get_recorded_batches():
    print('# eps', len(rdr.get_recorded_episodes(batch)))
    for ep in rdr.get_recorded_episodes(batch):
        handle_episode(ep['observations'], ep['actions'], ep['rewards'])
        added_episode_count += 1
rdr.close()
