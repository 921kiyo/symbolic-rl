import os
from lib import py2asp

def convert_state(x, y):
    return (x-1)*6+y
    # return (x-1)*19+y

def send_state_transition(previous_state,next_state, action, wall_list, filename):
    pos = py2asp.positive_example(next_state,previous_state, action, wall_list)
    pos += "\n"
    with open(filename, "a") as myfile:
        myfile.write(pos)

def add_background(previous_state, wall_list, background):
    walls = py2asp.add_walls(previous_state, wall_list)
    walls += "\n"

    with open(background, "a") as myfile:
        myfile.write(walls)

def convert_action(action):
    if(action == 0):
        return "down"
    elif(action == 1):
        return "up"
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
        print("output.txt could not be found...")
        pass

def copy_las_base(filename):
    with open("las_base.las") as f:
        with open(filename, "w") as out:
            for line in f:
                out.write(line)
