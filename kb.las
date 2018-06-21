cell(cell(1..19, 1..10)).
adjacent(cell(X,Y),cell(X+1,Y)) :- cell(cell(X,Y)), cell(cell(X+1,Y)).
adjacent(cell(X+1,Y),cell(X,Y)) :- cell(cell(X,Y)), cell(cell(X+1,Y)).
adjacent(cell(X,Y+1),cell(X,Y)) :- cell(cell(X,Y)), cell(cell(X,Y+1)).
adjacent(cell(X,Y),cell(X,Y+1)) :- cell(cell(X,Y)), cell(cell(X,Y+1)).
agent_at(cell(10,1),1).
wall(C1, C2) :- wall(C2, C1).

#modeh(valid_move(var(cell), var(time))).
#modeb(1, adjacent(var(cell), var(cell)), (symmetric, anti_reflexive)).
#modeb(1, agent_at(var(cell), var(time))).
#modeb(1, wall(var(cell), var(cell)), (symmetric, anti_reflexive)).


wall(cell(4,2),cell(5,2)).
wall(cell(4,3),cell(5,3)).
wall(cell(4,4),cell(5,4)).
wall(cell(4,5),cell(5,5)).
wall(cell(4,6),cell(5,6)).

wall(cell(5,2),cell(6,2)).
wall(cell(5,3),cell(6,3)).
wall(cell(5,4),cell(6,4)).
wall(cell(5,5),cell(6,5)).
wall(cell(5,6),cell(6,6)).
...
