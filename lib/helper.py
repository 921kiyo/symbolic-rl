import os
from lib import py2asp
import subprocess

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
        print(filename + " could not be found...")
        pass

def copy_las_base(filename):
    with open("las_base.las") as f:
        with open(filename, "w") as out:
            for line in f:
                out.write(line)

def convert_las_asp(hypothesis):
    hypothesis = hypothesis.replace("Pre-processing", "%Pre-processing")
    hypothesis = hypothesis.replace("Solve", "%Solve")
    hypothesis = hypothesis.replace("Total", "%Total")
    hypothesis = hypothesis.replace("state_after(V1)", "state_at(V1, T+1)")
    hypothesis = hypothesis.replace("state_after(V0)", "state_at(V0, T+1)")
    hypothesis = hypothesis.replace("state_before(V1)", "state_at(V1, T)")
    hypothesis = hypothesis.replace("state_before(V0)", "state_at(V0, T)")
    hypothesis = hypothesis.replace(":-", ":- time(T),")
    hypothesis += "\n"
    return hypothesis


def execute_planning(filename, background, clingofile):
    # Run ILASP to get H
    hypothesis = subprocess.check_output(["ILASP", "--version=2i", filename, "-ml=10"], universal_newlines=True)

    # Convert syntax of H for ASP solver
    hypothesis = convert_las_asp(hypothesis)

    # starting point
    # goal point
    # action choice rule
    # show, minimizes
    # goal specification
    # time range
    # cell range
    # adjacent definitions
    kb = "XXXX"
    # Send H and BK to clingofile
    send_kb(kb, clingofile)
    send_kb(hypothesis, clingofile)
    
    send_background(background, clingofile)
    exit(1)
    # Get planning using clingo
    # planning_actions = subprocess.check_output(["clingo", "--n", "0", clingofile, "--outf=2"], universal_newlines=True)
    # planning_actions = convert_state_time(planning_actions)
    # Execute the planning
    # execute_planning(planning_actionss)

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
