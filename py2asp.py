def agent_before(x, y, t):
    return "agent_at_before"+ "(cell(" + str(x) + ", " + str(y) + "), " + str(t) + ")."

def agent_after(x, y, t):
    return "agent_at_after"+ "(cell(" + str(x) + ", " + str(y) + "), " + str(t) + ")."

def reward(r, t):
    return "reward(" + str(r) + ", " + str(t) + ")."

def action(a, t):
    return "action(" + str(a) + ", " + str(t) + ")."
