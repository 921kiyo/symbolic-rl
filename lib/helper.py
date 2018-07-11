import os
from lib import py2asp
import subprocess
import re
import json

import time

def convert_state(x, y, width):
    x += 1
    y += 1
    return (y-1)*width+x

def send_state_transition(previous_state,next_state, action, wall_list, filename):
    pos = py2asp.positive_example(next_state,previous_state, action, wall_list)
    pos += "\n"
    with open(filename, "a") as myfile:
        myfile.write(pos)

def add_background(previous_state, wall_list, background):
    x = int(previous_state[0])
    y = int(previous_state[1])
    print("Wall list ", wall_list)
    if(((x+1,y) in wall_list) and (py2asp.already_in_background((x+1,y), background) == False)):
        wall = "wall({}).".format((x+1,y)) + "\n"
        py2asp.add_each_wall(wall, background)
    if(((x,y+1) in wall_list) and (py2asp.already_in_background((x,y+1), background) == False)):
        wall = "wall({}).".format((x,y+1)) + "\n"
        py2asp.add_each_wall(wall, background)
    if(((x-1,y) in wall_list) and (py2asp.already_in_background((x-1,y), background) == False)):
        wall = "wall({}).".format((x-1,y)) + "\n"
        py2asp.add_each_wall(wall, background)
    if(((x,y-1) in wall_list) and (py2asp.already_in_background((x,y-1), background) == False)):
        wall = "wall({}).".format((x,y-1)) + "\n"
        py2asp.add_each_wall(wall, background)

def get_all_walls(env):
    walls= env.unwrapped.game.getSprites('wall')
    wall_list = []
    for wall in walls:
        x = wall.rect.left/5
        y = wall.rect.top/5
        wall_list.append((int(x),int(y)))
    return wall_list

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
        print(filename + " could not be found...")
        
    with open(filename, "a") as myfile:
        myfile.close()
    return

def copy_las_base(filename):
    with open("las_base.las") as f:
        with open(filename, "w") as out:
            for line in f:
                out.write(line)
        out.close()
    f.close()

def convert_las_asp(hypothesis):
    hypothesis = hypothesis.replace("Pre-processing", "%Pre-processing")
    hypothesis = hypothesis.replace("Solve", "%Solve")
    hypothesis = hypothesis.replace("Total", "%Total")
    hypothesis = hypothesis.replace("state_after(V1)", "state_at(V1, T+1)")
    hypothesis = hypothesis.replace("state_after(V0)", "state_at(V0, T+1)")
    hypothesis = hypothesis.replace("state_before(V1)", "state_at(V1, T)")
    hypothesis = hypothesis.replace("state_before(V0)", "state_at(V0, T)")
    hypothesis = hypothesis.replace(":-", ":- time(T),")
    hypothesis = hypothesis.replace("action(up)", "action(up, T)")
    hypothesis = hypothesis.replace("action(down)", "action(down, T)")
    hypothesis = hypothesis.replace("action(right)", "action(right, T)")
    hypothesis = hypothesis.replace("action(left)", "action(left, T)")
    hypothesis = hypothesis.replace("action(non)", "action(non, T)")
    hypothesis += "\n"
    return hypothesis

def make_lp(filename, background, clingofile, start_state, goal_state, time_range, width, height):
    # Run ILASP to get H
    # hypothesis = subprocess.check_output(["ILASP", "--version=2i", filename, "-ml=10"], universal_newlines=True)
    hypothesis = "state_after(V0) :- adjacent(right, V0, V1), state_before(V1), action(right), not wall(V0).\nstate_after(V0) :- adjacent(left, V0, V1), state_before(V1), action(left), not wall(V0).\nstate_after(V0) :- adjacent(down, V0, V1), state_before(V1), action(down), not wall(V0).\nstate_after(V0) :- adjacent(up, V0, V1), state_before(V1), action(up), not wall(V0)."
    # Convert syntax of H for ASP solver
    hypothesis = convert_las_asp(hypothesis)
    # starting point
    start_state = "state_at((" + str(int(start_state[0])) + ", " + str(int(start_state[1])) + "), 1).\n"
    # goal state
    goal_state = "state_at((" + str(int(goal_state[0])) + ", " + str(int(goal_state[1])) + "), T),"

    # TODO automatically get this info as well
    # action choice rule
    actions = "1{action(down, T); action(up, T); action(right, T); action(left, T); action(non, T)}1 :- time(T), not finished(T).\n"
    # show, minimizes
    show = "#show state_at/2.\n #show action/2.\n"
    # goal specification
    goal = "finished(T):- goal(T2), time(T), T >= T2.\n goal(T):- " + goal_state + " not finished(T-1).\n" + \
    "goalMet:- goal(T).\n:- not goalMet.\n"
    # time range
    time = "time(1.." + str(time_range) + ").\n"
    # cell range
    cell = "cell((0..{}, 0..{})).\n".format(width-1, height-1)
    # adjacent definitions
    # given = ":- state_at(V1, T), state_at(V2, T), V1 != V2.\n" +\
    # "adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).\n\
    # adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).\n\
    # adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).\n\
    # adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).\n"
    given = "adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).\n\
    adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).\n\
    adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).\n\
    adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).\n"

    # optimisation statement
    minimize = "#minimize{1, X, T: action(X,T)}.\n"
    kb = start_state + actions + show + goal + time + cell + minimize + given
    # Send H and BK to clingofile
    send_kb(kb, clingofile)
    send_kb(hypothesis, clingofile)
    send_background(background, clingofile)

def run_clingo(clingofile):
    # Get planning using clingo
    try:
        planning_actions = subprocess.check_output(["clingo", "-n", "0", clingofile, "--opt-mode=opt", "--outf=2"], universal_newlines=True)
    except subprocess.CalledProcessError as e:
        planning_actions = e.output
        # When Clingo returns UNSATISFIABLE
        # print(e)
        # print(e.output)

    json_plan = json.loads(planning_actions)

    size_asp = len(json_plan["Call"][0]["Witnesses"])

    # Extract only the optimal answer set
    state_action_array = json_plan["Call"][0]["Witnesses"][size_asp-1]["Value"]

    states, actions = sort_planning(state_action_array)

    return states, actions

def execute_planning(env, states, actions):
    done = False
    for action in actions:
        print("Planning phase... ", "take action ", action[1])
        env.render()
        time.sleep(0.3)
        action_int = get_action(action[1])
        next_state, reward, done, _ = env.step(action_int)
        print("next_state ", next_state)

    if done:
        print("done ", done)
        return done

    print("Done must be false ", done)
    return False

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

def update_T(state):
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
    start_index = len("action(")

    end_index = start_index
    for a in range(len(action)):
        if action[a] == ",":
            end_index = a
    return action[start_index: end_index]

def sort_planning(state_action_array):
    states = []
    actions = []

    for i in state_action_array:
        if "state_at" in i:
            states.append(i)
        if "action" in i:
            actions.append(i)

    states_key = []
    for state in states:
        key,_,_ = get_T(state)
        states_key.append((key, state))
    states_sorted = sorted(states_key, key=lambda tup: tup[0])

    actions_key = []
    for action in actions:
        action_key,_,_ = get_T(action)
        act = extract_action(action)
        actions_key.append((action_key, act))
    actions_sorted = sorted(actions_key, key=lambda tup: tup[0])

    return states_sorted, actions_sorted

# def extract_planning(string):
#     states = re.findall("state_at\(\([0-9]+,[0-9]+\),[0-9]\)", string)
#     actions = re.findall("action\([a-z]+,[0-9]+\)", string)
#
#     states_key = []
#     for state in states:
#         key = get_T(state)
#         states_key.append((key, state))
#     states_sorted = sorted(states_key, key=lambda tup: tup[0])
#
#     actions_key = []
#     for action in actions:
#         action_key = get_T(action)
#         act = extract_action(action)
#         actions_key.append((action_key, act))
#     actions_sorted = sorted(actions_key, key=lambda tup: tup[0])
#
#     return states_sorted, actions_sorted

def send_kb(kb, clingofile):
    with open(clingofile, "a") as c:
        c.write(kb)

def send_background(input, output):
    with open(input) as f:
        with open(output, "a") as out:
            for line in f:
                out.write(line)

def convert_state_time(planning_actions):
    pass
