def agent_before(x, y, t):
    return "agent_at_before"+ "((" + str(x) + ", " + str(y) + "), " + str(t) + ")."

def agent_after(x, y, t):
    return "agent_at_after"+ "((" + str(x) + ", " + str(y) + "), " + str(t) + ")."

def reward(r, t):
    return "reward(" + str(r) + ", " + str(t) + ")."

def action(a, t):
    return "action(" + str(a) + ", " + str(t) + ")."

def add_walls2(previous_state, env):
    walls = env.unwrapped.game.getSprites('wall')
    print(walls)

def add_walls(previous_state):
    x = previous_state[0]
    y = previous_state[1]
    x = int(x)
    y = int(y)
    if(x == 1 and y == 4):
        return "wall((0,4)). wall((1,5)). :- wall((1,3)). :- wall((2,4))."
    elif(x == 2 and y == 4):
        return "wall((2,3)). wall((2,5)). :- wall((1,4)). :- wall((3,4))."
    elif(x == 3 and y == 4):
        return "wall((3,5)). :- wall((2,4)). :- wall((4,4)). :- wall((3,3))."
    elif(x == 4 and y == 4):
        return "wall((4,3)). wall((4,5)). :- wall((3,4)). :- wall((5,4))."
    elif(x == 5 and y == 4):
        return "wall((6,4)). wall((5,5)). :- wall((4,4)). :- wall((5,3))."
    elif(x == 5 and y == 3):
        return "wall((4,3)). wall((6,3)). wall((5,2)). :- wall((5,4))."
    elif(x == 3 and y == 3):
        return "wall((3,2)). wall((2,3)). wall((4,3)). :- wall((3,4))."
    elif(x == 1 and y == 3):
        return "wall((0,3)). wall((2,3)). :- wall((1,2)). :- wall((1,4))."
    elif(x == 1 and y == 2):
        return "wall((0,2)). wall((2,2)). :- wall((1,1)). :- wall((1,3))."
    elif(x == 1 and y == 1):
        return "wall((1,0)). wall((0,1)). :- wall((2,1)). :- wall((1,2))."
    elif(x == 2 and y == 1):
        return "wall((2,0)). wall((2,2)). :- wall((1,1)). :- wall((3,1))."
    elif(x == 3 and y == 1):
        return "wall((3,0)). wall((3,2)). :- wall((2,1)). :- wall((4,1))."
    elif(x == 4 and y == 1):
        return "wall((4,0)). wall((4,2)). :- wall((3,1)). :- wall((5,1))."
    elif(x == 5 and y == 1):
        return "wall((5,0)). wall((6,1)). wall((5,2)). :- wall((4,1))."
    else:
        return ""

 # 0123456
 # wwwwwww 0
 # w++++gw 1
 # w+wwwww 2
 # w+w+w+w 3
 # wA++++w 4
 # wwwwwww 5

def get_other_actions(action):
    if(action == "up"): # UP
        return "down", "left", "right", "non"
    elif(action == "down"): # DOWN
        return "up", "left", "right", "non"
    elif(action == "left"): # LEFT
        return "up", "down", "right", "non"
    elif(action == "right"): # RIGHT
        return "up", "down", "left", "non"
    elif(action == "non"): # NON
        return "up", "down", "right", "left"

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

def positive_example(next_state, previous_state, action):
    walls = ""
    walls = add_walls(previous_state)
    exclusions = get_exclusions(previous_state, next_state)
    pos = "#pos({state_after((" + str(int(next_state[0])) + "," + str(int(next_state[1])) + "))}, {" + exclusions + "}, {state_before((" + str(int(previous_state[0])) + "," + str(int(previous_state[1]))+ ")). action(" + action + "). " + walls + "})."
    # act1, act2, act3, act4 = get_other_actions(action)

    return pos
