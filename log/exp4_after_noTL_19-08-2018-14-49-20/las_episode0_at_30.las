%ILASP

%state_after(V0) :- state_before(V0), action(down).
%state_after(V1) :- adjacent(left, V0, V1), state_before(V0), action(right).
%state_after(V1) :- adjacent(up, V0, V1), action(up), wall(V0).
%state_after(V1) :- adjacent(right, V0, V1), state_before(V0), action(left), not wall(V1).
%state_after(V1) :- adjacent(down, V0, V1), state_before(V0), action(up), not wall(V1).
%state_after(V1) :- adjacent(left, V0, V1), state_before(V1), action(left), wall(V0).
cell((0..18, 0..9)).
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
#pos({state_after((1,7))}, {state_after((2,7)),state_after((1,8)),state_after((0,7)),state_after((1,6))}, {state_before((1,7)).action(down).wall((1, 8)). wall((0, 7)). wall((1, 6)). }).
#pos({}, {state_after((2,7)),state_after((1,8)),state_after((0,7)),state_after((1,6))}, {state_before((1,7)).action(up).wall((1, 8)). wall((0, 7)). wall((1, 6)). }).
#pos({state_after((2,7))}, {state_after((1,8)),state_after((0,7)),state_after((1,6)),state_after((1,7)),state_after((1,7))}, {state_before((1,7)).action(right).wall((1, 8)). wall((0, 7)). wall((1, 6)). }).
#pos({}, {state_after((2,8)),state_after((1,7)),state_after((2,6)),state_after((2,7))}, {state_before((2,7)).action(right).wall((2, 8)). wall((2, 6)). }).
#pos({state_after((2,7))}, {state_after((4,7)),state_after((3,8)),state_after((3,6)),state_after((3,7))}, {state_before((3,7)).action(left).wall((3, 8)). wall((3, 6)). }).
#pos({state_after((2,7))}, {state_after((3,7)),state_after((2,8)),state_after((1,7)),state_after((2,6))}, {state_before((2,7)).action(up).wall((2, 8)). wall((2, 6)). }).
#pos({}, {state_after((3,7)),state_after((2,8)),state_after((1,7)),state_after((2,6))}, {state_before((2,7)).action(down).wall((2, 8)). wall((2, 6)). }).
#pos({}, {state_after((3,7)),state_after((2,8)),state_after((1,7)),state_after((2,6))}, {state_before((2,7)).action(up).wall((2, 8)). wall((2, 6)). }).
#pos({}, {state_after((2,8)),state_after((1,7)),state_after((2,6)),state_after((2,7))}, {state_before((2,7)).action(right).wall((2, 8)). wall((2, 6)). }).
#pos({}, {state_after((4,7)),state_after((3,8)),state_after((2,7)),state_after((3,6))}, {state_before((3,7)).action(up).wall((3, 8)). wall((3, 6)). }).
#pos({}, {state_after((4,7)),state_after((3,8)),state_after((3,6)),state_after((3,7))}, {state_before((3,7)).action(left).wall((3, 8)). wall((3, 6)). }).
#pos({}, {state_after((3,7)),state_after((2,8)),state_after((1,7)),state_after((2,6))}, {state_before((2,7)).action(up).wall((2, 8)). wall((2, 6)). }).
#pos({}, {state_after((3,7)),state_after((2,8)),state_after((1,7)),state_after((2,6))}, {state_before((2,7)).action(down).wall((2, 8)). wall((2, 6)). }).
#pos({}, {state_after((3,7)),state_after((2,8)),state_after((1,7)),state_after((2,6))}, {state_before((2,7)).action(down).wall((2, 8)). wall((2, 6)). }).
#pos({}, {state_after((3,7)),state_after((2,8)),state_after((2,6)),state_after((2,7))}, {state_before((2,7)).action(left).wall((2, 8)). wall((2, 6)). }).
#pos({state_after((1,7))}, {state_after((2,7)),state_after((1,8)),state_after((0,7)),state_after((1,6)),state_after((0,7))}, {state_before((1,7)).action(left).wall((1, 8)). wall((0, 7)). wall((1, 6)). }).
#pos({}, {state_after((2,7)),state_after((1,8)),state_after((0,7)),state_after((1,6))}, {state_before((1,7)).action(down).wall((1, 8)). wall((0, 7)). wall((1, 6)). }).
#pos({}, {state_after((2,7)),state_after((1,8)),state_after((0,7)),state_after((1,6))}, {state_before((1,7)).action(up).wall((1, 8)). wall((0, 7)). wall((1, 6)). }).
#pos({}, {state_after((2,7)),state_after((1,8)),state_after((0,7)),state_after((1,6)),state_after((2,8)),state_after((2,6)),state_after((3,8)),state_after((3,6)),state_after((4,8)),state_after((4,6))}, {state_before((1,7)).action(left).wall((1, 8)). wall((0, 7)). wall((1, 6)). }).
#pos({}, {state_after((2,7)),state_after((1,8)),state_after((0,7)),state_after((1,6))}, {state_before((1,7)).action(left).wall((1, 8)). wall((0, 7)). wall((1, 6)). }).
#pos({}, {state_after((2,7)),state_after((1,8)),state_after((0,7)),state_after((1,6))}, {state_before((1,7)).action(up).wall((1, 8)). wall((0, 7)). wall((1, 6)). }).
#pos({}, {state_after((2,7)),state_after((1,8)),state_after((0,7)),state_after((1,6))}, {state_before((1,7)).action(left).wall((1, 8)). wall((0, 7)). wall((1, 6)). }).
#pos({}, {state_after((2,7)),state_after((1,8)),state_after((0,7)),state_after((1,6))}, {state_before((1,7)).action(left).wall((1, 8)). wall((0, 7)). wall((1, 6)). }).
#pos({}, {state_after((2,7)),state_after((1,8)),state_after((0,7)),state_after((1,6))}, {state_before((1,7)).action(down).wall((1, 8)). wall((0, 7)). wall((1, 6)). }).
#pos({}, {state_after((2,7)),state_after((1,8)),state_after((0,7)),state_after((1,6))}, {state_before((1,7)).action(down).wall((1, 8)). wall((0, 7)). wall((1, 6)). }).
#pos({}, {state_after((1,8)),state_after((0,7)),state_after((1,6)),state_after((1,7))}, {state_before((1,7)).action(right).wall((1, 8)). wall((0, 7)). wall((1, 6)). }).
#pos({}, {state_after((2,8)),state_after((1,7)),state_after((2,6)),state_after((2,7))}, {state_before((2,7)).action(right).wall((2, 8)). wall((2, 6)). }).
#pos({}, {state_after((3,8)),state_after((2,7)),state_after((3,6)),state_after((3,7))}, {state_before((3,7)).action(right).wall((3, 8)). wall((3, 6)). }).
#pos({}, {state_after((4,8)),state_after((3,7)),state_after((4,6)),state_after((4,7))}, {state_before((4,7)).action(right).wall((4, 8)). }).
#pos({}, {state_after((6,7)),state_after((5,8)),state_after((5,6)),state_after((5,7))}, {state_before((5,7)).action(left).wall((5, 8)). wall((5, 6)). }).
#pos({state_after((4,6))}, {state_after((5,7)),state_after((4,8)),state_after((3,7)),state_after((4,7)),state_after((4,7))}, {state_before((4,7)).action(up).wall((4, 8)). }).
