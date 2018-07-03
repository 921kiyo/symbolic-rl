
% cell((1..13, 1..13)).
%
% adjacent(left,(X+1,Y),(X,Y)) :- cell((X,Y)), cell((X+1,Y)).
% adjacent(right, (X,Y),(X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
% adjacent(down, (X,Y+1),(X,Y)) :- cell((X,Y)), cell((X,Y+1)).
% adjacent(up, (X,Y),(X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).
% adjacent(non, (X,Y),(X,Y)) :- cell((X,Y)), cell((X,Y)).
%
% #modeh(state_after(var(cell))).
%
% #modeb(1, adjacent(const(action), var(cell), var(cell))).
% #modeb(1, state_before(var(cell))).
% #modeb(1, action(const(action))).
% #maxv(3).
%
% #constant(action, right).
% #constant(action, left).
% #constant(action, down).
% #constant(action, up).
% #constant(action, non).

cell((0..6, 0..5)).

adjacent(left,(X+1,Y),(X,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(right, (X,Y),(X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y)) :- cell((X,Y)), cell((X,Y+1)).
adjacent(up, (X,Y),(X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

#modeh(state_after(var(cell))).

#modeb(1, adjacent(const(action), var(cell), var(cell))).
#modeb(1, state_before(var(cell))).
#modeb(1, action(const(action))).
#modeb(1, wall(var(cell))).


#constant(action, right).
#constant(action, left).
#constant(action, down).
#constant(action, up).
