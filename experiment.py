import subprocess
import re
import json
from lib import helper

def get_inc_exc(state_list, action):
    print(action)
    print(state_list)

def execute_pseudo_action(current_state, action):
    pass

def execute_pseudo_plan(start_state, actions):
    current_state = start_state

    for action in actions:
        execute_pseudo_action(current_state, action)

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
