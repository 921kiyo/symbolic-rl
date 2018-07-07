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
    hypothesis = hypothesis.replace("action(up)", "action(up, T)")
    hypothesis = hypothesis.replace("action(down)", "action(down, T)")
    hypothesis = hypothesis.replace("action(right)", "action(right, T)")
    hypothesis = hypothesis.replace("action(left)", "action(left, T)")
    hypothesis = hypothesis.replace("action(non)", "action(non, T)")
    hypothesis += "\n"
    return hypothesis


def make_lp(filename, background, clingofile, start_state, goal_state, time_range):
    # Run ILASP to get H
    hypothesis = subprocess.check_output(["ILASP", "--version=2i", filename, "-ml=10"], universal_newlines=True)
    # hypothesis = "XXX"
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
    cell = "cell((0..6, 0..5)).\n"
    # adjacent definitions
    given = ":- state_at(V1, T), state_at(V2, T), V1 != V2.\n" +\
    "adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).\n\
    adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).\n\
    adjacent(up, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).\n\
    adjacent(down,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).\n"

    # optimisation statement
    minimize = "#minimize{1, X, T: action(X,T)}.\n"
    kb = start_state + actions + show + goal + time + cell + minimize + given
    # Send H and BK to clingofile
    send_kb(kb, clingofile)
    send_kb(hypothesis, clingofile)
    send_background(background, clingofile)

def run_clingo(clingofile):
    # Get planning using clingo
    # planning_actions = subprocess.check_output(["clingo", "-n", "0", clingofile, "--outf=2"], universal_newlines=True)
    # planning_actions = convert_state_time(planning_actions)
    # Execute the planning
    # execute_planning(planning_actionss)
    
    # explore a little bit

    print("run clingo")
    pass

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
