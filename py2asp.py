def agent_before(x, y, t):
    return "agent_at_before"+ "((" + str(x) + ", " + str(y) + "), " + str(t) + ")."

def agent_after(x, y, t):
    return "agent_at_after"+ "((" + str(x) + ", " + str(y) + "), " + str(t) + ")."

def reward(r, t):
    return "reward(" + str(r) + ", " + str(t) + ")."

def action(a, t):
    return "action(" + str(a) + ", " + str(t) + ")."

def positive_example(next_state, previous_state, action):
    return "#pos({state_after((" + str(int(next_state[0])) + "," + str(int(next_state[1])) + "))}, {}, {state_before((" + str(int(previous_state[0])) + "," + str(int(previous_state[1]))+ ")). action(" + action + ").})."
