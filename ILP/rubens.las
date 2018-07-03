cell((0..6, 0..5)).

adjacent(left, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(right,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

#modeh(state_after(var(cell))).

#modeb(1, adjacent(const(action), var(cell), var(cell))).
#modeb(1, state_before(var(cell)), (positive)).
#modeb(1, action(const(action)),(positive)).
#modeb(1, wall(var(cell))).

#max_penalty(50).


#constant(action, right).
#constant(action, left).
#constant(action, down).
#constant(action, up).


#pos({state_after((1,3))}, {state_after((1,4))}, {state_before((1,4)). action(down). wall((0,4)). wall((1,5)). :- wall((1,3)). :- wall((2,4)).}).
#pos({state_after((1,2))}, {state_after((1,3))}, {state_before((1,3)). action(down). wall((0,3)). wall((2,3)). :- wall((1,2)). :- wall((1,4)).}).
#pos({state_after((1,1))}, {state_after((1,2))}, {state_before((1,2)). action(down). wall((0,2)). wall((2,2)). :- wall((1,1)). :- wall((1,3)).}).
#pos({state_after((1,1))}, {state_after((1,0))}, {state_before((1,1)). action(down). wall((1,0)). wall((0,1)). :- wall((2,1)). :- wall((1,2)).}).

% #pos({state_after((1,3))}, {state_after((1,2))}, {state_before((1,3)). action(down). wall((1,2)). wall((2,3)). :- wall((1,2)). :- wall((1,4)).}).

#pos({state_after((1,2))}, {state_after((1,1))}, {state_before((1,1)). action(up). wall((1,0)). wall((0,1)). :- wall((2,1)). :- wall((1,2)).}).
#pos({state_after((1,3))}, {state_after((1,2))}, {state_before((1,2)). action(up). wall((0,2)). wall((2,2)). :- wall((1,1)). :- wall((1,3)).}).
#pos({state_after((1,4))}, {state_after((1,3))}, {state_before((1,3)). action(up). wall((0,3)). wall((2,3)). :- wall((1,2)). :- wall((1,4)).}).
#pos({state_after((1,4))}, {state_after((1,3))}, {state_before((1,4)). action(up). wall((0,4)). wall((1,5)). :- wall((1,3)). :- wall((2,4)).}).

% This example ensures a rule that says we can't be where a wall is
% #neg({state_after((1,1))}, {}, {state_before((1,0)). action(down). wall((1,0)). wall((0,1)). :- wall((2,1)). :- wall((1,2)).}).
