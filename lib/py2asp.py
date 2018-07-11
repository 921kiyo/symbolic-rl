def state_before(x, y):
    return "state_before"+ "((" + str(x) + ", " + str(y) + "))."

def state_after(x, y):
    return "state_after"+ "((" + str(x) + ", " + str(y) + "))"

def reward(r, t):
    return "reward(" + str(r) + ", " + str(t) + ")."

def action(a, t):
    return "action(" + str(a) + ", " + str(t) + ")."

def already_in_background(wall, background):
    wall = "wall({})".format(str(wall))
    with open(background, "r") as searchfile:
        for line in searchfile:
            if(wall in line):
                searchfile.close()
                return True
    return False

def add_each_wall(wall, background):
    with open(background, "a") as myfile:
        myfile.write(wall)
        print("added..", wall)

def add_walls(previous_state, wall_list):
    x = int(previous_state[0])
    y = int(previous_state[1])
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

def get_exclusions(previous_state, next_state):
    previous_x = int(previous_state[0])
    previous_y = int(previous_state[1])
    next_x = int(next_state[0])
    next_y = int(next_state[1])

    exc1_x, exc1_y = previous_x+1, previous_y
    exc2_x, exc2_y = previous_x, previous_y+1
    exc3_x, exc3_y = previous_x-1, previous_y
    exc4_x, exc4_y = previous_x, previous_y-1
    exc5_x, exc5_y = previous_x, previous_y

    if(next_x == exc1_x and next_y == exc1_y):
        return "state_after((" + str(exc2_x) + "," + str(exc2_y) + \
                ")),state_after((" + str(exc3_x) + "," + str(exc3_y) + \
                ")),state_after((" + str(exc4_x) + "," + str(exc4_y) + \
                ")),state_after((" + str(exc5_x) + "," + str(exc5_y) + "))"

    elif(next_x == exc2_x and next_y == exc2_y):
        return "state_after((" + str(exc1_x) + "," + str(exc1_y) + \
                ")),state_after((" + str(exc3_x) + "," + str(exc3_y) + \
                ")),state_after((" + str(exc4_x) + "," + str(exc4_y) + \
                ")),state_after((" + str(exc5_x) + "," + str(exc5_y) + "))"

    elif(next_x == exc3_x and next_y == exc3_y):
        return "state_after((" + str(exc1_x) + "," + str(exc1_y) + \
                ")),state_after((" + str(exc2_x) + "," + str(exc2_y) + \
                ")),state_after((" + str(exc4_x) + "," + str(exc4_y) + \
                ")),state_after((" + str(exc5_x) + "," + str(exc5_y) + "))"

    elif(next_x == exc4_x and next_y == exc4_y):
        return "state_after((" + str(exc1_x) + "," + str(exc1_y) + \
                ")),state_after((" + str(exc2_x) + "," + str(exc2_y) + \
                ")),state_after((" + str(exc3_x) + "," + str(exc3_y) + \
                ")),state_after((" + str(exc5_x) + "," + str(exc5_y) + "))"

    elif(next_x == exc5_x and next_y == exc5_y):
        return "state_after((" + str(exc1_x) + "," + str(exc1_y) + \
                ")),state_after((" + str(exc2_x) + "," + str(exc2_y) + \
                ")),state_after((" + str(exc3_x) + "," + str(exc3_y) + \
                ")),state_after((" + str(exc4_x) + "," + str(exc4_y) + "))"

def positive_example(next_state, previous_state, action, wall_list):
    walls = add_walls(previous_state, wall_list)
    exclusions = get_exclusions(previous_state, next_state)
    pos = "#pos({state_after((" + str(int(next_state[0])) + "," + str(int(next_state[1])) + "))}, {" + exclusions + "}, {state_before((" + str(int(previous_state[0])) + "," + str(int(previous_state[1]))+ ")). action(" + action + "). " + walls + "})."
    return pos
