import os
from lib import plotting, py_asp, helper, abduction

import subprocess

def get_all_walls(env):
    '''
    Output: wall array. e.g [(X1,Y1), (X2,Y2)...]
    '''
    walls= env.unwrapped.game.getSprites('wall')
    wall_list = []
    for wall in walls:
        x = wall.rect.left/24
        y = wall.rect.top/24
        wall_list.append((int(x),int(y)))
    return wall_list

# def get_links(env):
#     entry1 = (5,3)
#     exit1 = (1,1)
#     return entry1, exit1

def add_surrounding_walls(x, y, wall_list):
    '''
    Output: wall(X1,Y1). wall(X2,Y2). ...
    '''
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

def get_seen_walls(file):
    '''
    Collect all walls that are already seen

    Output: [(X1,Y1), (X2,Y2), ...]
    '''
    wall_list = []
    with open(file) as f:
        for line in f:
            if "wall((" in line:
                x,_,_ = abduction.get_X(line)
                y,_,_ = abduction.get_Y(line)
                wall_list.append((x,y))
    return wall_list

def get_exclusions(previous_state, next_state, action):
    '''
    Get all state_after that did not happen while exploring

    Output: "state_after((X1,Y1)), state_after((X2,Y2)), ... 
    '''
    previous_x = int(previous_state[0])
    previous_y = int(previous_state[1])
    next_x = int(next_state[0])
    next_y = int(next_state[1])

    # Right
    exc1_x, exc1_y = previous_x+1, previous_y
    # Down
    exc2_x, exc2_y = previous_x, previous_y+1
    # Left
    exc3_x, exc3_y = previous_x-1, previous_y
    # Up
    exc4_x, exc4_y = previous_x, previous_y-1
    # Non
    exc5_x, exc5_y = previous_x, previous_y

    if(next_x == exc1_x and next_y == exc1_y):
        return False,"state_after((" + str(exc2_x) + "," + str(exc2_y) + \
                ")),state_after((" + str(exc3_x) + "," + str(exc3_y) + \
                ")),state_after((" + str(exc4_x) + "," + str(exc4_y) + \
                ")),state_after((" + str(exc5_x) + "," + str(exc5_y) + "))"

    elif(next_x == exc2_x and next_y == exc2_y):
        return False,"state_after((" + str(exc1_x) + "," + str(exc1_y) + \
                ")),state_after((" + str(exc3_x) + "," + str(exc3_y) + \
                ")),state_after((" + str(exc4_x) + "," + str(exc4_y) + \
                ")),state_after((" + str(exc5_x) + "," + str(exc5_y) + "))"

    elif(next_x == exc3_x and next_y == exc3_y):
        return False,"state_after((" + str(exc1_x) + "," + str(exc1_y) + \
                ")),state_after((" + str(exc2_x) + "," + str(exc2_y) + \
                ")),state_after((" + str(exc4_x) + "," + str(exc4_y) + \
                ")),state_after((" + str(exc5_x) + "," + str(exc5_y) + "))"

    elif(next_x == exc4_x and next_y == exc4_y):
        return False,"state_after((" + str(exc1_x) + "," + str(exc1_y) + \
                ")),state_after((" + str(exc2_x) + "," + str(exc2_y) + \
                ")),state_after((" + str(exc3_x) + "," + str(exc3_y) + \
                ")),state_after((" + str(exc5_x) + "," + str(exc5_y) + "))"

    elif(next_x == exc5_x and next_y == exc5_y):
        return False, "state_after((" + str(exc1_x) + "," + str(exc1_y) + \
                ")),state_after((" + str(exc2_x) + "," + str(exc2_y) + \
                ")),state_after((" + str(exc3_x) + "," + str(exc3_y) + \
                ")),state_after((" + str(exc4_x) + "," + str(exc4_y) + "))"
    elif(action == "up"):
        return True, "state_after((" + str(exc1_x) + "," + str(exc1_y) + \
                ")),state_after((" + str(exc2_x) + "," + str(exc2_y) + \
                ")),state_after((" + str(exc3_x) + "," + str(exc3_y) + \
                ")),state_after((" + str(exc5_x) + "," + str(exc5_y) + "))"

def get_plan_exclusions(state_at_before, state_at_after, states):
    '''
    Go through the states plan at time T, and get all state_after that did not happen,
    and return them as exclusions (since they are not useful state plan)

    Output: "state_after((X1,Y1)), state_after((X2,Y2)), ... 
    '''

    current_time,_,_ = abduction.get_T(state_at_before)
    exclusion_list = []

    for s in states:
        if current_time+1 == int(s[0]) and state_at_after != s[1]:
            x_after, _, _ = abduction.get_X(s[1])
            y_after, _, _ = abduction.get_Y(s[1])
            state_after = py_asp.state_after(x_after, y_after)
            if state_after == "state_after((5,3))":
                continue
            else:
                exclusion_list.append(state_after)
    
    # Take each element in exclcusion_list and concatinate them in string
    exclusions = ""
    for exclusion in exclusion_list:
        exclusions += exclusion
        exclusions += ", "
    return exclusions[0:len(exclusions)-2]


def get_next_state(current_state, action):
    x = int(current_state[0])
    y = int(current_state[1])
    if(action == "up"):
        return x, y-1
    elif(action == "down"):
        return x, y+1
    elif(action == "right"):
        return x+1, y
    elif(action == "left"):
        return x-1, y
    elif(action == "non"):
        return x, y

def get_link(previous_state, next_state, action):
    x,y = get_next_state(previous_state, action)
    next_x = int(next_state[0])
    next_y = int(next_state[1])
    return "link(({},{}), ({},{})). ".format(x,y,next_x,next_y)

def generate_plan_pos(state_at_before, state_at_after, states, action, wall_list, is_link):
    '''
    Generate a positive example for ILASP from the plan

    Output: #pos({state_after((3,6))}, {state_after((4,6)), ...}, {state_before((3,6)). action(non). }).
    '''

    x_before, _, _ = abduction.get_X(state_at_before)
    y_before, _, _ = abduction.get_Y(state_at_before)
    x_after, _, _ = abduction.get_X(state_at_after)
    y_after, _, _ = abduction.get_Y(state_at_after)
    state_before = py_asp.state_before(x_before, y_before)
    state_after = py_asp.state_after(x_after, y_after)
    # TODO is this correct way to do??
    exclusions = get_plan_exclusions(state_at_before, state_at_after, states)
    walls = add_surrounding_walls(x_before, y_before, wall_list)
    
    link = ""
    if is_link:
        if(x_before == 5 and y_before == 4 and action == "up"):
            link = "link((5,3), (1,1))."
    
    if exclusions == "":
        return False, "#pos({"+ state_after + "}, {" + exclusions + "}, {" + state_before + " action({}). ".format(action) + link + walls + "})."
    else:
        return True, "#pos({"+ state_after + "}, {" + exclusions + "}, {" + state_before + " action({}). ".format(action) + link + walls + "})."    

def generate_explore_pos(next_state, previous_state, action, wall_list):
    '''
    Generate a pos in the exploration phase

    Output: #pos({state_after((3,6))}, {state_after((4,6)), ...}, {state_before((3,6)). action(non). }).
    '''
    walls = add_surrounding_walls(int(previous_state[0]),int(previous_state[1]), wall_list)
    is_link, exclusions = get_exclusions(previous_state, next_state, action)
    # If exclusions is empty, there must be a link
    # if exclusions == "":
    if is_link:
        link = get_link(previous_state, next_state, action)
        return link, "#pos({state_after((" + str(int(next_state[0])) + "," + str(int(next_state[1])) + "))}, {" + exclusions + "}, {state_before((" + str(int(previous_state[0])) + "," + str(int(previous_state[1]))+ ")). action(" + action + "). " + link + walls + "})."    
    else:
        return "","#pos({state_after((" + str(int(next_state[0])) + "," + str(int(next_state[1])) + "))}, {" + exclusions + "}, {state_before((" + str(int(previous_state[0])) + "," + str(int(previous_state[1]))+ ")). action(" + action + "). " + walls + "})."

def send_state_transition_pos(previous_state,next_state, action, wall_list, lasfile, background):
    '''
    Generate a pos and add it to lasfile
    '''
    link, pos = generate_explore_pos(next_state,previous_state, action, wall_list)
    pos += "\n"
    helper.append_to_file(pos, lasfile)

    if link != "":
        link += "\n"

        helper.append_to_file(link, background)

def copy_las_base(lasfile, height, width, is_link):
    '''
    make a lasfile for ILASP
    '''

    cell = "cell((0..{}, 0..{})).\n".format(width, height)
    with open(lasfile, "w") as base:
        base.write(cell)
        if is_link == True:
            link = "#modeb(1, link(var(cell), var(cell)), (positive)).\n"
            base.write(link)

    with open("las_base.las") as f:
        with open(lasfile, "a") as out:
            for line in f:
                out.write(line)

def run_ILASP(filename, cache_path=None):
    '''
    run ILASP and get H

    Output: H
    '''
    print("ILASP running...")
    try:
        # Hardcoded best H
        hypothesis = "state_after(V0) :- adjacent(right, V0, V1), state_before(V1), action(right), not wall(V0).\nstate_after(V0) :- adjacent(left, V0, V1), state_before(V1), action(left), not wall(V0).\nstate_after(V0) :- adjacent(down, V0, V1), state_before(V1), action(down), not wall(V0).\nstate_after(V0) :- adjacent(up, V0, V1), state_before(V1), action(up), not wall(V0)."
        hypothesis = "state_at(V0, T+1) :- time(T), state_at(V0, T), action(non, T). \
state_at(V1, T+1) :- time(T), link(V0, V1), adjacent(up, V0, V2), state_before(V2). \
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1). \
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), not wall(V1). \
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0). \
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), not wall(V0). \
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), wall(V1). \
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), wall(V0). \
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), wall(V1). \
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0)."

        # ILASP --version=2i output.las -ml=10 -nc --clingo5 --clingo "clingo5 --opt-strat=usc,stratify"
        # Clingo 5
        # clingo5 = "clingo5 --opt-strat=usc,stratify"
        # if cache_path:
        #     cache_path = "--cached-rel=" + cache_path
        #     hypothesis = subprocess.check_output(["ILASP", "--version=2i", filename, "-ml=10", "-q", "-nc", "--clingo5", "--clingo", clingo5, cache_path], universal_newlines=True)
        # else:
        #     hypothesis = subprocess.check_output(["ILASP", "--version=2i", filename, "-ml=10", "-q", "-nc", "--clingo5", "--clingo", clingo5], universal_newlines=True)
        
        # Normal 
        # hypothesis = subprocess.check_output(["ILASP", "--version=2i", filename, "-ml=10", "-nc", "-q"], universal_newlines=True)
    except subprocess.CalledProcessError as e:
        print("Error...", e.output)
        hypothesis = e.output
    # Convert syntax of H for ASP solver
    hypothesis = py_asp.convert_las_asp(hypothesis)
    return hypothesis

# Probably not needed
# def execute_pseudo_action(current_state, action):
#     current_state = abduction.update_T(current_state)
#     if(action == "up"):
#         return abduction.update_Y(current_state, -1)
#     elif(action == "down"):
#         return abduction.update_Y(current_state, 1)
#     elif(action == "right"):
#         return abduction.update_X(current_state, 1)
#     elif(action == "left"):
#         return abduction.update_X(current_state, -1)
#     elif(action == "non"):
#         return current_state
