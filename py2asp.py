def agent_before(x, y, t):
    return "agent_at_before"+ "((" + str(x) + ", " + str(y) + "), " + str(t) + ")."

def agent_after(x, y, t):
    return "agent_at_after"+ "((" + str(x) + ", " + str(y) + "), " + str(t) + ")."

def reward(r, t):
    return "reward(" + str(r) + ", " + str(t) + ")."

def action(a, t):
    return "action(" + str(a) + ", " + str(t) + ")."

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
        return "wall((3,2)). wall((1,3)). wall((4,3)). :- wall((3,4))."
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
    else:
        return ""
 # 0123456
 # wwwwwww 0
 # w+++Agw 1
 # w+wwwww 2
 # w+w+w+w 3
 # w+++++w 4
 # wwwwwww 5

def positive_example(next_state, previous_state, action):
    walls = ""
    walls = add_walls(previous_state)
    pos = "#pos({state_after((" + str(int(next_state[0])) + "," + str(int(next_state[1])) + "))}, {}, {state_before((" + str(int(previous_state[0])) + "," + str(int(previous_state[1]))+ ")). action(" + action + "). " + walls + "})."
    return pos
