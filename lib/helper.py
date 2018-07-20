import os
import subprocess
import json
import time

def convert_state(x, y, width):
    x += 1
    y += 1
    return (y-1)*width+x

# TODO generarize more
def convert_action(action):
    if(action == 0):
        return "up"
    elif(action == 1):
        return "down"
    elif(action == 2):
        return "left"
    elif(action == 3):
        return "right"
    elif(action == 4):
        return "non"
    else:
        print("this action does not exist...", str(action))

def create_file(filename, extra_path=None):
    dir = os.getcwd()
    if extra_path:
        dir = os.path.join(dir, extra_path)
    file =os.path.join(dir, filename)
    with open(file, "w+") as file:
        pass

def silentremove(filename, extra_path=None):
    dir = os.getcwd()
    if extra_path:
        dir = os.path.join(dir, extra_path)
    
    file =os.path.join(dir, filename)
    try:
        os.remove(file)
    except OSError:
        print(filename + " could not be found...")
        
    with open(filename, "a") as myfile:
        myfile.close()
    return

def get_action(action):
    if(action == "up"):
        return 0
    elif(action == "down"):
        return 1
    elif(action == "left"):
        return 2
    elif(action == "right"):
        return 3
    elif(action == "non"):
        return 4
    else:
        print("this action does not exist...", action)
        return -1

def append_to_file(pos, file):
    '''
    Add a new pos to a las file.
    '''
    with open(file, "a") as f:
        f.write(pos)

def update_reward(reward, done):
    if done:
        return 100
    else:
        return reward - 1

def gen_log_dir(base_dir, prefix='', symlink=True):
    # Create a folder to hold results
    time_str = time.strftime("%d-%m-%Y-%H-%M-%S", time.gmtime())
    if prefix == '' or prefix is None:
        base_log_dir = time_str
    else:
        base_log_dir = '{}_{}'.format(prefix, time_str)
    log_dir = base_dir + '/' + base_log_dir
    os.makedirs(log_dir, exist_ok=True)

    if symlink:
        link_path = base_dir + '/last'

        try:
            # Clean up old softlink
            os.remove(link_path)
        except OSError as ex:
            pass # All G

        try:
            os.symlink(base_log_dir, link_path)
        except FileExistsError as e:
            # Race conditions, what can you do
            pass

    return log_dir