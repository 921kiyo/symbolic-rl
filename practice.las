#pos({state_after((1,2))}, {}, {state_before((1,2), up). action(up).}).


cell((1..6, 1..6)).

% adjacent_west(left,(X+1,Y),(X,Y)) :- cell((X,Y)), cell((X+1,Y)).
% adjacent_east(right, (X,Y),(X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
% adjacent_south(down, (X,Y+1),(X,Y)) :- cell((X,Y)), cell((X,Y+1)).
% adjacent_north(up, (X,Y),(X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).
%
#modeb(1, adjacent_east(const(r), var(cell), var(cell))).
#modeb(1, adjacent_west(const(l), var(cell), var(cell))).
#modeb(1, adjacent_south(const(d), var(cell), var(cell))).
#modeb(1, adjacent_north(const(u), var(cell), var(cell))).


#modeh(state_after(var(cell))).
#modeb(1, state_before(var(cell), const(action))).
#modeb(1, action(var(ac))).


#constant(action, right).
#constant(action, left).
#constant(action, down).
#constant(action, up).
