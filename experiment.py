import subprocess
import re
import json
from lib import helper

def generate_pos(state_list, action):
    print(action)
    print(state_list)

def execute_pseudo_action(current_state, action):
    current_state = helper.update_T(current_state)
    # if(action == "up"):
    #     pass
    # print("get_X ", helper.get_X(current_state))
    # print("get_Y ", helper.get_Y(current_state))

def execute_pseudo_plan(start_state, actions):
    current_state = start_state
    action = "up"
    # for action in actions:
    current_state = execute_pseudo_action(current_state, action)
        # generate_pos()
        # print(current_state)

try:
    planning_actions = subprocess.check_output(["clingo", "-n", "0", "maze_new.lp", "--opt-mode=opt", "--outf=2"], universal_newlines=True)
except subprocess.CalledProcessError as e:
    planning_actions = e.output
    # When Clingo returns UNSATISFIABLE
    print(e)
    # print(e.output)

json_plan = json.loads(planning_actions)

size_asp = len(json_plan["Call"][0]["Witnesses"])

# Extract only the optimal answer set
state_action_array = json_plan["Call"][0]["Witnesses"][size_asp-1]["Value"]

states, actions = helper.sort_planning(state_action_array)

# print(states)
print(actions)

# If there are more than 1 state at each T

start_state = states[0][1]

execute_pseudo_plan(start_state, actions)

for action in actions:
    key = action[0]
    state_list = []
    
    # for state in states:
    #     if state[0] == key:
    #         state_list.append(state)
    
    # if len(state_list) > 1:
    #     get_inc_exc(state_list, action)
