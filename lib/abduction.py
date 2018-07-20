from lib import plotting, py_asp, helper, induction

import subprocess
import json

import os

def is_wall_in_background(wall, backgroundfile):
    wall = "wall({})".format(str(wall))
    with open(backgroundfile, "r") as searchfile:
        for line in searchfile:
            if(wall in line):
                searchfile.close()
                return True
    return False

# TODO Can I simplify this?
def add_new_walls(previous_state, wall_list, backgroundfile):
    '''
    Check the surrounding and see if there is any new walls

    Output: Boolean to tell whether a new wall has been added to B
    '''
    x = int(previous_state[0])
    y = int(previous_state[1])
    is_new_b = False
    if(((x+1,y) in wall_list) and (is_wall_in_background((x+1,y), backgroundfile) == False)):
        wall = "wall({}).".format((x+1,y)) + "\n"
        helper.append_to_file(wall, backgroundfile)
        is_new_b = True
    if(((x,y+1) in wall_list) and (is_wall_in_background((x,y+1), backgroundfile) == False)):
        wall = "wall({}).".format((x,y+1)) + "\n"
        helper.append_to_file(wall, backgroundfile)
        is_new_b = True
    if(((x-1,y) in wall_list) and (is_wall_in_background((x-1,y), backgroundfile) == False)):
        wall = "wall({}).".format((x-1,y)) + "\n"
        helper.append_to_file(wall, backgroundfile)
        is_new_b = True
    if(((x,y-1) in wall_list) and (is_wall_in_background((x,y-1), backgroundfile) == False)):
        wall = "wall({}).".format((x,y-1)) + "\n"
        helper.append_to_file(wall, backgroundfile)
        is_new_b = True
    return is_new_b

def make_lp(lasfile, backgroundfile, clingofile, start_state, goal_state, time_range, width, height, cache_path):
    '''
    Collect all info necessary to run clingo and send them to "clingofile"
    '''
    # Run ILASP to get H
    hypothesis = induction.run_ILASP(lasfile, cache_path)

    # starting point
    start_state = "%AAA\n" + "state_at((" + str(int(start_state[0])) + ", " + str(int(start_state[1])) + "), 1).\n" + "%BBB\n"
    # goal state
    goal_state = "state_at((" + str(int(goal_state[0])) + ", " + str(int(goal_state[1])) + "), T),"
    # goal_state = "state_at((17, 1), T),"
    
    # TODO automatically get this info as well
    # action choice rule
    actions = "1{action(down, T); action(up, T); action(right, T); action(left, T); action(non, T)}1 :- time(T), not finished(T).\n"
    
    show = "#show state_at/2.\n #show action/2.\n"
    # TODO update goal specification
    # goal specification
    goal = "finished(T):- goal(T2), time(T), T >= T2.\n goal(T):- " + goal_state + " not finished(T-1).\n" + \
    "goalMet:- goal(T).\n:- not goalMet.\n"
    # time range
    time = "time(1.." + str(time_range) + ").\n"
    # cell range
    cell = "cell((0..{}, 0..{})).\n".format(width-1, height-1)
    # adjacent definitions
    given = "adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).\n\
    adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).\n\
    adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).\n\
    adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).\n"

    # optimisation statement
    minimize = "#minimize{1, X, T: action(X,T)}.\n"
    kb = start_state + actions + show + goal + time + cell + minimize + given
    # Send H and BK to clingofile
    helper.append_to_file(kb, clingofile)
    helper.append_to_file("%START\n", clingofile)
    helper.append_to_file(hypothesis, clingofile)
    helper.append_to_file("%END\n", clingofile)
    send_background_to_clingo(backgroundfile, clingofile)

def send_background_to_clingo(input, output):
    with open(input) as f:
        with open(output, "a") as out:
            for line in f:
                out.write(line)

def run_clingo(clingofile):
    '''
    Run clingo to get a sequnce of action plan
    
    Output: sorted action and state arrays
    '''
    print("clingo running...")
    try:
        # planning_actions = subprocess.check_output(["clingo", "-n", "0", clingofile, "--opt-mode=opt", "--outf=2"], universal_newlines=True)
        planning_actions = subprocess.check_output(["clingo5", "--opt-strat=usc,stratify", "-n", "0", clingofile, "--opt-mode=opt", "--outf=2"], universal_newlines=True)
    except subprocess.CalledProcessError as e:
        planning_actions = e.output
        # When Clingo returns UNSATISFIABLE
        print("Clingo error...")
        # print(e.output)

    json_plan = json.loads(planning_actions)

    # Extract only the optimal answer set (last one)
    size_asp = len(json_plan["Call"][0]["Witnesses"])
    answer_sets = json_plan["Call"][0]["Witnesses"][size_asp-1]["Value"]
    return answer_sets

def sort_planning(state_action_array):
    '''
    Run clingo to get a sequnce of action plan
    
    Output: sorted action and state arrays
    '''

    states = []
    actions = []

    # Loop through the string and put state_at and action into different arrays
    for i in state_action_array:
        if "state_at" in i:
            states.append(i)
        if "action" in i:
            actions.append(i)

    states_key = []
    for state in states:
        # key is integer T
        state_key,_,_ = get_T(state)
        states_key.append((state_key, state))
    # Sort them by T
    states_sorted = sorted(states_key, key=lambda tup: tup[0])

    actions_key = []
    for action in actions:
        action_key,_,_ = get_T(action)
        act = extract_action(action)
        actions_key.append((action_key, act))
    # Sort them by T
    actions_sorted = sorted(actions_key, key=lambda tup: tup[0])

    return states_sorted, actions_sorted

def update_T(state):
    '''
    Increment T by 1
    
    Output: string "state_at"
    '''
    size = len(state)
    time, start_index, end_index = get_T(state)
    time += 1
    return state[0:start_index+1] + str(time) + state[end_index:size]

def get_T(state):
    size = len(state)
    start_index = size
    end_index = size - 1
    for i in range(end_index, 0, -1):
        if state[i] == ",":
            start_index = i
            break
    return int(state[start_index+1: end_index]), start_index, end_index

def update_Y(state, step):
    size = len(state)
    y, start_index, end_index = get_Y(state)
    y += step
    return state[0:start_index+1] + str(y) + state[end_index:size]

def update_X(state, step):
    size = len(state)
    x, start_index, end_index = get_X(state)
    x += step
    return state[0:start_index+1] + str(x) + state[end_index:size]

def get_X(state):
    first_blacket_seen = False
    start_index = end_index = 0
    for index, char in enumerate(state):
        if(char == "(" and first_blacket_seen):
            start_index = index
        if char == "(":
            first_blacket_seen = True
        if char == ",":
            end_index = index
            break
    return int(state[start_index+1: end_index]), start_index, end_index

def get_Y(state):
    start_index = end_index = 0
    start_index_found = False
    for index, char in enumerate(state):
        if (char == "," and start_index_found == False):
            start_index = index
            start_index_found = True
        if char == ")":
            end_index = index
            break
    return int(state[start_index+1: end_index]), start_index, end_index

def extract_action(action):
    '''
    Input:  e.g action(right,13)
    Output: e.g right    
    '''

    start_index = len("action(")

    end_index = start_index
    for a in range(len(action)):
        if action[a] == ",":
            end_index = a
    return action[start_index: end_index]

def update_agent_position(agent_position, clingofile):
    '''
    Update planning starting point based on the location of the agent
    '''
    # Replace everything between "AAA" and "BBB" in clingo file with a new agent position
    start_state = "%AAA\n" + "state_at((" + str(int(agent_position[0])) + ", " + str(int(agent_position[1])) + "), 1).\n" + "%BBB\n"
    flag = False
    with open(clingofile) as f:
        for line in f:
            if line == "%AAA\n":
                flag = True
            if flag == False:
                with open("temp.lp", "a") as newfile:
                    newfile.write(line)
            if line == "%BBB\n":
                flag = False
    os.rename("temp.lp", clingofile)

    helper.append_to_file(start_state, clingofile)


def update_h(hypothesis, clingofile):
    '''
    Update planning starting point based on the location of the agent
    '''

    # Replace everything between "START" and "END" in clingo file with a new H
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

    helper.append_to_file("%START\n", clingofile)
    helper.append_to_file(hypothesis, clingofile)
    helper.append_to_file("%END\n", clingofile)

def is_state_in_states(state, states):
    '''
    check if state is in states answer sets
    '''

    for s in states:
        if(state == s[1]):
            return True
    return False

# TODO Do I want to do this?
def get_predicted_state(current_state, action, states):
    '''
    check if state is in states answer sets
    '''

    current_state = update_T(current_state)
    if(action == "up"):
        new_state = update_Y(current_state, -1)
        if is_state_in_states(new_state, states):
            return new_state
        else:
            return current_state
    elif(action == "down"):
        new_state = update_Y(current_state, 1)
        if is_state_in_states(new_state, states):
            return new_state
        else:
            return current_state
    elif(action == "right"):
        new_state = update_X(current_state, 1)
        if is_state_in_states(new_state, states):
            return new_state
        else:
            return current_state
    elif(action == "left"):
        new_state = update_X(current_state, -1)
        if is_state_in_states(new_state, states):
            return new_state
        else:
            return current_state
    elif(action == "non"):
        return current_state
