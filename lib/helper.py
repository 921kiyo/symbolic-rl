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

def log_asp(inputfile, output, base_dir, episode):
    unique_file = gen_unique_filename("lp", base_dir, episode, "clingo")
    copy_file(inputfile, unique_file)
    with open(unique_file, "a") as out:
        out.write("%ANSWER SETS\n\n")
        for i in output:
            i = "%" + i + "\n"
            out.write(i)

# def log_input(extension, inputfile, base_dir, episode, filename):
#     unique_file = gen_unique_filename(extension, "input", base_dir, episode, filename)
#     copy_file(inputfile, unique_file)

# def log_output(extension, output, base_dir, episode, filename):
#     unique_file = gen_unique_filename(extension, "output", base_dir, episode, filename)
#     with open(unique_file, "a") as out:
#         for i in output:
#             i = i + "\n"
#             out.write(i)

def copy_file(inputfile, outputfile):
    '''
    Copyt file
    '''
    with open(inputfile) as f:
        with open(outputfile, "a") as out:
            for line in f:
                out.write(line)

def gen_unique_filename(extension, base_dir, episode, filename):
    current_time = int(round(time.time() * 1000))
    base_log_dir = '{}_spisode{}_{}'.format(filename, episode, current_time)
    file_path = base_dir + '/' + base_log_dir

    return file_path + "." + extension

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