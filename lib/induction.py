import os, subprocess
from lib import plotting, py_asp, helper, abduction
import config as cf
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
    Output: [(X1,Y1), (X2,Y2), ...] list of tuples
    '''
    wall_list = []
    with open(file) as f:
        for line in f:
            if "wall((" in line:
                x,_,_ = abduction.get_X(line)
                y,_,_ = abduction.get_Y(line)
                wall_list.append((x,y))
    return wall_list

def get_exclusions(previous_state, next_state):
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
    else:
        return True, "state_after((" + str(exc1_x) + "," + str(exc1_y) + \
                ")),state_after((" + str(exc2_x) + "," + str(exc2_y) + \
                ")),state_after((" + str(exc3_x) + "," + str(exc3_y) + \
                ")),state_after((" + str(exc4_x) + "," + str(exc4_y) + \
                ")),state_after((" + str(exc5_x) + "," + str(exc5_y) + "))"

def get_inc_exc(hypothesis, state_before, state_after, action, walls, cell_range):
    helper.silentremove(cf.BASE_DIR, cf.GROUNDING)
    
    helper.append_to_file(hypothesis, cf.GROUNDING_DIR)
    helper.append_to_file(state_before+"\n", cf.GROUNDING_DIR)
    helper.append_to_file(action+"\n", cf.GROUNDING_DIR)
    helper.append_to_file(cf.ADJACENT, cf.GROUNDING_DIR)
    helper.append_to_file(cell_range, cf.GROUNDING_DIR)
    show = "#show state_after/1.\n"
    helper.append_to_file(show, cf.GROUNDING_DIR)

    for wall in walls:
        wall = "wall(" + str(wall) + ").\n"
        helper.append_to_file(wall, cf.GROUNDING_DIR)
    answer_sets = abduction.run_clingo(cf.GROUNDING_DIR)

    # The current hypothesis DOES predict the agent is there other than state_after,
    # then they are exclusions
    exclusions = ""
    for sa in answer_sets:
        if(state_after != sa):
            exclusions = exclusions + sa + ","

    # The current hypothesis DOES NOT predict the agent is there other than state_after,
    # then it is inclusion
    inclusion = ""
    if(state_after not in answer_sets):
        inclusion = inclusion + state_after

    if exclusions != "":
        return inclusion, exclusions[0:-1]
    else:
        return inclusion, exclusions

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
            exclusion_list.append(state_after)

    # Take each element in exclcusion_list and concatinate them in string
    exclusions = ""
    for exclusion in exclusion_list:
        exclusions += exclusion
        exclusions += ", "
    if exclusions == "":
        return exclusions
    else:
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
    else:
        print("action is wrong")
        exit(1)

def get_link(previous_state, next_state, action):
    x,y = get_next_state(previous_state, action)
    next_x = int(next_state[0])
    next_y = int(next_state[1])
    return x,y,"link_start(({},{})). link_dest(({},{})). ".format(x,y,next_x,next_y)

def generate_extra_exclusions(state_at_before, state_at_after, states):
    x_before, _, _ = abduction.get_X(state_at_before)
    y_before, _, _ = abduction.get_Y(state_at_before)
    x_after, _, _ = abduction.get_X(state_at_after)
    y_after, _, _ = abduction.get_Y(state_at_after)
    state_before = py_asp.state_before(x_before, y_before)
    state_after = py_asp.state_after(x_after, y_after)
    # TODO is this correct way to do?? exclusion even in random action.
    exclusions = get_plan_exclusions(state_at_before, state_at_after, states)
    return exclusions

def generate_pos(hypothesis, previous_state, next_state, action, wall_list, cell_range, extra_exclusions=""):
    '''
    Generate a pos in the exploration phase

    Output: #pos({state_after((3,6))}, {state_after((4,6)), ...}, {state_before((3,6)). action(non). }).
    '''

    walls = add_surrounding_walls(int(previous_state[0]),int(previous_state[1]), wall_list)

    state_after_str = "state_after((" + str(int(next_state[0])) + "," + str(int(next_state[1])) + "))"
    state_before_str = "state_before((" + str(int(previous_state[0])) + "," + str(int(previous_state[1]))+ "))."
    action_str = "action(" + action + ")."

    all_walls = get_seen_walls(cf.CLINGOFILE)

    sub_exclusion = ""
    inclusion = ""
    inclusion, sub_exclusion = get_inc_exc(hypothesis, state_before_str, state_after_str, action_str, all_walls, cell_range)

    # If the agent moved to a cell other than adjacent, there must be a link
    link_detected, exclusions = get_exclusions(previous_state, next_state)

    all_exclusions = exclusions
    if sub_exclusion != "":
        all_exclusions = all_exclusions + "," + sub_exclusion
    if extra_exclusions != "":
        all_exclusions = all_exclusions + "," + extra_exclusions 

    if link_detected:
        predict_x, predict_y, link = get_link(previous_state, next_state, action)
        if not cf.ALREADY_LINK:
            helper.append_to_file(link+"\n", cf.CLINGOFILE)
            helper.append_to_file(link+"\n", cf.LASFILE)
            cf.ALREADY_LINK = True

        # TODO double-check if the exclusions for pos1 is fine
        pos1 = "#pos({"+ "state_after(({},{}))".format(predict_x,predict_y) +"}, {""}, {" + state_before_str + action_str + walls + "})."
        pos2 = "#pos({"+ inclusion +"}, {" + all_exclusions + "}, {" + "state_before(({},{})).".format(predict_x,predict_y) + action_str + walls + "})."
        helper.append_to_file(pos1+"\n", cf.LASFILE)
        helper.append_to_file(pos2+"\n", cf.LASFILE)
        return pos1, pos2, link

    pos = "#pos({"+ inclusion +"}, {" + all_exclusions + "}, {" + state_before_str + action_str + walls + "})."
    helper.append_to_file(pos+"\n", cf.LASFILE)
    return pos, None, None

def copy_las_base(height, width, lasfile, is_link=False):
    '''
    make a lasfile for ILASP
    '''

    cell = "cell((0..{}, 0..{})).\n".format(width, height)
    with open(lasfile, "a") as base:
        base.write(cell)
        if is_link == True:
            link_start = "#modeb(1, link_start(var(cell)), (positive)).\n"
            link_dest = "#modeb(1, link_dest(var(cell)), (positive)).\n"
            base.write(link_start)
            base.write(link_dest)

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
    # Hardcoded best H
    hypothesis = "state_after(V0) :- adjacent(right, V0, V1), state_before(V1), action(right), not wall(V0).\nstate_after(V0) :- adjacent(left, V0, V1), state_before(V1), action(left), not wall(V0).\nstate_after(V0) :- adjacent(down, V0, V1), state_before(V1), action(down), not wall(V0).\nstate_after(V0) :- adjacent(up, V0, V1), state_before(V1), action(up), not wall(V0)."

    try:
        # ILASP --version=2i output.las -ml=10 -nc --clingo5 --clingo "clingo5 --opt-strat=usc,stratify"
        # Clingo 5
        clingo5 = "clingo5 --opt-strat=usc,stratify"
        if cache_path:
            cache_path = "--cached-rel=" + cache_path
            hypothesis = subprocess.check_output(["ILASP", "--version=2i", filename, "-ml=10", "-q", "-nc", "--clingo5", "--clingo", clingo5, cache_path, "--max-rule-length=8"], universal_newlines=True)
        else:
            hypothesis = subprocess.check_output(["ILASP", "--version=2i", filename, "-ml=10", "-q", "-nc", "--clingo5", "--clingo", clingo5, "--max-rule-length=8"], universal_newlines=True)

    except subprocess.CalledProcessError as e:
        print("Error...", e.output)
        hypothesis = e.output
    return hypothesis

def check_ILASP_cover(hypothesis, pos, height, width, link):
    if pos == None:
        return True

    helper.silentremove(cf.BASE_DIR, cf.CHECK_LAS)

    output_las = os.path.join(cf.BASE_DIR, cf.CHECK_LAS)
    if link:
        helper.append_to_file(link, output_las)
    
    helper.append_to_file(hypothesis, output_las)
    helper.append_to_file(pos, output_las)
    copy_las_base(height, width, output_las)

    remove_mode(output_las)
    print("checking ILASP necessity...")
    hypothesis = run_ILASP(output_las)
    if hypothesis == "":
        return True
    else:
        return False

def remove_mode(output_file):
    with open(output_file, "r") as out:
        lines = out.readlines()
    with open(output_file, "w") as out:
        for line in lines:
            if line.startswith("#modeh") or line.startswith("#modeb"):
                continue
            else:
                out.write(line)