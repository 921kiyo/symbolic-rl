cell((0..19, 0..8)).

% (X+1,Y) is right next to (X,Y)
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).

adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).

adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).

% (X,Y) is above (X,Y+1)
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

#modeh(state_after(var(cell))).

#modeb(1, adjacent(const(action), var(cell), var(cell))).
#modeb(1, state_before(var(cell)), (positive)).
#modeb(1, action(const(action)),(positive)).
#modeb(1, wall(var(cell))).
#modeb(1, link(var(cell), var(cell))).
#modeb(1, cell(var(cell)), (positive)).
#max_penalty(100).

#constant(action, right).
#constant(action, left).
#constant(action, down).
#constant(action, up).
#constant(action, non).

#pos({state_after((17,3))}, {state_after((10,4)),state_after((9,5)),state_after((8,4)),state_after((9,3)),state_after((9,4))}, {state_before((9,4)). action(up). link((9,3), (17,3)). wall((10, 4)). wall((8, 4)). }).
#pos({state_after((1,5))}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,6))}, {state_before((1,6)). action(up). wall((1, 7)). wall((0, 6)). }).
