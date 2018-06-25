
#pos({state_after(cell(1,2), 2)}, {}, {state_before(cell(1,1), 1). action(up, 1). move(cell(1,1), cell(1,2)). wall(cell(0,0)). wall(cell(0,1)). wall(cell(1,0)). }).

cell(cell(1..6, 1..6)).

adjacent(cell(X,Y),cell(X+1,Y)) :- cell(cell(X,Y)), cell(cell(X+1,Y)).
adjacent(cell(X+1,Y),cell(X,Y)) :- cell(cell(X,Y)), cell(cell(X+1,Y)).
adjacent(cell(X,Y+1),cell(X,Y)) :- cell(cell(X,Y)), cell(cell(X,Y+1)).
adjacent(cell(X,Y),cell(X,Y+1)) :- cell(cell(X,Y)), cell(cell(X,Y+1)).
agent_at(cell(10,1),1).
wall(C1, C2) :- wall(C2, C1).

#modeh(state_after(var(cell), var(time))).
#modeb(1, state_before(var(cell), var(time))).
#modeb(1, move(var(cell), var(cell))).
#modeb(1, adjacent(var(cell), var(cell)), (symmetric, anti_reflexive)).
#modeb(1, action(var(action), var(time))).
#modeb(1, wall(var(cell), var(cell)), (symmetric, anti_reflexive)).
time(1..20).
