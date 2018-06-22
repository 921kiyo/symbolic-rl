#pos({state_after(cell(1,2), 2), state_before(cell(1,1), 1), action(0, 1)}, {}).

cell(cell(1..19, 1..10)).
adjacent(cell(X,Y),cell(X+1,Y)) :- cell(cell(X,Y)), cell(cell(X+1,Y)).
adjacent(cell(X+1,Y),cell(X,Y)) :- cell(cell(X,Y)), cell(cell(X+1,Y)).
adjacent(cell(X,Y+1),cell(X,Y)) :- cell(cell(X,Y)), cell(cell(X,Y+1)).
adjacent(cell(X,Y),cell(X,Y+1)) :- cell(cell(X,Y)), cell(cell(X,Y+1)).
agent_at(cell(10,1),1).
wall(C1, C2) :- wall(C2, C1).

already_visited_cell(C,T) :-
  time(T),
  T2 < T,
  agent_at(C, T2).


#modeh(valid_move(var(cell), var(time))).
#modeb(1, adjacent(var(cell), var(cell)), (symmetric, anti_reflexive)).
#modeb(1, agent_at(var(cell), var(time))).
#modeb(1, wall(var(cell), var(cell)), (symmetric, anti_reflexive)).
#modeb(1, already_visited_cell(var(cell), var(time)), (positive)).
time(1..40).
