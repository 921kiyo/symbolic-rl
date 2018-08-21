%ILASP

%state_after(V0) :- adjacent(right, V0, V1), action(left), wall(V1).
%state_after(V1) :- adjacent(up, V0, V1), action(up), wall(V0).
%state_after(V1) :- adjacent(right, V0, V1), state_before(V0), action(left), not wall(V1).
%state_after(V0) :- adjacent(right, V0, V1), state_before(V1), action(right), not wall(V0).
%state_after(V1) :- adjacent(down, V0, V1), state_before(V0), action(up), not wall(V1).
%state_after(V1) :- adjacent(up, V0, V1), state_before(V0), action(down), not wall(V1).
%state_after(V0) :- adjacent(left, V0, V1), state_before(V0), action(right), wall(V1).
%state_after(V0) :- adjacent(up, V0, V1), state_before(V0), action(down), wall(V1).
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
#pos({state_after((3,6))}, {state_after((4,5)),state_after((2,5)),state_after((3,4)),state_after((3,5))}, {state_before((3,5)).action(down).}).
#pos({state_after((2,6))}, {state_after((4,6)),state_after((3,7)),state_after((3,5)),state_after((3,6)),state_after((3,7))}, {state_before((3,6)).action(left).wall((3, 7)). }).
#pos({state_after((3,6))}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6))}, {state_before((2,6)).action(right).wall((2, 7)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6))}, {state_before((3,6)).action(right).wall((3, 7)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6))}, {state_before((4,6)).action(right).wall((4, 7)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((5,5)),state_after((5,6))}, {state_before((5,6)).action(left).wall((5, 7)). }).
#pos({state_after((4,6))}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,7))}, {state_before((4,6)).action(down).wall((4, 7)). }).
#pos({state_after((4,5))}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,6))}, {state_before((4,6)).action(up).wall((4, 7)). }).
#pos({}, {state_after((5,5)),state_after((3,5)),state_after((4,4)),state_after((4,5)),state_after((3,6)),state_after((2,6)),state_after((5,6)),state_after((4,3))}, {state_before((4,5)).action(down).wall((4, 4)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6))}, {state_before((4,6)).action(right).wall((4, 7)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({state_after((5,5))}, {state_after((6,5)),state_after((5,6)),state_after((4,5)),state_after((5,4)),state_after((5,6)),state_after((5,4))}, {state_before((5,5)).action(up).wall((5, 4)). }).
#pos({}, {state_after((6,5)),state_after((4,5)),state_after((5,4)),state_after((5,5))}, {state_before((5,5)).action(down).wall((5, 4)). }).
#pos({}, {state_after((5,7)),state_after((4,6)),state_after((5,5)),state_after((5,6))}, {state_before((5,6)).action(right).wall((5, 7)). }).
#pos({}, {state_after((7,6)),state_after((6,7)),state_after((5,6)),state_after((6,6)),state_after((4,5)),state_after((5,5))}, {state_before((6,6)).action(up).wall((6, 7)). }).
#pos({}, {state_after((7,5)),state_after((5,5)),state_after((6,4)),state_after((6,5))}, {state_before((6,5)).action(down).wall((6, 4)). }).
#pos({}, {state_after((6,7)),state_after((5,6)),state_after((6,5)),state_after((6,6))}, {state_before((6,6)).action(right).wall((6, 7)). }).
#pos({}, {state_after((8,6)),state_after((7,7)),state_after((7,5)),state_after((7,6))}, {state_before((7,6)).action(left).wall((7, 7)). }).
#pos({}, {state_after((7,6)),state_after((6,7)),state_after((6,5)),state_after((6,6))}, {state_before((6,6)).action(left).wall((6, 7)). }).
#pos({}, {state_after((5,7)),state_after((4,6)),state_after((5,5)),state_after((5,6))}, {state_before((5,6)).action(right).wall((5, 7)). }).
#pos({}, {state_after((7,6)),state_after((6,7)),state_after((5,6)),state_after((6,5))}, {state_before((6,6)).action(down).wall((6, 7)). }).
#pos({}, {state_after((7,6)),state_after((6,7)),state_after((5,6)),state_after((6,6)),state_after((4,5)),state_after((5,5))}, {state_before((6,6)).action(up).wall((6, 7)). }).
#pos({}, {state_after((7,5)),state_after((5,5)),state_after((6,4)),state_after((6,5))}, {state_before((6,5)).action(down).wall((6, 4)). }).
#pos({}, {state_after((7,6)),state_after((6,7)),state_after((6,5)),state_after((6,6))}, {state_before((6,6)).action(left).wall((6, 7)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((4,5)),state_after((6,5))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((5,4)),state_after((5,5))}, {state_before((5,5)).action(left).wall((5, 4)). }).
#pos({}, {state_after((5,5)),state_after((4,6)),state_after((4,4)),state_after((4,5))}, {state_before((4,5)).action(left).wall((4, 4)). }).
#pos({}, {state_after((4,5)),state_after((2,5)),state_after((3,4)),state_after((3,5))}, {state_before((3,5)).action(down).}).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5))}, {state_before((3,6)).action(down).wall((3, 7)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6))}, {state_before((3,6)).action(right).wall((3, 7)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6))}, {state_before((4,6)).action(right).wall((4, 7)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,5))}, {state_before((5,6)).action(down).wall((5, 7)). }).
#pos({}, {state_after((5,7)),state_after((4,6)),state_after((5,5)),state_after((5,6))}, {state_before((5,6)).action(right).wall((5, 7)). }).
#pos({}, {state_after((7,6)),state_after((6,7)),state_after((6,5)),state_after((6,6))}, {state_before((6,6)).action(left).wall((6, 7)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((5,5)),state_after((5,6))}, {state_before((5,6)).action(left).wall((5, 7)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((4,5)),state_after((4,6))}, {state_before((4,6)).action(left).wall((4, 7)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((3,5)),state_after((3,6))}, {state_before((3,6)).action(left).wall((3, 7)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6))}, {state_before((2,6)).action(right).wall((2, 7)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6))}, {state_before((3,6)).action(right).wall((3, 7)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5))}, {state_before((4,6)).action(down).wall((4, 7)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,6)),state_after((5,5)),state_after((6,5))}, {state_before((4,6)).action(up).wall((4, 7)). }).
#pos({}, {state_after((5,5)),state_after((3,5)),state_after((4,4)),state_after((4,5))}, {state_before((4,5)).action(down).wall((4, 4)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6))}, {state_before((4,6)).action(right).wall((4, 7)). }).
#pos({}, {state_after((5,7)),state_after((4,6)),state_after((5,5)),state_after((5,6))}, {state_before((5,6)).action(right).wall((5, 7)). }).
#pos({}, {state_after((7,6)),state_after((6,7)),state_after((5,6)),state_after((6,5))}, {state_before((6,6)).action(down).wall((6, 7)). }).
#pos({}, {state_after((6,7)),state_after((5,6)),state_after((6,5)),state_after((6,6))}, {state_before((6,6)).action(right).wall((6, 7)). }).
#pos({}, {state_after((7,7)),state_after((6,6)),state_after((7,5)),state_after((7,6))}, {state_before((7,6)).action(right).wall((7, 7)). }).
#pos({}, {state_after((9,6)),state_after((8,7)),state_after((7,6)),state_after((8,6)),state_after((4,5)),state_after((5,5)),state_after((6,5))}, {state_before((8,6)).action(up).wall((8, 7)). }).
#pos({}, {state_after((9,5)),state_after((8,6)),state_after((8,4)),state_after((8,5))}, {state_before((8,5)).action(left).wall((8, 4)). }).
#pos({}, {state_after((8,5)),state_after((6,5)),state_after((7,4)),state_after((7,5))}, {state_before((7,5)).action(down).wall((7, 4)). }).
#pos({}, {state_after((8,6)),state_after((7,7)),state_after((6,6)),state_after((7,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((8,5))}, {state_before((7,6)).action(up).wall((7, 7)). }).
#pos({}, {state_after((7,6)),state_after((6,5)),state_after((7,4)),state_after((7,5))}, {state_before((7,5)).action(right).wall((7, 4)). }).
#pos({}, {state_after((9,5)),state_after((8,6)),state_after((8,4)),state_after((8,5))}, {state_before((8,5)).action(left).wall((8, 4)). }).
#pos({}, {state_after((8,5)),state_after((7,6)),state_after((6,5)),state_after((7,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((8,5))}, {state_before((7,5)).action(up).wall((7, 4)). }).
#pos({}, {state_after((8,5)),state_after((7,6)),state_after((7,4)),state_after((7,5))}, {state_before((7,5)).action(left).wall((7, 4)). }).
#pos({}, {state_after((7,5)),state_after((6,6)),state_after((6,4)),state_after((6,5))}, {state_before((6,5)).action(left).wall((6, 4)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((5,4)),state_after((5,5))}, {state_before((5,5)).action(left).wall((5, 4)). }).
#pos({}, {state_after((5,5)),state_after((4,6)),state_after((4,4)),state_after((4,5))}, {state_before((4,5)).action(left).wall((4, 4)). }).
#pos({}, {state_after((4,5)),state_after((2,5)),state_after((3,4)),state_after((3,5))}, {state_before((3,5)).action(down).}).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5))}, {state_before((3,6)).action(down).wall((3, 7)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5))}, {state_before((3,6)).action(down).wall((3, 7)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6))}, {state_before((3,6)).action(right).wall((3, 7)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6))}, {state_before((4,6)).action(right).wall((4, 7)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((4,5)),state_after((6,5)),state_after((7,5)),state_after((8,5))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((4,5)),state_after((5,4)),state_after((4,5)),state_after((6,5)),state_after((7,5)),state_after((8,5))}, {state_before((5,5)).action(up).wall((5, 4)). }).
#pos({}, {state_after((6,5)),state_after((4,5)),state_after((5,4)),state_after((5,5))}, {state_before((5,5)).action(down).wall((5, 4)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((4,5)),state_after((6,5)),state_after((7,5)),state_after((8,5))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((5,4)),state_after((5,5))}, {state_before((5,5)).action(left).wall((5, 4)). }).
#pos({}, {state_after((5,5)),state_after((4,6)),state_after((4,4)),state_after((4,5))}, {state_before((4,5)).action(left).wall((4, 4)). }).
#pos({}, {state_after((4,5)),state_after((3,6)),state_after((3,4)),state_after((3,5))}, {state_before((3,5)).action(left).}).
#pos({}, {state_after((3,5)),state_after((1,5)),state_after((2,4)),state_after((2,5))}, {state_before((2,5)).action(down).}).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5))}, {state_before((2,6)).action(down).wall((2, 7)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5))}, {state_before((2,6)).action(up).wall((2, 7)). }).
#pos({}, {state_after((2,6)),state_after((1,5)),state_after((2,4)),state_after((2,5))}, {state_before((2,5)).action(right).}).
#pos({}, {state_after((3,6)),state_after((2,5)),state_after((3,4)),state_after((3,5))}, {state_before((3,5)).action(right).}).
#pos({}, {state_after((5,5)),state_after((3,5)),state_after((4,4)),state_after((4,5))}, {state_before((4,5)).action(down).wall((4, 4)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6))}, {state_before((4,6)).action(right).wall((4, 7)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((5,5)),state_after((5,6))}, {state_before((5,6)).action(left).wall((5, 7)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,6)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5))}, {state_before((4,6)).action(up).wall((4, 7)). }).
#pos({}, {state_after((5,5)),state_after((4,6)),state_after((4,4)),state_after((4,5))}, {state_before((4,5)).action(left).wall((4, 4)). }).
#pos({}, {state_after((4,5)),state_after((2,5)),state_after((3,4)),state_after((3,5))}, {state_before((3,5)).action(down).}).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5))}, {state_before((3,6)).action(up).wall((3, 7)). }).
#pos({}, {state_after((3,6)),state_after((2,5)),state_after((3,4)),state_after((3,5))}, {state_before((3,5)).action(right).}).
#pos({}, {state_after((5,5)),state_after((4,6)),state_after((3,5)),state_after((4,4)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5))}, {state_before((4,5)).action(up).wall((4, 4)). }).
#pos({}, {state_after((5,5)),state_after((4,6)),state_after((4,4)),state_after((4,5))}, {state_before((4,5)).action(left).wall((4, 4)). }).
#pos({}, {state_after((3,6)),state_after((2,5)),state_after((3,4)),state_after((3,5))}, {state_before((3,5)).action(right).}).
#pos({}, {state_after((4,6)),state_after((3,5)),state_after((4,4)),state_after((4,5))}, {state_before((4,5)).action(right).wall((4, 4)). }).
#pos({}, {state_after((6,5)),state_after((4,5)),state_after((5,4)),state_after((5,5))}, {state_before((5,5)).action(down).wall((5, 4)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((4,5)),state_after((6,5)),state_after((7,5)),state_after((8,5))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((5,6)),state_after((4,5)),state_after((5,4)),state_after((5,5))}, {state_before((5,5)).action(right).wall((5, 4)). }).
#pos({}, {state_after((6,6)),state_after((5,5)),state_after((6,4)),state_after((6,5))}, {state_before((6,5)).action(right).wall((6, 4)). }).
#pos({}, {state_after((7,6)),state_after((6,5)),state_after((7,4)),state_after((7,5))}, {state_before((7,5)).action(right).wall((7, 4)). }).
#pos({}, {state_after((9,5)),state_after((8,6)),state_after((7,5)),state_after((8,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5))}, {state_before((8,5)).action(up).wall((8, 4)). }).
#pos({}, {state_after((9,5)),state_after((8,6)),state_after((7,5)),state_after((8,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5))}, {state_before((8,5)).action(up).wall((8, 4)). }).
#pos({}, {state_after((9,5)),state_after((8,6)),state_after((7,5)),state_after((8,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5))}, {state_before((8,5)).action(up).wall((8, 4)). }).
#pos({}, {state_after((9,5)),state_after((8,6)),state_after((8,4)),state_after((8,5))}, {state_before((8,5)).action(left).wall((8, 4)). }).
#pos({}, {state_after((8,5)),state_after((6,5)),state_after((7,4)),state_after((7,5))}, {state_before((7,5)).action(down).wall((7, 4)). }).
#pos({}, {state_after((8,6)),state_after((7,7)),state_after((6,6)),state_after((7,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((8,5))}, {state_before((7,6)).action(up).wall((7, 7)). }).
#pos({}, {state_after((8,5)),state_after((7,6)),state_after((7,4)),state_after((7,5))}, {state_before((7,5)).action(left).wall((7, 4)). }).
#pos({}, {state_after((7,5)),state_after((6,6)),state_after((6,4)),state_after((6,5))}, {state_before((6,5)).action(left).wall((6, 4)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((5,4)),state_after((5,5))}, {state_before((5,5)).action(left).wall((5, 4)). }).
#pos({}, {state_after((4,6)),state_after((3,5)),state_after((4,4)),state_after((4,5))}, {state_before((4,5)).action(right).wall((4, 4)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((5,4)),state_after((5,5))}, {state_before((5,5)).action(left).wall((5, 4)). }).
#pos({}, {state_after((5,5)),state_after((4,6)),state_after((3,5)),state_after((4,4)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5))}, {state_before((4,5)).action(up).wall((4, 4)). }).
#pos({}, {state_after((5,5)),state_after((4,6)),state_after((3,5)),state_after((4,4)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5))}, {state_before((4,5)).action(up).wall((4, 4)). }).
#pos({}, {state_after((5,5)),state_after((3,5)),state_after((4,4)),state_after((4,5))}, {state_before((4,5)).action(down).wall((4, 4)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5))}, {state_before((4,6)).action(down).wall((4, 7)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,6)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5))}, {state_before((4,6)).action(up).wall((4, 7)). }).
#pos({}, {state_after((5,5)),state_after((4,6)),state_after((3,5)),state_after((4,4)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5))}, {state_before((4,5)).action(up).wall((4, 4)). }).
#pos({}, {state_after((5,5)),state_after((4,6)),state_after((3,5)),state_after((4,4)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5))}, {state_before((4,5)).action(up).wall((4, 4)). }).
#pos({}, {state_after((5,5)),state_after((4,6)),state_after((4,4)),state_after((4,5))}, {state_before((4,5)).action(left).wall((4, 4)). }).
#pos({}, {state_after((3,6)),state_after((2,5)),state_after((3,4)),state_after((3,5))}, {state_before((3,5)).action(right).}).
#pos({}, {state_after((5,5)),state_after((4,6)),state_after((3,5)),state_after((4,4)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5))}, {state_before((4,5)).action(up).wall((4, 4)). }).
#pos({}, {state_after((5,5)),state_after((4,6)),state_after((3,5)),state_after((4,4)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5))}, {state_before((4,5)).action(up).wall((4, 4)). }).
#pos({}, {state_after((4,6)),state_after((3,5)),state_after((4,4)),state_after((4,5))}, {state_before((4,5)).action(right).wall((4, 4)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((5,4)),state_after((5,5))}, {state_before((5,5)).action(left).wall((5, 4)). }).
#pos({}, {state_after((5,5)),state_after((4,6)),state_after((3,5)),state_after((4,4)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5))}, {state_before((4,5)).action(up).wall((4, 4)). }).
#pos({}, {state_after((5,5)),state_after((4,6)),state_after((4,4)),state_after((4,5))}, {state_before((4,5)).action(left).wall((4, 4)). }).
#pos({}, {state_after((3,6)),state_after((2,5)),state_after((3,4)),state_after((3,5))}, {state_before((3,5)).action(right).}).
#pos({}, {state_after((5,5)),state_after((3,5)),state_after((4,4)),state_after((4,5))}, {state_before((4,5)).action(down).wall((4, 4)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,6)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5))}, {state_before((4,6)).action(up).wall((4, 7)). }).
#pos({}, {state_after((5,5)),state_after((3,5)),state_after((4,4)),state_after((4,5))}, {state_before((4,5)).action(down).wall((4, 4)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5))}, {state_before((4,6)).action(down).wall((4, 7)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5))}, {state_before((4,6)).action(down).wall((4, 7)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6))}, {state_before((4,6)).action(right).wall((4, 7)). }).
#pos({}, {state_after((5,7)),state_after((4,6)),state_after((5,5)),state_after((5,6))}, {state_before((5,6)).action(right).wall((5, 7)). }).
#pos({}, {state_after((6,7)),state_after((5,6)),state_after((6,5)),state_after((6,6))}, {state_before((6,6)).action(right).wall((6, 7)). }).
#pos({}, {state_after((8,6)),state_after((7,7)),state_after((6,6)),state_after((7,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((8,5))}, {state_before((7,6)).action(up).wall((7, 7)). }).
#pos({}, {state_after((8,5)),state_after((7,6)),state_after((6,5)),state_after((7,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((8,5))}, {state_before((7,5)).action(up).wall((7, 4)). }).
#pos({}, {state_after((8,5)),state_after((6,5)),state_after((7,4)),state_after((7,5))}, {state_before((7,5)).action(down).wall((7, 4)). }).
#pos({}, {state_after((8,6)),state_after((7,7)),state_after((6,6)),state_after((7,5))}, {state_before((7,6)).action(down).wall((7, 7)). }).
#pos({}, {state_after((7,7)),state_after((6,6)),state_after((7,5)),state_after((7,6))}, {state_before((7,6)).action(right).wall((7, 7)). }).
#pos({}, {state_after((9,6)),state_after((8,7)),state_after((8,5)),state_after((8,6))}, {state_before((8,6)).action(left).wall((8, 7)). }).
#pos({}, {state_after((8,6)),state_after((7,7)),state_after((7,5)),state_after((7,6))}, {state_before((7,6)).action(left).wall((7, 7)). }).
#pos({}, {state_after((7,6)),state_after((6,7)),state_after((5,6)),state_after((6,5))}, {state_before((6,6)).action(down).wall((6, 7)). }).
#pos({}, {state_after((6,7)),state_after((5,6)),state_after((6,5)),state_after((6,6))}, {state_before((6,6)).action(right).wall((6, 7)). }).
#pos({}, {state_after((8,6)),state_after((7,7)),state_after((6,6)),state_after((7,5))}, {state_before((7,6)).action(down).wall((7, 7)). }).
#pos({}, {state_after((7,7)),state_after((6,6)),state_after((7,5)),state_after((7,6))}, {state_before((7,6)).action(right).wall((7, 7)). }).
#pos({}, {state_after((9,6)),state_after((8,7)),state_after((8,5)),state_after((8,6))}, {state_before((8,6)).action(left).wall((8, 7)). }).
#pos({}, {state_after((8,6)),state_after((7,7)),state_after((6,6)),state_after((7,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((8,5))}, {state_before((7,6)).action(up).wall((7, 7)). }).
#pos({}, {state_after((7,6)),state_after((6,5)),state_after((7,4)),state_after((7,5))}, {state_before((7,5)).action(right).wall((7, 4)). }).
#pos({}, {state_after((9,5)),state_after((8,6)),state_after((7,5)),state_after((8,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5))}, {state_before((8,5)).action(up).wall((8, 4)). }).
#pos({}, {state_after((9,5)),state_after((7,5)),state_after((8,4)),state_after((8,5))}, {state_before((8,5)).action(down).wall((8, 4)). }).
#pos({}, {state_after((9,6)),state_after((8,7)),state_after((8,5)),state_after((8,6))}, {state_before((8,6)).action(left).wall((8, 7)). }).
#pos({}, {state_after((7,7)),state_after((6,6)),state_after((7,5)),state_after((7,6))}, {state_before((7,6)).action(right).wall((7, 7)). }).
#pos({}, {state_after((9,6)),state_after((8,7)),state_after((8,5)),state_after((8,6))}, {state_before((8,6)).action(left).wall((8, 7)). }).
#pos({}, {state_after((8,6)),state_after((7,7)),state_after((6,6)),state_after((7,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((8,5))}, {state_before((7,6)).action(up).wall((7, 7)). }).
#pos({}, {state_after((8,5)),state_after((7,6)),state_after((6,5)),state_after((7,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((8,5))}, {state_before((7,5)).action(up).wall((7, 4)). }).
#pos({}, {state_after((8,5)),state_after((6,5)),state_after((7,4)),state_after((7,5))}, {state_before((7,5)).action(down).wall((7, 4)). }).
#pos({}, {state_after((8,6)),state_after((7,7)),state_after((6,6)),state_after((7,5))}, {state_before((7,6)).action(down).wall((7, 7)). }).
#pos({}, {state_after((7,7)),state_after((6,6)),state_after((7,5)),state_after((7,6))}, {state_before((7,6)).action(right).wall((7, 7)). }).
#pos({}, {state_after((9,6)),state_after((8,7)),state_after((7,6)),state_after((8,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5))}, {state_before((8,6)).action(up).wall((8, 7)). }).
#pos({}, {state_after((8,6)),state_after((7,5)),state_after((8,4)),state_after((8,5))}, {state_before((8,5)).action(right).wall((8, 4)). }).
#pos({}, {state_after((10,5)),state_after((9,6)),state_after((8,5)),state_after((9,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5))}, {state_before((9,5)).action(up).wall((9, 4)). }).
#pos({}, {state_after((10,5)),state_after((8,5)),state_after((9,4)),state_after((9,5))}, {state_before((9,5)).action(down).wall((9, 4)). }).
#pos({}, {state_after((10,6)),state_after((9,7)),state_after((8,6)),state_after((9,5))}, {state_before((9,6)).action(down).wall((9, 7)). }).
#pos({}, {state_after((10,6)),state_after((9,7)),state_after((8,6)),state_after((9,5))}, {state_before((9,6)).action(down).wall((9, 7)). }).
#pos({}, {state_after((10,6)),state_after((9,7)),state_after((9,5)),state_after((9,6))}, {state_before((9,6)).action(left).wall((9, 7)). }).
#pos({}, {state_after((8,7)),state_after((7,6)),state_after((8,5)),state_after((8,6))}, {state_before((8,6)).action(right).wall((8, 7)). }).
#pos({}, {state_after((10,6)),state_after((9,7)),state_after((8,6)),state_after((9,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5))}, {state_before((9,6)).action(up).wall((9, 7)). }).
#pos({}, {state_after((10,5)),state_after((9,6)),state_after((9,4)),state_after((9,5))}, {state_before((9,5)).action(left).wall((9, 4)). }).
#pos({}, {state_after((8,6)),state_after((7,5)),state_after((8,4)),state_after((8,5))}, {state_before((8,5)).action(right).wall((8, 4)). }).
#pos({}, {state_after((9,6)),state_after((8,5)),state_after((9,4)),state_after((9,5))}, {state_before((9,5)).action(right).wall((9, 4)). }).
#pos({}, {state_after((10,6)),state_after((9,5)),state_after((10,4)),state_after((10,5))}, {state_before((10,5)).action(right).wall((10, 4)). }).
#pos({}, {state_after((12,5)),state_after((11,6)),state_after((11,4)),state_after((11,5))}, {state_before((11,5)).action(left).wall((11, 4)). }).
#pos({}, {state_after((11,5)),state_after((9,5)),state_after((10,4)),state_after((10,5))}, {state_before((10,5)).action(down).wall((10, 4)). }).
#pos({}, {state_after((11,6)),state_after((10,7)),state_after((9,6)),state_after((10,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((11,5))}, {state_before((10,6)).action(up).wall((10, 7)). }).
#pos({}, {state_after((11,5)),state_after((10,6)),state_after((9,5)),state_after((10,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((11,5))}, {state_before((10,5)).action(up).wall((10, 4)). }).
#pos({}, {state_after((11,5)),state_after((10,6)),state_after((9,5)),state_after((10,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((11,5))}, {state_before((10,5)).action(up).wall((10, 4)). }).
#pos({}, {state_after((11,5)),state_after((10,6)),state_after((9,5)),state_after((10,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((11,5))}, {state_before((10,5)).action(up).wall((10, 4)). }).
#pos({}, {state_after((11,5)),state_after((9,5)),state_after((10,4)),state_after((10,5))}, {state_before((10,5)).action(down).wall((10, 4)). }).
#pos({}, {state_after((11,6)),state_after((10,7)),state_after((9,6)),state_after((10,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((11,5))}, {state_before((10,6)).action(up).wall((10, 7)). }).
#pos({}, {state_after((11,5)),state_after((10,6)),state_after((10,4)),state_after((10,5))}, {state_before((10,5)).action(left).wall((10, 4)). }).
#pos({}, {state_after((10,5)),state_after((8,5)),state_after((9,4)),state_after((9,5))}, {state_before((9,5)).action(down).wall((9, 4)). }).
#pos({}, {state_after((10,6)),state_after((9,7)),state_after((8,6)),state_after((9,5))}, {state_before((9,6)).action(down).wall((9, 7)). }).
#pos({}, {state_after((10,6)),state_after((9,7)),state_after((8,6)),state_after((9,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((10,5)),state_after((11,5))}, {state_before((9,6)).action(up).wall((9, 7)). }).
#pos({}, {state_after((9,6)),state_after((8,5)),state_after((9,4)),state_after((9,5))}, {state_before((9,5)).action(right).wall((9, 4)). }).
#pos({}, {state_after((11,5)),state_after((10,6)),state_after((9,5)),state_after((10,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((11,5))}, {state_before((10,5)).action(up).wall((10, 4)). }).
#pos({}, {state_after((11,5)),state_after((10,6)),state_after((9,5)),state_after((10,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((11,5))}, {state_before((10,5)).action(up).wall((10, 4)). }).
#pos({}, {state_after((11,5)),state_after((10,6)),state_after((9,5)),state_after((10,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((11,5))}, {state_before((10,5)).action(up).wall((10, 4)). }).
#pos({}, {state_after((11,5)),state_after((10,6)),state_after((9,5)),state_after((10,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((11,5))}, {state_before((10,5)).action(up).wall((10, 4)). }).
#pos({}, {state_after((11,5)),state_after((10,6)),state_after((10,4)),state_after((10,5))}, {state_before((10,5)).action(left).wall((10, 4)). }).
#pos({}, {state_after((10,5)),state_after((9,6)),state_after((9,4)),state_after((9,5))}, {state_before((9,5)).action(left).wall((9, 4)). }).
#pos({}, {state_after((8,6)),state_after((7,5)),state_after((8,4)),state_after((8,5))}, {state_before((8,5)).action(right).wall((8, 4)). }).
#pos({}, {state_after((10,5)),state_after((8,5)),state_after((9,4)),state_after((9,5))}, {state_before((9,5)).action(down).wall((9, 4)). }).
#pos({}, {state_after((10,6)),state_after((9,7)),state_after((9,5)),state_after((9,6))}, {state_before((9,6)).action(left).wall((9, 7)). }).
#pos({}, {state_after((9,6)),state_after((8,7)),state_after((7,6)),state_after((8,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((9,5)),state_after((10,5)),state_after((11,5))}, {state_before((8,6)).action(up).wall((8, 7)). }).
#pos({}, {state_after((9,5)),state_after((8,6)),state_after((7,5)),state_after((8,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((9,5)),state_after((10,5)),state_after((11,5))}, {state_before((8,5)).action(up).wall((8, 4)). }).
#pos({}, {state_after((9,5)),state_after((8,6)),state_after((7,5)),state_after((8,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((9,5)),state_after((10,5)),state_after((11,5))}, {state_before((8,5)).action(up).wall((8, 4)). }).
#pos({}, {state_after((9,5)),state_after((8,6)),state_after((8,4)),state_after((8,5))}, {state_before((8,5)).action(left).wall((8, 4)). }).
#pos({}, {state_after((7,6)),state_after((6,5)),state_after((7,4)),state_after((7,5))}, {state_before((7,5)).action(right).wall((7, 4)). }).
#pos({}, {state_after((9,5)),state_after((8,6)),state_after((8,4)),state_after((8,5))}, {state_before((8,5)).action(left).wall((8, 4)). }).
#pos({}, {state_after((7,6)),state_after((6,5)),state_after((7,4)),state_after((7,5))}, {state_before((7,5)).action(right).wall((7, 4)). }).
#pos({}, {state_after((8,6)),state_after((7,5)),state_after((8,4)),state_after((8,5))}, {state_before((8,5)).action(right).wall((8, 4)). }).
#pos({}, {state_after((10,5)),state_after((8,5)),state_after((9,4)),state_after((9,5))}, {state_before((9,5)).action(down).wall((9, 4)). }).
#pos({}, {state_after((10,6)),state_after((9,7)),state_after((8,6)),state_after((9,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((10,5)),state_after((11,5))}, {state_before((9,6)).action(up).wall((9, 7)). }).
#pos({}, {state_after((10,5)),state_after((9,6)),state_after((8,5)),state_after((9,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((10,5)),state_after((11,5))}, {state_before((9,5)).action(up).wall((9, 4)). }).
#pos({}, {state_after((10,5)),state_after((9,6)),state_after((9,4)),state_after((9,5))}, {state_before((9,5)).action(left).wall((9, 4)). }).
#pos({}, {state_after((9,5)),state_after((8,6)),state_after((7,5)),state_after((8,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((9,5)),state_after((10,5)),state_after((11,5))}, {state_before((8,5)).action(up).wall((8, 4)). }).
#pos({}, {state_after((9,5)),state_after((8,6)),state_after((7,5)),state_after((8,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((9,5)),state_after((10,5)),state_after((11,5))}, {state_before((8,5)).action(up).wall((8, 4)). }).
#pos({}, {state_after((8,6)),state_after((7,5)),state_after((8,4)),state_after((8,5))}, {state_before((8,5)).action(right).wall((8, 4)). }).
#pos({}, {state_after((9,6)),state_after((8,5)),state_after((9,4)),state_after((9,5))}, {state_before((9,5)).action(right).wall((9, 4)). }).
#pos({}, {state_after((11,5)),state_after((10,6)),state_after((9,5)),state_after((10,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((11,5))}, {state_before((10,5)).action(up).wall((10, 4)). }).
#pos({}, {state_after((11,5)),state_after((9,5)),state_after((10,4)),state_after((10,5))}, {state_before((10,5)).action(down).wall((10, 4)). }).
#pos({}, {state_after((11,6)),state_after((10,7)),state_after((9,6)),state_after((10,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((11,5))}, {state_before((10,6)).action(up).wall((10, 7)). }).
#pos({}, {state_after((11,5)),state_after((10,6)),state_after((10,4)),state_after((10,5))}, {state_before((10,5)).action(left).wall((10, 4)). }).
#pos({}, {state_after((10,5)),state_after((8,5)),state_after((9,4)),state_after((9,5))}, {state_before((9,5)).action(down).wall((9, 4)). }).
#pos({}, {state_after((10,6)),state_after((9,7)),state_after((9,5)),state_after((9,6))}, {state_before((9,6)).action(left).wall((9, 7)). }).
#pos({}, {state_after((9,6)),state_after((8,7)),state_after((8,5)),state_after((8,6))}, {state_before((8,6)).action(left).wall((8, 7)). }).
#pos({}, {state_after((8,6)),state_after((7,7)),state_after((6,6)),state_after((7,5))}, {state_before((7,6)).action(down).wall((7, 7)). }).
#pos({}, {state_after((8,6)),state_after((7,7)),state_after((7,5)),state_after((7,6))}, {state_before((7,6)).action(left).wall((7, 7)). }).
#pos({}, {state_after((6,7)),state_after((5,6)),state_after((6,5)),state_after((6,6))}, {state_before((6,6)).action(right).wall((6, 7)). }).
#pos({}, {state_after((8,6)),state_after((7,7)),state_after((6,6)),state_after((7,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5))}, {state_before((7,6)).action(up).wall((7, 7)). }).
#pos({}, {state_after((8,5)),state_after((7,6)),state_after((6,5)),state_after((7,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5))}, {state_before((7,5)).action(up).wall((7, 4)). }).
#pos({}, {state_after((8,5)),state_after((6,5)),state_after((7,4)),state_after((7,5))}, {state_before((7,5)).action(down).wall((7, 4)). }).
#pos({}, {state_after((8,6)),state_after((7,7)),state_after((7,5)),state_after((7,6))}, {state_before((7,6)).action(left).wall((7, 7)). }).
#pos({}, {state_after((7,6)),state_after((6,7)),state_after((5,6)),state_after((6,6)),state_after((4,5)),state_after((5,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5))}, {state_before((6,6)).action(up).wall((6, 7)). }).
#pos({}, {state_after((7,5)),state_after((6,6)),state_after((5,5)),state_after((6,4)),state_after((4,5)),state_after((5,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5))}, {state_before((6,5)).action(up).wall((6, 4)). }).
#pos({}, {state_after((7,5)),state_after((6,6)),state_after((5,5)),state_after((6,4)),state_after((4,5)),state_after((5,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5))}, {state_before((6,5)).action(up).wall((6, 4)). }).
#pos({}, {state_after((7,5)),state_after((5,5)),state_after((6,4)),state_after((6,5))}, {state_before((6,5)).action(down).wall((6, 4)). }).
#pos({}, {state_after((7,6)),state_after((6,7)),state_after((6,5)),state_after((6,6))}, {state_before((6,6)).action(left).wall((6, 7)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((4,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((5,6)),state_after((4,5)),state_after((5,4)),state_after((5,5))}, {state_before((5,5)).action(right).wall((5, 4)). }).
#pos({}, {state_after((7,5)),state_after((5,5)),state_after((6,4)),state_after((6,5))}, {state_before((6,5)).action(down).wall((6, 4)). }).
#pos({}, {state_after((6,7)),state_after((5,6)),state_after((6,5)),state_after((6,6))}, {state_before((6,6)).action(right).wall((6, 7)). }).
#pos({}, {state_after((8,6)),state_after((7,7)),state_after((7,5)),state_after((7,6))}, {state_before((7,6)).action(left).wall((7, 7)). }).
#pos({}, {state_after((7,6)),state_after((6,7)),state_after((5,6)),state_after((6,5))}, {state_before((6,6)).action(down).wall((6, 7)). }).
#pos({}, {state_after((6,7)),state_after((5,6)),state_after((6,5)),state_after((6,6))}, {state_before((6,6)).action(right).wall((6, 7)). }).
#pos({}, {state_after((8,6)),state_after((7,7)),state_after((6,6)),state_after((7,5))}, {state_before((7,6)).action(down).wall((7, 7)). }).
#pos({}, {state_after((8,6)),state_after((7,7)),state_after((6,6)),state_after((7,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5))}, {state_before((7,6)).action(up).wall((7, 7)). }).
#pos({}, {state_after((8,5)),state_after((7,6)),state_after((7,4)),state_after((7,5))}, {state_before((7,5)).action(left).wall((7, 4)). }).
#pos({}, {state_after((7,5)),state_after((6,6)),state_after((5,5)),state_after((6,4)),state_after((4,5)),state_after((5,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5))}, {state_before((6,5)).action(up).wall((6, 4)). }).
#pos({}, {state_after((7,5)),state_after((6,6)),state_after((6,4)),state_after((6,5))}, {state_before((6,5)).action(left).wall((6, 4)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((5,4)),state_after((5,5))}, {state_before((5,5)).action(left).wall((5, 4)). }).
#pos({}, {state_after((4,6)),state_after((3,5)),state_after((4,4)),state_after((4,5))}, {state_before((4,5)).action(right).wall((4, 4)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((4,5)),state_after((5,4)),state_after((4,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5))}, {state_before((5,5)).action(up).wall((5, 4)). }).
#pos({}, {state_after((5,6)),state_after((4,5)),state_after((5,4)),state_after((5,5))}, {state_before((5,5)).action(right).wall((5, 4)). }).
#pos({}, {state_after((6,6)),state_after((5,5)),state_after((6,4)),state_after((6,5))}, {state_before((6,5)).action(right).wall((6, 4)). }).
#pos({}, {state_after((8,5)),state_after((7,6)),state_after((6,5)),state_after((7,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5))}, {state_before((7,5)).action(up).wall((7, 4)). }).
#pos({}, {state_after((7,6)),state_after((6,5)),state_after((7,4)),state_after((7,5))}, {state_before((7,5)).action(right).wall((7, 4)). }).
#pos({}, {state_after((9,5)),state_after((8,6)),state_after((8,4)),state_after((8,5))}, {state_before((8,5)).action(left).wall((8, 4)). }).
#pos({}, {state_after((7,6)),state_after((6,5)),state_after((7,4)),state_after((7,5))}, {state_before((7,5)).action(right).wall((7, 4)). }).
#pos({}, {state_after((9,5)),state_after((7,5)),state_after((8,4)),state_after((8,5))}, {state_before((8,5)).action(down).wall((8, 4)). }).
#pos({}, {state_after((9,6)),state_after((8,7)),state_after((7,6)),state_after((8,5))}, {state_before((8,6)).action(down).wall((8, 7)). }).
#pos({}, {state_after((9,6)),state_after((8,7)),state_after((7,6)),state_after((8,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((9,5)),state_after((10,5)),state_after((11,5))}, {state_before((8,6)).action(up).wall((8, 7)). }).
#pos({}, {state_after((9,5)),state_after((8,6)),state_after((8,4)),state_after((8,5))}, {state_before((8,5)).action(left).wall((8, 4)). }).
#pos({}, {state_after((8,5)),state_after((7,6)),state_after((6,5)),state_after((7,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5))}, {state_before((7,5)).action(up).wall((7, 4)). }).
#pos({}, {state_after((8,5)),state_after((7,6)),state_after((6,5)),state_after((7,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5))}, {state_before((7,5)).action(up).wall((7, 4)). }).
#pos({}, {state_after((8,5)),state_after((7,6)),state_after((7,4)),state_after((7,5))}, {state_before((7,5)).action(left).wall((7, 4)). }).
#pos({}, {state_after((6,6)),state_after((5,5)),state_after((6,4)),state_after((6,5))}, {state_before((6,5)).action(right).wall((6, 4)). }).
#pos({}, {state_after((3,6)),state_after((2,5)),state_after((3,4)),state_after((3,5))}, {state_before((3,5)).action(right).}).
#pos({}, {state_after((5,5)),state_after((4,6)),state_after((4,4)),state_after((4,5))}, {state_before((4,5)).action(left).wall((4, 4)). }).
#pos({}, {state_after((3,6)),state_after((2,5)),state_after((3,4)),state_after((3,5))}, {state_before((3,5)).action(right).}).
#pos({}, {state_after((5,5)),state_after((3,5)),state_after((4,4)),state_after((4,5))}, {state_before((4,5)).action(down).wall((4, 4)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,6)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5))}, {state_before((4,6)).action(up).wall((4, 7)). }).
#pos({}, {state_after((4,6)),state_after((3,5)),state_after((4,4)),state_after((4,5))}, {state_before((4,5)).action(right).wall((4, 4)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((5,4)),state_after((5,5))}, {state_before((5,5)).action(left).wall((5, 4)). }).
#pos({}, {state_after((4,6)),state_after((3,5)),state_after((4,4)),state_after((4,5))}, {state_before((4,5)).action(right).wall((4, 4)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((5,4)),state_after((5,5))}, {state_before((5,5)).action(left).wall((5, 4)). }).
#pos({}, {state_after((5,5)),state_after((4,6)),state_after((3,5)),state_after((4,4)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5))}, {state_before((4,5)).action(up).wall((4, 4)). }).
#pos({}, {state_after((5,5)),state_after((3,5)),state_after((4,4)),state_after((4,5))}, {state_before((4,5)).action(down).wall((4, 4)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6))}, {state_before((4,6)).action(right).wall((4, 7)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((5,5)),state_after((5,6))}, {state_before((5,6)).action(left).wall((5, 7)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,6)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5))}, {state_before((4,6)).action(up).wall((4, 7)). }).
#pos({}, {state_after((4,6)),state_after((3,5)),state_after((4,4)),state_after((4,5))}, {state_before((4,5)).action(right).wall((4, 4)). }).
#pos({}, {state_after((5,6)),state_after((4,5)),state_after((5,4)),state_after((5,5))}, {state_before((5,5)).action(right).wall((5, 4)). }).
#pos({}, {state_after((7,5)),state_after((6,6)),state_after((6,4)),state_after((6,5))}, {state_before((6,5)).action(left).wall((6, 4)). }).
#pos({}, {state_after((5,6)),state_after((4,5)),state_after((5,4)),state_after((5,5))}, {state_before((5,5)).action(right).wall((5, 4)). }).
#pos({}, {state_after((7,5)),state_after((6,6)),state_after((6,4)),state_after((6,5))}, {state_before((6,5)).action(left).wall((6, 4)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((5,4)),state_after((5,5))}, {state_before((5,5)).action(left).wall((5, 4)). }).
#pos({}, {state_after((5,5)),state_after((4,6)),state_after((4,4)),state_after((4,5))}, {state_before((4,5)).action(left).wall((4, 4)). }).
#pos({}, {state_after((4,5)),state_after((3,6)),state_after((3,4)),state_after((3,5))}, {state_before((3,5)).action(left).}).
#pos({}, {state_after((2,6)),state_after((1,5)),state_after((2,4)),state_after((2,5))}, {state_before((2,5)).action(right).}).
#pos({}, {state_after((3,6)),state_after((2,5)),state_after((3,4)),state_after((3,5))}, {state_before((3,5)).action(right).}).
#pos({}, {state_after((4,6)),state_after((3,5)),state_after((4,4)),state_after((4,5))}, {state_before((4,5)).action(right).wall((4, 4)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((5,4)),state_after((5,5))}, {state_before((5,5)).action(left).wall((5, 4)). }).
#pos({}, {state_after((5,5)),state_after((4,6)),state_after((3,5)),state_after((4,4)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5))}, {state_before((4,5)).action(up).wall((4, 4)). }).
#pos({}, {state_after((5,5)),state_after((4,6)),state_after((3,5)),state_after((4,4)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5))}, {state_before((4,5)).action(up).wall((4, 4)). }).
#pos({}, {state_after((4,6)),state_after((3,5)),state_after((4,4)),state_after((4,5))}, {state_before((4,5)).action(right).wall((4, 4)). }).
#pos({}, {state_after((6,5)),state_after((4,5)),state_after((5,4)),state_after((5,5))}, {state_before((5,5)).action(down).wall((5, 4)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,5))}, {state_before((5,6)).action(down).wall((5, 7)). }).
#pos({}, {state_after((5,7)),state_after((4,6)),state_after((5,5)),state_after((5,6))}, {state_before((5,6)).action(right).wall((5, 7)). }).
#pos({}, {state_after((6,7)),state_after((5,6)),state_after((6,5)),state_after((6,6))}, {state_before((6,6)).action(right).wall((6, 7)). }).
#pos({}, {state_after((8,6)),state_after((7,7)),state_after((6,6)),state_after((7,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5))}, {state_before((7,6)).action(up).wall((7, 7)). }).
#pos({}, {state_after((8,5)),state_after((7,6)),state_after((6,5)),state_after((7,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5))}, {state_before((7,5)).action(up).wall((7, 4)). }).
#pos({}, {state_after((7,6)),state_after((6,5)),state_after((7,4)),state_after((7,5))}, {state_before((7,5)).action(right).wall((7, 4)). }).
#pos({}, {state_after((9,5)),state_after((8,6)),state_after((7,5)),state_after((8,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((9,5)),state_after((10,5)),state_after((11,5))}, {state_before((8,5)).action(up).wall((8, 4)). }).
#pos({}, {state_after((9,5)),state_after((7,5)),state_after((8,4)),state_after((8,5))}, {state_before((8,5)).action(down).wall((8, 4)). }).
#pos({}, {state_after((9,6)),state_after((8,7)),state_after((7,6)),state_after((8,5))}, {state_before((8,6)).action(down).wall((8, 7)). }).
#pos({}, {state_after((9,6)),state_after((8,7)),state_after((7,6)),state_after((8,5))}, {state_before((8,6)).action(down).wall((8, 7)). }).
#pos({}, {state_after((9,6)),state_after((8,7)),state_after((7,6)),state_after((8,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((9,5)),state_after((10,5)),state_after((11,5))}, {state_before((8,6)).action(up).wall((8, 7)). }).
#pos({}, {state_after((8,6)),state_after((7,5)),state_after((8,4)),state_after((8,5))}, {state_before((8,5)).action(right).wall((8, 4)). }).
#pos({}, {state_after((10,5)),state_after((9,6)),state_after((8,5)),state_after((9,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((10,5)),state_after((11,5))}, {state_before((9,5)).action(up).wall((9, 4)). }).
#pos({}, {state_after((10,5)),state_after((9,6)),state_after((8,5)),state_after((9,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((10,5)),state_after((11,5))}, {state_before((9,5)).action(up).wall((9, 4)). }).
#pos({}, {state_after((10,5)),state_after((9,6)),state_after((8,5)),state_after((9,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((10,5)),state_after((11,5))}, {state_before((9,5)).action(up).wall((9, 4)). }).
#pos({}, {state_after((9,6)),state_after((8,5)),state_after((9,4)),state_after((9,5))}, {state_before((9,5)).action(right).wall((9, 4)). }).
#pos({}, {state_after((11,5)),state_after((9,5)),state_after((10,4)),state_after((10,5))}, {state_before((10,5)).action(down).wall((10, 4)). }).
#pos({}, {state_after((10,7)),state_after((9,6)),state_after((10,5)),state_after((10,6))}, {state_before((10,6)).action(right).wall((10, 7)). }).
#pos({}, {state_after((11,7)),state_after((10,6)),state_after((11,5)),state_after((11,6))}, {state_before((11,6)).action(right).wall((11, 7)). }).
#pos({}, {state_after((13,6)),state_after((12,7)),state_after((11,6)),state_after((12,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5))}, {state_before((12,6)).action(up).wall((12, 7)). }).
#pos({}, {state_after((13,5)),state_after((11,5)),state_after((12,4)),state_after((12,5))}, {state_before((12,5)).action(down).}).
#pos({}, {state_after((13,6)),state_after((12,7)),state_after((11,6)),state_after((12,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5))}, {state_before((12,6)).action(up).wall((12, 7)). }).
#pos({}, {state_after((13,5)),state_after((12,6)),state_after((12,4)),state_after((12,5))}, {state_before((12,5)).action(left).}).
#pos({}, {state_after((12,5)),state_after((11,6)),state_after((10,5)),state_after((11,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5))}, {state_before((11,5)).action(up).wall((11, 4)). }).
#pos({}, {state_after((12,5)),state_after((11,6)),state_after((10,5)),state_after((11,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5))}, {state_before((11,5)).action(up).wall((11, 4)). }).
#pos({}, {state_after((12,5)),state_after((11,6)),state_after((10,5)),state_after((11,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5))}, {state_before((11,5)).action(up).wall((11, 4)). }).
#pos({}, {state_after((12,5)),state_after((11,6)),state_after((11,4)),state_after((11,5))}, {state_before((11,5)).action(left).wall((11, 4)). }).
#pos({}, {state_after((11,5)),state_after((9,5)),state_after((10,4)),state_after((10,5))}, {state_before((10,5)).action(down).wall((10, 4)). }).
#pos({}, {state_after((11,6)),state_after((10,7)),state_after((9,6)),state_after((10,5))}, {state_before((10,6)).action(down).wall((10, 7)). }).
#pos({}, {state_after((11,6)),state_after((10,7)),state_after((10,5)),state_after((10,6))}, {state_before((10,6)).action(left).wall((10, 7)). }).
#pos({}, {state_after((9,7)),state_after((8,6)),state_after((9,5)),state_after((9,6))}, {state_before((9,6)).action(right).wall((9, 7)). }).
#pos({}, {state_after((10,7)),state_after((9,6)),state_after((10,5)),state_after((10,6))}, {state_before((10,6)).action(right).wall((10, 7)). }).
#pos({}, {state_after((11,7)),state_after((10,6)),state_after((11,5)),state_after((11,6))}, {state_before((11,6)).action(right).wall((11, 7)). }).
#pos({}, {state_after((12,7)),state_after((11,6)),state_after((12,5)),state_after((12,6))}, {state_before((12,6)).action(right).wall((12, 7)). }).
#pos({}, {state_after((13,7)),state_after((12,6)),state_after((13,5)),state_after((13,6))}, {state_before((13,6)).action(right).wall((13, 7)). }).
#pos({}, {state_after((15,6)),state_after((14,7)),state_after((13,6)),state_after((14,5))}, {state_before((14,6)).action(down).wall((14, 7)). }).
#pos({}, {state_after((15,6)),state_after((14,7)),state_after((13,6)),state_after((14,5))}, {state_before((14,6)).action(down).wall((14, 7)). }).
#pos({}, {state_after((15,6)),state_after((14,7)),state_after((14,5)),state_after((14,6))}, {state_before((14,6)).action(left).wall((14, 7)). }).
#pos({}, {state_after((13,7)),state_after((12,6)),state_after((13,5)),state_after((13,6))}, {state_before((13,6)).action(right).wall((13, 7)). }).
#pos({}, {state_after((15,6)),state_after((14,7)),state_after((13,6)),state_after((14,5))}, {state_before((14,6)).action(down).wall((14, 7)). }).
#pos({}, {state_after((15,6)),state_after((14,7)),state_after((13,6)),state_after((14,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5))}, {state_before((14,6)).action(up).wall((14, 7)). }).
#pos({}, {state_after((15,5)),state_after((14,6)),state_after((13,5)),state_after((14,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5))}, {state_before((14,5)).action(up).wall((14, 4)). }).
#pos({}, {state_after((15,5)),state_after((14,6)),state_after((14,4)),state_after((14,5))}, {state_before((14,5)).action(left).wall((14, 4)). }).
#pos({}, {state_after((14,5)),state_after((13,6)),state_after((12,5)),state_after((13,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5)),state_after((14,5))}, {state_before((13,5)).action(up).wall((13, 4)). }).
#pos({}, {state_after((14,5)),state_after((12,5)),state_after((13,4)),state_after((13,5))}, {state_before((13,5)).action(down).wall((13, 4)). }).
#pos({}, {state_after((14,6)),state_after((13,7)),state_after((12,6)),state_after((13,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5)),state_after((14,5))}, {state_before((13,6)).action(up).wall((13, 7)). }).
#pos({}, {state_after((13,6)),state_after((12,5)),state_after((13,4)),state_after((13,5))}, {state_before((13,5)).action(right).wall((13, 4)). }).
#pos({}, {state_after((15,5)),state_after((13,5)),state_after((14,4)),state_after((14,5))}, {state_before((14,5)).action(down).wall((14, 4)). }).
#pos({}, {state_after((15,6)),state_after((14,7)),state_after((13,6)),state_after((14,5))}, {state_before((14,6)).action(down).wall((14, 7)). }).
#pos({}, {state_after((15,6)),state_after((14,7)),state_after((14,5)),state_after((14,6))}, {state_before((14,6)).action(left).wall((14, 7)). }).
#pos({}, {state_after((14,6)),state_after((13,7)),state_after((12,6)),state_after((13,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5)),state_after((14,5))}, {state_before((13,6)).action(up).wall((13, 7)). }).
#pos({}, {state_after((14,5)),state_after((13,6)),state_after((13,4)),state_after((13,5))}, {state_before((13,5)).action(left).wall((13, 4)). }).
#pos({}, {state_after((12,6)),state_after((11,5)),state_after((12,4)),state_after((12,5))}, {state_before((12,5)).action(right).}).
#pos({}, {state_after((14,5)),state_after((13,6)),state_after((12,5)),state_after((13,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5)),state_after((14,5))}, {state_before((13,5)).action(up).wall((13, 4)). }).
#pos({}, {state_after((14,5)),state_after((12,5)),state_after((13,4)),state_after((13,5))}, {state_before((13,5)).action(down).wall((13, 4)). }).
#pos({}, {state_after((13,7)),state_after((12,6)),state_after((13,5)),state_after((13,6))}, {state_before((13,6)).action(right).wall((13, 7)). }).
#pos({}, {state_after((15,6)),state_after((14,7)),state_after((14,5)),state_after((14,6))}, {state_before((14,6)).action(left).wall((14, 7)). }).
#pos({}, {state_after((13,7)),state_after((12,6)),state_after((13,5)),state_after((13,6))}, {state_before((13,6)).action(right).wall((13, 7)). }).
#pos({}, {state_after((15,6)),state_after((14,7)),state_after((13,6)),state_after((14,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5)),state_after((13,5))}, {state_before((14,6)).action(up).wall((14, 7)). }).
#pos({}, {state_after((14,6)),state_after((13,5)),state_after((14,4)),state_after((14,5))}, {state_before((14,5)).action(right).wall((14, 4)). }).
#pos({}, {state_after((16,5)),state_after((14,5)),state_after((15,4)),state_after((15,5))}, {state_before((15,5)).action(down).wall((15, 4)). }).
#pos({}, {state_after((16,6)),state_after((15,7)),state_after((14,6)),state_after((15,5))}, {state_before((15,6)).action(down).wall((15, 7)). }).
#pos({}, {state_after((16,6)),state_after((15,7)),state_after((14,6)),state_after((15,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5)),state_after((13,5)),state_after((14,5))}, {state_before((15,6)).action(up).wall((15, 7)). }).
#pos({}, {state_after((16,5)),state_after((14,5)),state_after((15,4)),state_after((15,5))}, {state_before((15,5)).action(down).wall((15, 4)). }).
#pos({}, {state_after((16,6)),state_after((15,7)),state_after((15,5)),state_after((15,6))}, {state_before((15,6)).action(left).wall((15, 7)). }).
#pos({}, {state_after((15,6)),state_after((14,7)),state_after((13,6)),state_after((14,5))}, {state_before((14,6)).action(down).wall((14, 7)). }).
#pos({}, {state_after((15,6)),state_after((14,7)),state_after((13,6)),state_after((14,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5)),state_after((13,5)),state_after((15,5))}, {state_before((14,6)).action(up).wall((14, 7)). }).
#pos({}, {state_after((15,5)),state_after((14,6)),state_after((13,5)),state_after((14,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5)),state_after((13,5)),state_after((15,5))}, {state_before((14,5)).action(up).wall((14, 4)). }).
#pos({}, {state_after((15,5)),state_after((14,6)),state_after((13,5)),state_after((14,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5)),state_after((13,5)),state_after((15,5))}, {state_before((14,5)).action(up).wall((14, 4)). }).
#pos({}, {state_after((14,6)),state_after((13,5)),state_after((14,4)),state_after((14,5))}, {state_before((14,5)).action(right).wall((14, 4)). }).
#pos({}, {state_after((15,6)),state_after((14,5)),state_after((15,4)),state_after((15,5))}, {state_before((15,5)).action(right).wall((15, 4)). }).
#pos({}, {state_after((16,6)),state_after((15,5)),state_after((16,4)),state_after((16,5))}, {state_before((16,5)).action(right).wall((16, 4)). }).
#pos({}, {state_after((18,5)),state_after((16,5)),state_after((17,4)),state_after((17,5))}, {state_before((17,5)).action(down).wall((18, 5)). wall((17, 4)). }).
#pos({}, {state_after((18,6)),state_after((17,7)),state_after((17,5)),state_after((17,6))}, {state_before((17,6)).action(left).wall((18, 6)). wall((17, 7)). }).
#pos({}, {state_after((16,7)),state_after((15,6)),state_after((16,5)),state_after((16,6))}, {state_before((16,6)).action(right).wall((16, 7)). }).
#pos({}, {state_after((18,6)),state_after((17,7)),state_after((17,5)),state_after((17,6))}, {state_before((17,6)).action(left).wall((18, 6)). wall((17, 7)). }).
#pos({}, {state_after((17,6)),state_after((16,7)),state_after((16,5)),state_after((16,6))}, {state_before((16,6)).action(left).wall((16, 7)). }).
#pos({}, {state_after((16,6)),state_after((15,7)),state_after((15,5)),state_after((15,6))}, {state_before((15,6)).action(left).wall((15, 7)). }).
#pos({}, {state_after((15,6)),state_after((14,7)),state_after((13,6)),state_after((14,5))}, {state_before((14,6)).action(down).wall((14, 7)). }).
#pos({}, {state_after((14,7)),state_after((13,6)),state_after((14,5)),state_after((14,6))}, {state_before((14,6)).action(right).wall((14, 7)). }).
#pos({}, {state_after((16,6)),state_after((15,7)),state_after((14,6)),state_after((15,5))}, {state_before((15,6)).action(down).wall((15, 7)). }).
#pos({}, {state_after((15,7)),state_after((14,6)),state_after((15,5)),state_after((15,6))}, {state_before((15,6)).action(right).wall((15, 7)). }).
#pos({}, {state_after((17,6)),state_after((16,7)),state_after((16,5)),state_after((16,6))}, {state_before((16,6)).action(left).wall((16, 7)). }).
#pos({}, {state_after((16,6)),state_after((15,7)),state_after((14,6)),state_after((15,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5)),state_after((13,5)),state_after((14,5)),state_after((16,5)),state_after((17,5)),state_after((18,6)),state_after((18,7))}, {state_before((15,6)).action(up).wall((15, 7)). }).
#pos({}, {state_after((16,5)),state_after((14,5)),state_after((15,4)),state_after((15,5))}, {state_before((15,5)).action(down).wall((15, 4)). }).
#pos({}, {state_after((15,7)),state_after((14,6)),state_after((15,5)),state_after((15,6))}, {state_before((15,6)).action(right).wall((15, 7)). }).
#pos({}, {state_after((17,6)),state_after((16,7)),state_after((15,6)),state_after((16,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5)),state_after((13,5)),state_after((14,5)),state_after((15,5)),state_after((17,5)),state_after((18,6)),state_after((18,7))}, {state_before((16,6)).action(up).wall((16, 7)). }).
#pos({}, {state_after((17,5)),state_after((16,6)),state_after((16,4)),state_after((16,5))}, {state_before((16,5)).action(left).wall((16, 4)). }).
#pos({}, {state_after((16,5)),state_after((15,6)),state_after((15,4)),state_after((15,5))}, {state_before((15,5)).action(left).wall((15, 4)). }).
#pos({}, {state_after((15,5)),state_after((14,6)),state_after((14,4)),state_after((14,5))}, {state_before((14,5)).action(left).wall((14, 4)). }).
#pos({}, {state_after((13,6)),state_after((12,5)),state_after((13,4)),state_after((13,5))}, {state_before((13,5)).action(right).wall((13, 4)). }).
#pos({}, {state_after((15,5)),state_after((14,6)),state_after((14,4)),state_after((14,5))}, {state_before((14,5)).action(left).wall((14, 4)). }).
#pos({}, {state_after((14,5)),state_after((12,5)),state_after((13,4)),state_after((13,5))}, {state_before((13,5)).action(down).wall((13, 4)). }).
#pos({}, {state_after((14,6)),state_after((13,7)),state_after((12,6)),state_after((13,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5)),state_after((14,5)),state_after((15,5)),state_after((16,5)),state_after((17,5)),state_after((18,6)),state_after((18,7))}, {state_before((13,6)).action(up).wall((13, 7)). }).
#pos({}, {state_after((14,5)),state_after((12,5)),state_after((13,4)),state_after((13,5))}, {state_before((13,5)).action(down).wall((13, 4)). }).
#pos({}, {state_after((13,7)),state_after((12,6)),state_after((13,5)),state_after((13,6))}, {state_before((13,6)).action(right).wall((13, 7)). }).
#pos({}, {state_after((15,6)),state_after((14,7)),state_after((13,6)),state_after((14,5))}, {state_before((14,6)).action(down).wall((14, 7)). }).
#pos({}, {state_after((15,6)),state_after((14,7)),state_after((13,6)),state_after((14,5))}, {state_before((14,6)).action(down).wall((14, 7)). }).
#pos({}, {state_after((15,6)),state_after((14,7)),state_after((13,6)),state_after((14,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5)),state_after((13,5)),state_after((15,5)),state_after((16,5)),state_after((17,5)),state_after((18,6)),state_after((18,7))}, {state_before((14,6)).action(up).wall((14, 7)). }).
#pos({}, {state_after((14,6)),state_after((13,5)),state_after((14,4)),state_after((14,5))}, {state_before((14,5)).action(right).wall((14, 4)). }).
#pos({}, {state_after((15,6)),state_after((14,5)),state_after((15,4)),state_after((15,5))}, {state_before((15,5)).action(right).wall((15, 4)). }).
#pos({}, {state_after((17,5)),state_after((16,6)),state_after((15,5)),state_after((16,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5)),state_after((13,5)),state_after((14,5)),state_after((15,5)),state_after((17,5)),state_after((18,6)),state_after((18,7))}, {state_before((16,5)).action(up).wall((16, 4)). }).
#pos({}, {state_after((17,5)),state_after((15,5)),state_after((16,4)),state_after((16,5))}, {state_before((16,5)).action(down).wall((16, 4)). }).
#pos({}, {state_after((16,7)),state_after((15,6)),state_after((16,5)),state_after((16,6))}, {state_before((16,6)).action(right).wall((16, 7)). }).
#pos({}, {state_after((18,6)),state_after((17,7)),state_after((16,6)),state_after((17,5))}, {state_before((17,6)).action(down).wall((18, 6)). wall((17, 7)). }).
#pos({}, {state_after((18,6)),state_after((17,7)),state_after((17,5)),state_after((17,6))}, {state_before((17,6)).action(left).wall((18, 6)). wall((17, 7)). }).
#pos({}, {state_after((17,6)),state_after((16,7)),state_after((15,6)),state_after((16,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5)),state_after((13,5)),state_after((14,5)),state_after((15,5)),state_after((17,5)),state_after((18,6)),state_after((18,7))}, {state_before((16,6)).action(up).wall((16, 7)). }).
#pos({}, {state_after((16,6)),state_after((15,5)),state_after((16,4)),state_after((16,5))}, {state_before((16,5)).action(right).wall((16, 4)). }).
#pos({}, {state_after((18,5)),state_after((17,6)),state_after((17,4)),state_after((17,5))}, {state_before((17,5)).action(left).wall((18, 5)). wall((17, 4)). }).
#pos({}, {state_after((17,5)),state_after((16,6)),state_after((16,4)),state_after((16,5))}, {state_before((16,5)).action(left).wall((16, 4)). }).
#pos({}, {state_after((16,5)),state_after((15,6)),state_after((15,4)),state_after((15,5))}, {state_before((15,5)).action(left).wall((15, 4)). }).
#pos({}, {state_after((15,5)),state_after((13,5)),state_after((14,4)),state_after((14,5))}, {state_before((14,5)).action(down).wall((14, 4)). }).
#pos({}, {state_after((14,7)),state_after((13,6)),state_after((14,5)),state_after((14,6))}, {state_before((14,6)).action(right).wall((14, 7)). }).
#pos({}, {state_after((16,6)),state_after((15,7)),state_after((14,6)),state_after((15,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5)),state_after((13,5)),state_after((14,5)),state_after((16,5)),state_after((17,5)),state_after((18,6)),state_after((18,7))}, {state_before((15,6)).action(up).wall((15, 7)). }).
#pos({}, {state_after((15,6)),state_after((14,5)),state_after((15,4)),state_after((15,5))}, {state_before((15,5)).action(right).wall((15, 4)). }).
#pos({}, {state_after((17,5)),state_after((16,6)),state_after((16,4)),state_after((16,5))}, {state_before((16,5)).action(left).wall((16, 4)). }).
#pos({}, {state_after((16,5)),state_after((15,6)),state_after((15,4)),state_after((15,5))}, {state_before((15,5)).action(left).wall((15, 4)). }).
#pos({}, {state_after((15,5)),state_after((13,5)),state_after((14,4)),state_after((14,5))}, {state_before((14,5)).action(down).wall((14, 4)). }).
#pos({}, {state_after((14,7)),state_after((13,6)),state_after((14,5)),state_after((14,6))}, {state_before((14,6)).action(right).wall((14, 7)). }).
#pos({}, {state_after((16,6)),state_after((15,7)),state_after((15,5)),state_after((15,6))}, {state_before((15,6)).action(left).wall((15, 7)). }).
#pos({}, {state_after((15,6)),state_after((14,7)),state_after((13,6)),state_after((14,5))}, {state_before((14,6)).action(down).wall((14, 7)). }).
#pos({}, {state_after((14,7)),state_after((13,6)),state_after((14,5)),state_after((14,6))}, {state_before((14,6)).action(right).wall((14, 7)). }).
#pos({}, {state_after((16,6)),state_after((15,7)),state_after((14,6)),state_after((15,6)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5)),state_after((13,5)),state_after((14,5)),state_after((16,5)),state_after((17,5)),state_after((18,6)),state_after((18,7))}, {state_before((15,6)).action(up).wall((15, 7)). }).
#pos({}, {state_after((16,5)),state_after((15,6)),state_after((15,4)),state_after((15,5))}, {state_before((15,5)).action(left).wall((15, 4)). }).
#pos({}, {state_after((15,5)),state_after((14,6)),state_after((14,4)),state_after((14,5))}, {state_before((14,5)).action(left).wall((14, 4)). }).
#pos({}, {state_after((14,5)),state_after((13,6)),state_after((12,5)),state_after((13,4)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5)),state_after((14,5)),state_after((15,5)),state_after((16,5)),state_after((17,5)),state_after((18,6)),state_after((18,7))}, {state_before((13,5)).action(up).wall((13, 4)). }).
#pos({}, {state_after((14,5)),state_after((13,6)),state_after((13,4)),state_after((13,5))}, {state_before((13,5)).action(left).wall((13, 4)). }).
#pos({}, {state_after((12,6)),state_after((11,5)),state_after((12,4)),state_after((12,5))}, {state_before((12,5)).action(right).}).
#pos({}, {state_after((14,5)),state_after((13,6)),state_after((13,4)),state_after((13,5))}, {state_before((13,5)).action(left).wall((13, 4)). }).
#pos({}, {state_after((13,5)),state_after((12,6)),state_after((12,4)),state_after((12,5))}, {state_before((12,5)).action(left).}).
#pos({}, {state_after((11,6)),state_after((10,5)),state_after((11,4)),state_after((11,5))}, {state_before((11,5)).action(right).wall((11, 4)). }).
#pos({}, {state_after((13,5)),state_after((12,6)),state_after((11,5)),state_after((12,5)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5)),state_after((13,5)),state_after((14,5)),state_after((15,5)),state_after((16,5)),state_after((17,5)),state_after((18,6)),state_after((18,7))}, {state_before((12,5)).action(up).}).
#pos({}, {state_after((13,4)),state_after((11,4)),state_after((12,3)),state_after((12,4))}, {state_before((12,4)).action(down).wall((13, 4)). wall((11, 4)). }).
#pos({}, {state_after((12,6)),state_after((11,5)),state_after((12,4)),state_after((12,5))}, {state_before((12,5)).action(right).}).
#pos({}, {state_after((14,5)),state_after((13,6)),state_after((13,4)),state_after((13,5))}, {state_before((13,5)).action(left).wall((13, 4)). }).
#pos({}, {state_after((13,5)),state_after((12,6)),state_after((11,5)),state_after((12,5)),state_after((4,5)),state_after((5,5)),state_after((6,5)),state_after((7,5)),state_after((8,5)),state_after((9,5)),state_after((10,5)),state_after((11,5)),state_after((13,5)),state_after((14,5)),state_after((15,5)),state_after((16,5)),state_after((17,5)),state_after((18,6)),state_after((18,7))}, {state_before((12,5)).action(up).}).
#pos({state_after((12,4))}, {state_after((13,4)),state_after((12,5)),state_after((11,4)),state_after((12,3)),state_after((13,4))}, {state_before((12,4)).action(right).wall((13, 4)). wall((11, 4)). }).
#pos({state_after((12,4))}, {state_after((13,4)),state_after((12,5)),state_after((11,4)),state_after((12,3)),state_after((11,4))}, {state_before((12,4)).action(left).wall((13, 4)). wall((11, 4)). }).
#pos({}, {state_after((13,4)),state_after((12,5)),state_after((11,4)),state_after((12,3)),state_after((3,4)),state_after((4,4)),state_after((5,4)),state_after((6,4)),state_after((7,4)),state_after((8,4)),state_after((9,4)),state_after((10,4)),state_after((13,4)),state_after((14,4)),state_after((15,4)),state_after((16,4)),state_after((17,5)),state_after((17,6)),state_after((1,7)),state_after((2,7)),state_after((3,7)),state_after((4,7)),state_after((5,7)),state_after((6,7)),state_after((7,7)),state_after((8,7)),state_after((9,7)),state_after((10,7)),state_after((11,7)),state_after((12,7)),state_after((13,7)),state_after((14,7)),state_after((15,7)),state_after((16,7))}, {state_before((12,4)).action(right).wall((13, 4)). wall((11, 4)). }).
