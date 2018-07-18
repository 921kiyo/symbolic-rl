import os
import subprocess
import json

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

def silentremove(filename):
    dir = os.getcwd()
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