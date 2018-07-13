import subprocess
import re
import json
from lib import plotting, py_asp, helper, induction, abduction


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

# If there are more than 1 state at each T

start_state = states[0][1]

wall_list = induction.get_wall_list("clingo2.lp")

pos = induction.execute_pseudo_plan(start_state, actions, states, wall_list)

print("POS ", pos)
induction.add_new_pos(pos, "output2.las")
