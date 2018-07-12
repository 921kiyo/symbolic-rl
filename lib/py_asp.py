def state_before(x, y):
    return "state_before"+ "((" + str(x) + "," + str(y) + "))."

def state_after(x, y):
    return "state_after"+ "((" + str(x) + "," + str(y) + "))"

def state_at(x,y,t):
    x = str(int(x))
    y = str(int(y))
    t = str(int(t))
    return "state_at(({},{}),{})".format(x,y,t)

def reward(r, t):
    return "reward(" + str(r) + ", " + str(t) + ")."

def action(a, t):
    return "action(" + str(a) + ", " + str(t) + ")."

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
