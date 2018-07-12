import subprocess
import re
import json
from lib import plotting, py_asp, helper, induction, abduction

def check_if_in_answersets(state, states):
    for s in states:
        if(state == s[1]):
            return True
    return False

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

def generate_pos(state_at_before, state_at_after, states, action, wall_list):
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
    return "#pos({"+ state_after + "}, {" + exclusions + "}, {" + state_before + " action({}). ".format(action) + walls + "})."


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

def get_wall_list(file):
    wall_list = []
    with open(file) as f:
        for line in f:
            if "wall((" in line:
                x,_,_ = abduction.get_X(line)
                y,_,_ = abduction.get_Y(line)
                wall_list.append((x,y))
    return wall_list

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

        pos = generate_pos(state_before, state_after, states, action[1], wall_list)

        return pos

def add_new_pos(pos, file):
    with open(file, "a") as f:
        f.write(pos)

try:
    planning_actions = subprocess.check_output(["clingo", "-n", "0", "clingo2.lp", "--opt-mode=opt", "--outf=2"], universal_newlines=True)
except subprocess.CalledProcessError as e:
    planning_actions = e.output
    # When Clingo returns UNSATISFIABLE
    print(e)
    # print(e.output)

json_plan = json.loads(planning_actions)

size_asp = len(json_plan["Call"][0]["Witnesses"])

# Extract only the optimal answer set
state_action_array = json_plan["Call"][0]["Witnesses"][size_asp-1]["Value"]

states, actions = abduction.sort_planning(state_action_array)

# print(states)
print(actions)

# If there are more than 1 state at each T

start_state = states[0][1]

wall_list = get_wall_list("clingo2.lp")

pos = execute_pseudo_plan(start_state, actions, states, wall_list)

print("POS ", pos)
add_new_pos(pos, "output2.las")
# update_h("output2.las")
for action in actions:
    key = action[0]
    state_list = []

    # for state in states:
    #     if state[0] == key:
    #         state_list.append(state)

    # if len(state_list) > 1:
    #     get_inc_exc(state_list, action)


# state_at((1,4),1) 
# action(up,1) 
# state_at((1,3),2)

# state_at((1,1),2) 
# state_at((2,1),2) 
# state_at((3,1),2) 
# state_at((4,1),2) 
# state_at((5,1),2) 
# state_at((0,2),2) 
# state_at((6,2),2) 
# state_at((0,3),2) 
# state_at((2,3),2) 
# state_at((3,3),2) 
# state_at((4,3),2) 
# state_at((5,3),2) 
# state_at((0,4),2) 
# state_at((2,4),2) 
# state_at((4,4),2) 
# state_at((6,4),2) 
# state_at((0,5),2) 
# state_at((6,5),2) 
