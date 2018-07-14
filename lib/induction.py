import os
from lib import plotting, py_asp, helper, abduction

import subprocess

def get_all_walls(env):
    walls= env.unwrapped.game.getSprites('wall')
    wall_list = []
    for wall in walls:
        x = wall.rect.left/5
        y = wall.rect.top/5
        wall_list.append((int(x),int(y)))
    return wall_list

def add_walls(previous_state, wall_list):
    x = int(previous_state[0])
    y = int(previous_state[1])
    walls = ""

    if((x+1,y) in wall_list):
        walls += "wall({}). ".format((x+1,y))
    if((x,y+1) in wall_list):
        walls += "wall({}). ".format((x,y+1))
    if((x-1,y) in wall_list):
        walls += "wall({}). ".format((x-1,y))
    if((x,y-1) in wall_list):
        walls += "wall({}). ".format((x,y-1))

    return walls

def get_exclusions(previous_state, next_state):
    previous_x = int(previous_state[0])
    previous_y = int(previous_state[1])
    next_x = int(next_state[0])
    next_y = int(next_state[1])

    exc1_x, exc1_y = previous_x+1, previous_y
    exc2_x, exc2_y = previous_x, previous_y+1
    exc3_x, exc3_y = previous_x-1, previous_y
    exc4_x, exc4_y = previous_x, previous_y-1
    exc5_x, exc5_y = previous_x, previous_y

    if(next_x == exc1_x and next_y == exc1_y):
        return "state_after((" + str(exc2_x) + "," + str(exc2_y) + \
                ")),state_after((" + str(exc3_x) + "," + str(exc3_y) + \
                ")),state_after((" + str(exc4_x) + "," + str(exc4_y) + \
                ")),state_after((" + str(exc5_x) + "," + str(exc5_y) + "))"

    elif(next_x == exc2_x and next_y == exc2_y):
        return "state_after((" + str(exc1_x) + "," + str(exc1_y) + \
                ")),state_after((" + str(exc3_x) + "," + str(exc3_y) + \
                ")),state_after((" + str(exc4_x) + "," + str(exc4_y) + \
                ")),state_after((" + str(exc5_x) + "," + str(exc5_y) + "))"

    elif(next_x == exc3_x and next_y == exc3_y):
        return "state_after((" + str(exc1_x) + "," + str(exc1_y) + \
                ")),state_after((" + str(exc2_x) + "," + str(exc2_y) + \
                ")),state_after((" + str(exc4_x) + "," + str(exc4_y) + \
                ")),state_after((" + str(exc5_x) + "," + str(exc5_y) + "))"

    elif(next_x == exc4_x and next_y == exc4_y):
        return "state_after((" + str(exc1_x) + "," + str(exc1_y) + \
                ")),state_after((" + str(exc2_x) + "," + str(exc2_y) + \
                ")),state_after((" + str(exc3_x) + "," + str(exc3_y) + \
                ")),state_after((" + str(exc5_x) + "," + str(exc5_y) + "))"

    elif(next_x == exc5_x and next_y == exc5_y):
        return "state_after((" + str(exc1_x) + "," + str(exc1_y) + \
                ")),state_after((" + str(exc2_x) + "," + str(exc2_y) + \
                ")),state_after((" + str(exc3_x) + "," + str(exc3_y) + \
                ")),state_after((" + str(exc4_x) + "," + str(exc4_y) + "))"

def get_plan_exclusions(state_at_before, state_at_after, states):
    current_time,_,_ = abduction.get_T(state_at_before)
    exclusion_list = []

    for s in states:
        if current_time+1 == int(s[0]) and state_at_after != s[1]:
            x_after, _, _ = abduction.get_X(s[1])
            y_after, _, _ = abduction.get_Y(s[1])
            state_after = py_asp.state_after(x_after, y_after)
            exclusion_list.append(state_after)
    exclusions = ""
    for exclusion in exclusion_list:
        exclusions += exclusion
        exclusions += ", "
    return exclusions[0:len(exclusions)-2]

def generate_plan_pos(state_at_before, state_at_after, states, action, wall_list):
    # print(check_if_in_answersets(state_at_before, states))
    # print(check_if_in_answersets(state_at_after, states))
    x_before, _, _ = abduction.get_X(state_at_before)
    y_before, _, _ = abduction.get_Y(state_at_before)
    x_after, _, _ = abduction.get_X(state_at_after)
    y_after, _, _ = abduction.get_Y(state_at_after)
    state_before = py_asp.state_before(x_before, y_before)
    state_after = py_asp.state_after(x_after, y_after)
    exclusions = get_plan_exclusions(state_at_before, state_at_after, states)
    walls = add_surrounding_walls(x_before, y_before, wall_list)
    if exclusions == "":
        return False, "#pos({"+ state_after + "}, {" + exclusions + "}, {" + state_before + " action({}). ".format(action) + walls + "})."
    else:
        return True, "#pos({"+ state_after + "}, {" + exclusions + "}, {" + state_before + " action({}). ".format(action) + walls + "})."    

# TODO redundant
def add_surrounding_walls(x, y, wall_list):
    walls = ""
    if((x+1,y) in wall_list):
        walls += "wall({}). ".format((x+1,y))
    if((x,y+1) in wall_list):
        walls += "wall({}). ".format((x,y+1))
    if((x-1,y) in wall_list):
        walls += "wall({}). ".format((x-1,y))
    if((x,y-1) in wall_list):
        walls += "wall({}). ".format((x,y-1))

    return walls

def check_if_in_answersets(state, states):
    for s in states:
        if(state == s[1]):
            return True
    return False

def get_wall_list(file):
    wall_list = []
    with open(file) as f:
        for line in f:
            if "wall((" in line:
                x,_,_ = abduction.get_X(line)
                y,_,_ = abduction.get_Y(line)
                wall_list.append((x,y))
    return wall_list

# Probably not needed
def execute_pseudo_action(current_state, action):
    current_state = abduction.update_T(current_state)
    if(action == "up"):
        return abduction.update_Y(current_state, -1)
    elif(action == "down"):
        return abduction.update_Y(current_state, 1)
    elif(action == "right"):
        return abduction.update_X(current_state, 1)
    elif(action == "left"):
        return abduction.update_X(current_state, -1)
    elif(action == "non"):
        return current_state

# Probably not needed
def execute_pseudo_plan(start_state, actions, states, wall_list):
    current_state = start_state
    for action in actions:
        print("---------------")
        print("old ", current_state)
        print("action ", action[1])
        state_before = current_state
        current_state = execute_pseudo_action(current_state, action[1])
        state_after = current_state
        print("new ",current_state)

        any_exclusion, pos = generate_plan_pos(state_before, state_after, states, action[1], wall_list)

        return any_exclusion, pos

def add_new_pos(pos, file):
    with open(file, "a") as f:
        f.write(pos)

def positive_example(next_state, previous_state, action, wall_list):
    walls = add_walls(previous_state, wall_list)
    exclusions = get_exclusions(previous_state, next_state)
    pos = "#pos({state_after((" + str(int(next_state[0])) + "," + str(int(next_state[1])) + "))}, {" + exclusions + "}, {state_before((" + str(int(previous_state[0])) + "," + str(int(previous_state[1]))+ ")). action(" + action + "). " + walls + "})."
    return pos

def send_state_transition(previous_state,next_state, action, wall_list, filename):
    pos = positive_example(next_state,previous_state, action, wall_list)
    pos += "\n"
    with open(filename, "a") as myfile:
        myfile.write(pos)

def copy_las_base(filename, height, width):
    cell = "cell((0..{}, 0..{})).\n".format(width, height)
    with open(filename, "w") as base:
        base.write(cell)

    with open("las_base.las") as f:
        with open(filename, "a") as out:
            for line in f:
                out.write(line)


def update_h(hypothesis, clingofile):
    flag = False
    with open(clingofile) as f:
        for line in f:
            if line == "%START\n":
                flag = True
            if flag == False:
                with open("temp.lp", "a") as newfile:
                    newfile.write(line)
            if line == "%END\n":
                flag = False
    os.rename("temp.lp", clingofile)

    abduction.send_kb("%START\n", clingofile)
    abduction.send_kb(hypothesis, clingofile)
    abduction.send_kb("%END\n", clingofile)

def run_ILASP(filename):
    print("ILASP running...")
    hypothesis = subprocess.check_output(["ILASP", "--version=2i", filename, "-ml=10"], universal_newlines=True)
    # hypothesis = "state_after(V0) :- adjacent(right, V0, V1), state_before(V1), action(right), not wall(V0).\nstate_after(V0) :- adjacent(left, V0, V1), state_before(V1), action(left), not wall(V0).\nstate_after(V0) :- adjacent(down, V0, V1), state_before(V1), action(down), not wall(V0).\nstate_after(V0) :- adjacent(up, V0, V1), state_before(V1), action(up), not wall(V0)."
    # Convert syntax of H for ASP solver
    hypothesis = py_asp.convert_las_asp(hypothesis)
    return hypothesis

def update_bk():
    pass
