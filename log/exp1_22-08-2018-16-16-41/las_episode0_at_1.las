%ILASP

%state_after(V1) :- adjacent(right, V0, V1), wall(V0).
%state_after(V0) :- adjacent(left, V0, V1), state_before(V1), action(left), not wall(V0).
%state_after(V1) :- adjacent(down, V0, V1), state_before(V0), action(up), not wall(V1).
cell((0..19, 0..8)).
% (X+1,Y) is right next to (X,Y)
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).

adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).

% (X,Y+1) is above next to (X,Y)
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).

adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

#modeh(state_after(var(cell))).

#modeb(1, adjacent(const(action), var(cell), var(cell)), (positive)).
#modeb(1, state_before(var(cell)), (positive)).
#modeb(1, action(const(action)), (positive)).
#modeb(1, wall(var(cell))).

#max_penalty(50).

#constant(action, right).
#constant(action, left).
#constant(action, down).
#constant(action, up).
#pos({}, {state_after((7,6)),state_after((6,5)),state_after((7,4)),state_after((7,5))}, {state_before((7,5)).action(right).wall((7, 4)). }).
#pos({state_after((2,5))}, {state_after((4,5)),state_after((3,6)),state_after((3,4)),state_after((3,5))}, {state_before((3,5)).action(left).}).
#pos({}, {state_after((8,6)),state_after((7,5)),state_after((8,4)),state_after((8,5))}, {state_before((8,5)).action(right).wall((8, 4)). }).
#pos({}, {state_after((9,6)),state_after((8,5)),state_after((9,4)),state_after((9,5))}, {state_before((9,5)).action(right).wall((9, 4)). }).
#pos({}, {state_after((10,6)),state_after((9,5)),state_after((10,4)),state_after((10,5))}, {state_before((10,5)).action(right).wall((10, 4)). }).
#pos({}, {state_after((12,5)),state_after((11,6)),state_after((10,5)),state_after((11,4)),state_after((12,5))}, {state_before((11,5)).action(up).wall((11, 4)). }).
#pos({}, {state_after((12,5)),state_after((11,6)),state_after((11,4)),state_after((11,5))}, {state_before((11,5)).action(left).wall((11, 4)). }).
#pos({}, {state_after((10,6)),state_after((9,5)),state_after((10,4)),state_after((10,5))}, {state_before((10,5)).action(right).wall((10, 4)). }).
#pos({}, {state_after((11,6)),state_after((10,5)),state_after((11,4)),state_after((11,5))}, {state_before((11,5)).action(right).wall((11, 4)). }).
#pos({}, {state_after((13,5)),state_after((12,6)),state_after((11,5)),state_after((12,5))}, {state_before((12,5)).action(up).}).
#pos({}, {state_after((13,4)),state_after((12,5)),state_after((11,4)),state_after((12,3))}, {state_before((12,4)).action(right).wall((13, 4)). wall((11, 4)). }).
#pos({}, {state_after((13,4)),state_after((12,5)),state_after((11,4)),state_after((12,3))}, {state_before((12,4)).action(right).wall((13, 4)). wall((11, 4)). }).
#pos({}, {state_after((13,4)),state_after((12,5)),state_after((11,4)),state_after((12,3))}, {state_before((12,4)).action(left).wall((13, 4)). wall((11, 4)). }).
#pos({}, {state_after((13,4)),state_after((12,5)),state_after((11,4)),state_after((12,3))}, {state_before((12,4)).action(right).wall((13, 4)). wall((11, 4)). }).
#pos({}, {state_after((13,4)),state_after((12,5)),state_after((11,4)),state_after((12,3))}, {state_before((12,4)).action(left).wall((13, 4)). wall((11, 4)). }).
#pos({}, {state_after((13,4)),state_after((12,5)),state_after((11,4)),state_after((12,3))}, {state_before((12,4)).action(left).wall((13, 4)). wall((11, 4)). }).
#pos({}, {state_after((13,4)),state_after((12,5)),state_after((11,4)),state_after((12,3))}, {state_before((12,4)).action(left).wall((13, 4)). wall((11, 4)). }).
#pos({}, {state_after((13,4)),state_after((12,5)),state_after((11,4)),state_after((12,3))}, {state_before((12,4)).action(right).wall((13, 4)). wall((11, 4)). }).
#pos({}, {state_after((13,4)),state_after((12,5)),state_after((11,4)),state_after((12,3))}, {state_before((12,4)).action(right).wall((13, 4)). wall((11, 4)). }).
#pos({}, {state_after((13,4)),state_after((12,5)),state_after((11,4)),state_after((12,3))}, {state_before((12,4)).action(right).wall((13, 4)). wall((11, 4)). }).
#pos({}, {state_after((13,4)),state_after((12,5)),state_after((11,4)),state_after((12,3))}, {state_before((12,4)).action(left).wall((13, 4)). wall((11, 4)). }).
#pos({}, {state_after((13,4)),state_after((12,5)),state_after((11,4)),state_after((12,3))}, {state_before((12,4)).action(right).wall((13, 4)). wall((11, 4)). }).
#pos({}, {state_after((13,4)),state_after((12,5)),state_after((11,4)),state_after((12,3))}, {state_before((12,4)).action(left).wall((13, 4)). wall((11, 4)). }).
#pos({}, {state_after((13,4)),state_after((12,5)),state_after((11,4)),state_after((12,3))}, {state_before((12,4)).action(left).wall((13, 4)). wall((11, 4)). }).
#pos({}, {state_after((13,4)),state_after((12,5)),state_after((11,4)),state_after((12,3))}, {state_before((12,4)).action(right).wall((13, 4)). wall((11, 4)). }).
#pos({}, {state_after((13,4)),state_after((12,5)),state_after((11,4)),state_after((12,3))}, {state_before((12,4)).action(right).wall((13, 4)). wall((11, 4)). }).
#pos({}, {state_after((13,4)),state_after((12,5)),state_after((11,4)),state_after((12,3))}, {state_before((12,4)).action(right).wall((13, 4)). wall((11, 4)). }).
#pos({}, {state_after((13,4)),state_after((12,5)),state_after((11,4)),state_after((12,3))}, {state_before((12,4)).action(right).wall((13, 4)). wall((11, 4)). }).
#pos({}, {state_after((13,4)),state_after((12,5)),state_after((11,4)),state_after((12,3))}, {state_before((12,4)).action(right).wall((13, 4)). wall((11, 4)). }).
#pos({}, {state_after((13,4)),state_after((12,5)),state_after((11,4)),state_after((12,3))}, {state_before((12,4)).action(left).wall((13, 4)). wall((11, 4)). }).
#pos({}, {state_after((13,4)),state_after((12,5)),state_after((11,4)),state_after((12,3))}, {state_before((12,4)).action(right).wall((13, 4)). wall((11, 4)). }).
#pos({}, {state_after((13,4)),state_after((12,5)),state_after((11,4)),state_after((12,3))}, {state_before((12,4)).action(left).wall((13, 4)). wall((11, 4)). }).
#pos({}, {state_after((13,4)),state_after((12,5)),state_after((11,4)),state_after((12,3))}, {state_before((12,4)).action(left).wall((13, 4)). wall((11, 4)). }).
#pos({}, {state_after((13,4)),state_after((12,5)),state_after((11,4)),state_after((12,3))}, {state_before((12,4)).action(left).wall((13, 4)). wall((11, 4)). }).
#pos({}, {state_after((13,4)),state_after((12,5)),state_after((11,4)),state_after((12,3))}, {state_before((12,4)).action(right).wall((13, 4)). wall((11, 4)). }).
#pos({}, {state_after((13,4)),state_after((12,5)),state_after((11,4)),state_after((12,3))}, {state_before((12,4)).action(left).wall((13, 4)). wall((11, 4)). }).
#pos({}, {state_after((13,4)),state_after((12,5)),state_after((11,4)),state_after((12,3))}, {state_before((12,4)).action(left).wall((13, 4)). wall((11, 4)). }).
#pos({state_after((12,4))}, {state_after((13,4)),state_after((12,5)),state_after((11,4)),state_after((12,3))}, {state_before((12,4)).action(left).wall((13, 4)). wall((11, 4)). }).
#pos({state_after((2,4))}, {state_after((3,5)),state_after((2,6)),state_after((1,5)),state_after((2,5))}, {state_before((2,5)).action(up).}).
