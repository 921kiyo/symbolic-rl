import subprocess
import re
import json

try:
    planning_actions = subprocess.check_output(["clingo", "-n", "0", "maze_new.lp", "--opt-mode=opt", "--outf=2"], universal_newlines=True)
except subprocess.CalledProcessError as e:
    planning_actions = e.output
    # When Clingo returns UNSATISFIABLE
    # print(e)
    # print(e.output)

json_plan = json.loads(planning_actions)

size_asp = len(json_plan["Call"][0]["Witnesses"])
print(json_plan["Call"][0]["Witnesses"][size_asp-1]["Value"])
