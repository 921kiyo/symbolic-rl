%ILASP

%state_after(V1) :- link_start(V0), link_dest(V1), state_before(V0).
%state_after(V0) :- adjacent(left, V0, V1), action(right), wall(V1).
%state_after(V1) :- adjacent(left, V0, V1), state_before(V0), action(right), not wall(V1).
%state_after(V0) :- adjacent(left, V0, V1), state_before(V1), action(left), not wall(V0).
%state_after(V1) :- adjacent(up, V0, V1), state_before(V0), action(down), not wall(V1).
%state_after(V0) :- adjacent(up, V0, V1), state_before(V1), action(up), not wall(V0).
%state_after(V1) :- adjacent(left, V0, V1), state_before(V1), action(left), wall(V0).
%state_after(V1) :- adjacent(down, V0, V1), state_before(V1), action(down), wall(V0).
%state_after(V1) :- adjacent(up, V0, V1), state_before(V1), action(up), wall(V0).
cell((0..12, 0..8)).
#modeb(1, link_start(var(cell)), (positive)).
#modeb(1, link_dest(var(cell)), (positive)).
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
#pos({state_after((1,6))}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5))}, {state_before((1,6)).action(down).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5))}, {state_before((1,6)).action(down).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({state_after((2,6))}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((1,6))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({state_after((1,6))}, {state_after((3,6)),state_after((2,7)),state_after((2,5)),state_after((2,6))}, {state_before((2,6)).action(left).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((2,5)),state_after((2,6))}, {state_before((2,6)).action(left).wall((2, 7)). wall((2, 5)). }).
#pos({state_after((1,6))}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((0,6))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5))}, {state_before((1,6)).action(down).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((2,7)),state_after((2,5)),state_after((3,7)),state_after((3,5))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({state_after((1,6))}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5))}, {state_before((1,6)).action(down).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5))}, {state_before((1,6)).action(down).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5))}, {state_before((1,6)).action(down).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((1,6))}, {state_before((2,6)).action(down).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6))}, {state_before((3,6)).action(right).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((4,5)),state_after((4,6))}, {state_before((4,6)).action(left).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((3,5)),state_after((3,6))}, {state_before((3,6)).action(left).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5))}, {state_before((3,6)).action(down).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5))}, {state_before((3,6)).action(down).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5))}, {state_before((3,6)).action(down).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((3,5)),state_after((3,6))}, {state_before((3,6)).action(left).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((3,5)),state_after((3,6))}, {state_before((3,6)).action(left).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((2,5)),state_after((2,6))}, {state_before((2,6)).action(left).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5))}, {state_before((1,6)).action(down).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5))}, {state_before((1,6)).action(down).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5))}, {state_before((2,6)).action(down).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6))}, {state_before((3,6)).action(right).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6))}, {state_before((4,6)).action(right).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((5,5)),state_after((5,6))}, {state_before((5,6)).action(left).wall((5, 7)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6))}, {state_before((4,6)).action(right).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((5,5)),state_after((5,6))}, {state_before((5,6)).action(left).wall((5, 7)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((4,5)),state_after((4,6))}, {state_before((4,6)).action(left).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6))}, {state_before((3,6)).action(right).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((4,5)),state_after((4,6))}, {state_before((4,6)).action(left).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((3,5)),state_after((3,6))}, {state_before((3,6)).action(left).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5))}, {state_before((2,6)).action(down).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5))}, {state_before((2,6)).action(down).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5))}, {state_before((2,6)).action(down).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((2,5)),state_after((2,6))}, {state_before((2,6)).action(left).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5))}, {state_before((2,6)).action(down).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((2,5)),state_after((2,6))}, {state_before((2,6)).action(left).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5))}, {state_before((1,6)).action(down).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5))}, {state_before((2,6)).action(down).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((2,5)),state_after((2,6))}, {state_before((2,6)).action(left).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5))}, {state_before((1,6)).action(down).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5))}, {state_before((3,6)).action(down).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((3,5)),state_after((3,6))}, {state_before((3,6)).action(left).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5))}, {state_before((2,6)).action(down).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((2,5)),state_after((2,6))}, {state_before((2,6)).action(left).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5))}, {state_before((3,6)).action(down).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5))}, {state_before((3,6)).action(down).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5))}, {state_before((3,6)).action(down).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((3,5)),state_after((3,6))}, {state_before((3,6)).action(left).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((2,5)),state_after((2,6))}, {state_before((2,6)).action(left).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5))}, {state_before((2,6)).action(down).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((2,5)),state_after((2,6))}, {state_before((2,6)).action(left).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5))}, {state_before((1,6)).action(down).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5))}, {state_before((1,6)).action(down).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5))}, {state_before((1,6)).action(down).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((2,5)),state_after((2,6))}, {state_before((2,6)).action(left).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5))}, {state_before((3,6)).action(down).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5))}, {state_before((3,6)).action(down).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5))}, {state_before((3,6)).action(down).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6))}, {state_before((3,6)).action(right).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5))}, {state_before((4,6)).action(down).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6))}, {state_before((4,6)).action(right).wall((4, 7)). wall((4, 5)). }).
#pos({state_after((5,5))}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((5,6))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((4,5)),state_after((5,5)),state_after((1,6)),state_after((2,6)),state_after((3,6)),state_after((4,6)),state_after((6,6)),state_after((0,7))}, {state_before((5,5)).action(up).wall((6, 5)). wall((4, 5)). }).
#pos({state_after((5,5))}, {state_after((6,4)),state_after((4,4)),state_after((5,3)),state_after((5,4)),state_after((5,4))}, {state_before((5,4)).action(down).wall((6, 4)). wall((4, 4)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((4,5)),state_after((5,5))}, {state_before((5,5)).action(up).wall((6, 5)). wall((4, 5)). }).
link_start((5,3)). link_dest((10,3)). 
#pos({state_after((5,3))}, {}, {state_before((5,4)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({state_after((10,3))}, {state_after((6,4)),state_after((5,5)),state_after((4,4)),state_after((5,3)),state_after((5,4))}, {state_before((5,3)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({state_after((10,3))}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,2)),state_after((11,3))}, {state_before((10,3)).action(right).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({state_after((10,3))}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,2))}, {state_before((10,3)).action(right).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,2)),state_after((9,2)),state_after((11,2)),state_after((4,3)),state_after((6,3)),state_after((1,4)),state_after((2,4)),state_after((3,4)),state_after((4,4)),state_after((6,4)),state_after((0,5)),state_after((1,6)),state_after((2,6)),state_after((3,6)),state_after((4,6)),state_after((5,6))}, {state_before((10,3)).action(down).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({state_after((10,3))}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,2)),state_after((9,4)),state_after((11,4)),state_after((4,5)),state_after((6,5)),state_after((10,5)),state_after((1,6)),state_after((2,6)),state_after((3,6)),state_after((4,6)),state_after((6,6)),state_after((0,7))}, {state_before((10,3)).action(down).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({state_after((10,3))}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,2))}, {state_before((10,3)).action(right).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,3))}, {state_before((10,3)).action(up).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({}, {state_after((11,2)),state_after((9,2)),state_after((10,1)),state_after((10,2))}, {state_before((10,2)).action(down).wall((11, 2)). wall((9, 2)). }).
#pos({}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,3))}, {state_before((10,3)).action(up).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({}, {state_after((11,2)),state_after((10,3)),state_after((9,2)),state_after((10,2))}, {state_before((10,2)).action(up).wall((11, 2)). wall((9, 2)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(down).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(down).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3)), state_after((10,2)), state_after((10,1)), state_after((1,6))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(right).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6)),state_after((10,3))}, {state_before((4,6)).action(right).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((10,3)), state_after((10,2))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((4,5)),state_after((5,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((5,5)).action(up).wall((6, 5)). wall((4, 5)). }).
#pos({state_after((5,3))}, {}, {state_before((5,4)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({state_after((10,3))}, {state_after((6,4)),state_after((5,5)),state_after((4,4)),state_after((5,3)),state_after((5,4))}, {state_before((5,3)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,3)),state_after((10,3)), state_after((5,2))}, {state_before((10,3)).action(up).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({}, {state_after((11,2)),state_after((10,3)),state_after((9,2)),state_after((10,2)),state_after((10,3))}, {state_before((10,2)).action(up).wall((11, 2)). wall((9, 2)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(left).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((1,6))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(left).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3)), state_after((10,2)), state_after((1,6))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(right).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6)),state_after((10,3))}, {state_before((4,6)).action(right).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((10,3)), state_after((10,2))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((4,5)),state_after((5,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((5,5)).action(up).wall((6, 5)). wall((4, 5)). }).
#pos({state_after((5,3))}, {}, {state_before((5,4)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({state_after((10,3))}, {state_after((6,4)),state_after((5,5)),state_after((4,4)),state_after((5,3)),state_after((5,4))}, {state_before((5,3)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,3)),state_after((10,3)), state_after((5,2))}, {state_before((10,3)).action(up).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({}, {state_after((11,2)),state_after((10,3)),state_after((9,2)),state_after((10,2)),state_after((10,3)), state_after((10,2)), state_after((5,1))}, {state_before((10,2)).action(up).wall((11, 2)). wall((9, 2)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(left).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(right).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6)),state_after((10,3))}, {state_before((4,6)).action(right).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((10,3)), state_after((10,2))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((4,5)),state_after((5,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((5,5)).action(up).wall((6, 5)). wall((4, 5)). }).
#pos({state_after((5,3))}, {}, {state_before((5,4)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({state_after((10,3))}, {state_after((6,4)),state_after((5,5)),state_after((4,4)),state_after((5,3)),state_after((5,4))}, {state_before((5,3)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,3)),state_after((10,3)), state_after((5,2))}, {state_before((10,3)).action(up).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({}, {state_after((11,2)),state_after((10,3)),state_after((9,2)),state_after((10,2)),state_after((10,3)), state_after((10,2)), state_after((5,1))}, {state_before((10,2)).action(up).wall((11, 2)). wall((9, 2)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3)), state_after((1,6))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(right).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6)),state_after((10,3))}, {state_before((4,6)).action(right).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((10,3)), state_after((10,2))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((4,5)),state_after((5,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((5,5)).action(up).wall((6, 5)). wall((4, 5)). }).
#pos({state_after((5,3))}, {}, {state_before((5,4)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({state_after((10,3))}, {state_after((6,4)),state_after((5,5)),state_after((4,4)),state_after((5,3)),state_after((5,4))}, {state_before((5,3)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,3)),state_after((10,3)), state_after((5,2))}, {state_before((10,3)).action(up).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({}, {state_after((11,2)),state_after((10,3)),state_after((9,2)),state_after((10,2)),state_after((10,3)), state_after((10,2)), state_after((5,1))}, {state_before((10,2)).action(up).wall((11, 2)). wall((9, 2)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3)), state_after((10,2)), state_after((1,6))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(right).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6)),state_after((10,3))}, {state_before((4,6)).action(right).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((10,3)), state_after((10,2))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((4,5)),state_after((5,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((5,5)).action(up).wall((6, 5)). wall((4, 5)). }).
#pos({state_after((5,3))}, {}, {state_before((5,4)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({state_after((10,3))}, {state_after((6,4)),state_after((5,5)),state_after((4,4)),state_after((5,3)),state_after((5,4))}, {state_before((5,3)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,3)),state_after((10,3)), state_after((5,2))}, {state_before((10,3)).action(up).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({}, {state_after((11,2)),state_after((10,3)),state_after((9,2)),state_after((10,2)),state_after((10,3)), state_after((10,2)), state_after((5,1))}, {state_before((10,2)).action(up).wall((11, 2)). wall((9, 2)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3)), state_after((10,2)), state_after((10,1)), state_after((1,6))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(left).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(left).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(right).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6)),state_after((10,3))}, {state_before((4,6)).action(right).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((10,3)), state_after((10,2))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((4,5)),state_after((5,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((5,5)).action(up).wall((6, 5)). wall((4, 5)). }).
#pos({state_after((5,3))}, {}, {state_before((5,4)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({state_after((10,3))}, {state_after((6,4)),state_after((5,5)),state_after((4,4)),state_after((5,3)),state_after((5,4))}, {state_before((5,3)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,3)),state_after((10,3)), state_after((5,2))}, {state_before((10,3)).action(up).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({}, {state_after((11,2)),state_after((10,3)),state_after((9,2)),state_after((10,2)),state_after((10,3))}, {state_before((10,2)).action(up).wall((11, 2)). wall((9, 2)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(left).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3)), state_after((10,2)), state_after((10,1)), state_after((2,6))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(left).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(right).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6)),state_after((10,3))}, {state_before((4,6)).action(right).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((10,3)), state_after((10,2))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((4,5)),state_after((5,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((5,5)).action(up).wall((6, 5)). wall((4, 5)). }).
#pos({state_after((5,3))}, {}, {state_before((5,4)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({state_after((10,3))}, {state_after((6,4)),state_after((5,5)),state_after((4,4)),state_after((5,3)),state_after((5,4))}, {state_before((5,3)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,3)),state_after((10,3)), state_after((5,2))}, {state_before((10,3)).action(up).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({}, {state_after((11,2)),state_after((10,3)),state_after((9,2)),state_after((10,2)),state_after((10,3)), state_after((10,2)), state_after((5,1))}, {state_before((10,2)).action(up).wall((11, 2)). wall((9, 2)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3)), state_after((1,6))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((3,5)),state_after((3,6)),state_after((10,3)), state_after((4,6))}, {state_before((3,6)).action(left).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(right).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6)),state_after((10,3))}, {state_before((4,6)).action(right).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((10,3)), state_after((10,2))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((4,5)),state_after((5,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((5,5)).action(up).wall((6, 5)). wall((4, 5)). }).
#pos({state_after((5,3))}, {}, {state_before((5,4)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({state_after((10,3))}, {state_after((6,4)),state_after((5,5)),state_after((4,4)),state_after((5,3)),state_after((5,4))}, {state_before((5,3)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,3)),state_after((10,3)), state_after((5,2))}, {state_before((10,3)).action(up).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({}, {state_after((11,2)),state_after((10,3)),state_after((9,2)),state_after((10,2)),state_after((10,3)), state_after((10,2)), state_after((5,1))}, {state_before((10,2)).action(up).wall((11, 2)). wall((9, 2)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(left).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(right).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6)),state_after((10,3)), state_after((10,2)), state_after((10,1)), state_after((4,6))}, {state_before((4,6)).action(right).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((10,3))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((4,5)),state_after((5,5)),state_after((10,3)), state_after((10,2))}, {state_before((5,5)).action(up).wall((6, 5)). wall((4, 5)). }).
#pos({state_after((5,3))}, {}, {state_before((5,4)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({state_after((10,3))}, {state_after((6,4)),state_after((5,5)),state_after((4,4)),state_after((5,3)),state_after((5,4))}, {state_before((5,3)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,3)),state_after((10,3))}, {state_before((10,3)).action(up).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({}, {state_after((11,2)),state_after((10,3)),state_after((9,2)),state_after((10,2)),state_after((10,3)), state_after((10,2))}, {state_before((10,2)).action(up).wall((11, 2)). wall((9, 2)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(left).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(right).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6)),state_after((10,3))}, {state_before((4,6)).action(right).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((10,3)), state_after((10,2))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((4,5)),state_after((5,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((5,5)).action(up).wall((6, 5)). wall((4, 5)). }).
#pos({state_after((5,3))}, {}, {state_before((5,4)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({state_after((10,3))}, {state_after((6,4)),state_after((5,5)),state_after((4,4)),state_after((5,3)),state_after((5,4))}, {state_before((5,3)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,3)),state_after((10,3)), state_after((5,2))}, {state_before((10,3)).action(up).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({}, {state_after((11,2)),state_after((10,3)),state_after((9,2)),state_after((10,2)),state_after((10,3)), state_after((10,2)), state_after((5,1))}, {state_before((10,2)).action(up).wall((11, 2)). wall((9, 2)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(left).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((4,6))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(right).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6)),state_after((10,3))}, {state_before((4,6)).action(right).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((10,3)), state_after((10,2))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((4,5)),state_after((5,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((5,5)).action(up).wall((6, 5)). wall((4, 5)). }).
#pos({state_after((5,3))}, {}, {state_before((5,4)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({state_after((10,3))}, {state_after((6,4)),state_after((5,5)),state_after((4,4)),state_after((5,3)),state_after((5,4))}, {state_before((5,3)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,3)),state_after((10,3)), state_after((5,2))}, {state_before((10,3)).action(up).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({}, {state_after((11,2)),state_after((10,3)),state_after((9,2)),state_after((10,2)),state_after((10,3)), state_after((10,2)), state_after((5,1))}, {state_before((10,2)).action(up).wall((11, 2)). wall((9, 2)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(left).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(left).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(right).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6)),state_after((10,3))}, {state_before((4,6)).action(right).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((10,3)), state_after((10,2))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((4,5)),state_after((5,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((5,5)).action(up).wall((6, 5)). wall((4, 5)). }).
#pos({state_after((5,3))}, {}, {state_before((5,4)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({state_after((10,3))}, {state_after((6,4)),state_after((5,5)),state_after((4,4)),state_after((5,3)),state_after((5,4))}, {state_before((5,3)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,3)),state_after((10,3)), state_after((5,2))}, {state_before((10,3)).action(up).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({}, {state_after((11,2)),state_after((10,3)),state_after((9,2)),state_after((10,2)),state_after((10,3)), state_after((10,2)), state_after((5,1))}, {state_before((10,2)).action(up).wall((11, 2)). wall((9, 2)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3)), state_after((10,2)), state_after((1,6))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(right).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6)),state_after((10,3))}, {state_before((4,6)).action(right).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((10,3)), state_after((10,2))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((4,5)),state_after((5,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((5,5)).action(up).wall((6, 5)). wall((4, 5)). }).
#pos({state_after((5,3))}, {}, {state_before((5,4)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({state_after((10,3))}, {state_after((6,4)),state_after((5,5)),state_after((4,4)),state_after((5,3)),state_after((5,4))}, {state_before((5,3)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,3)),state_after((10,3)), state_after((5,2))}, {state_before((10,3)).action(up).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({}, {state_after((11,2)),state_after((10,3)),state_after((9,2)),state_after((10,2)),state_after((10,3)), state_after((10,2)), state_after((5,1))}, {state_before((10,2)).action(up).wall((11, 2)). wall((9, 2)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(left).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(right).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6)),state_after((10,3))}, {state_before((4,6)).action(right).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((10,3)), state_after((10,2))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((4,5)),state_after((5,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((5,5)).action(up).wall((6, 5)). wall((4, 5)). }).
#pos({state_after((5,3))}, {}, {state_before((5,4)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({state_after((10,3))}, {state_after((6,4)),state_after((5,5)),state_after((4,4)),state_after((5,3)),state_after((5,4))}, {state_before((5,3)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,3)),state_after((10,3)), state_after((5,2))}, {state_before((10,3)).action(up).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({}, {state_after((11,2)),state_after((10,3)),state_after((9,2)),state_after((10,2)),state_after((10,3)), state_after((10,2)), state_after((5,1))}, {state_before((10,2)).action(up).wall((11, 2)). wall((9, 2)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(down).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(down).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(left).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(right).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6)),state_after((10,3))}, {state_before((4,6)).action(right).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((10,3))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((4,5)),state_after((5,5)),state_after((10,3)), state_after((10,2))}, {state_before((5,5)).action(up).wall((6, 5)). wall((4, 5)). }).
#pos({state_after((5,3))}, {}, {state_before((5,4)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({state_after((10,3))}, {state_after((6,4)),state_after((5,5)),state_after((4,4)),state_after((5,3)),state_after((5,4))}, {state_before((5,3)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,3)),state_after((10,3))}, {state_before((10,3)).action(up).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({}, {state_after((11,2)),state_after((10,3)),state_after((9,2)),state_after((10,2)),state_after((10,3)), state_after((10,2))}, {state_before((10,2)).action(up).wall((11, 2)). wall((9, 2)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(left).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(right).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6)),state_after((10,3))}, {state_before((4,6)).action(right).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((10,3)), state_after((10,2))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((4,5)),state_after((5,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((5,5)).action(up).wall((6, 5)). wall((4, 5)). }).
#pos({state_after((5,3))}, {}, {state_before((5,4)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({state_after((10,3))}, {state_after((6,4)),state_after((5,5)),state_after((4,4)),state_after((5,3)),state_after((5,4))}, {state_before((5,3)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,3)),state_after((10,3)), state_after((5,2))}, {state_before((10,3)).action(up).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({}, {state_after((11,2)),state_after((10,3)),state_after((9,2)),state_after((10,2)),state_after((10,3)), state_after((10,2)), state_after((5,1))}, {state_before((10,2)).action(up).wall((11, 2)). wall((9, 2)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(down).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(left).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(right).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6)),state_after((10,3))}, {state_before((4,6)).action(right).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((10,3)), state_after((10,2))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((4,5)),state_after((5,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((5,5)).action(up).wall((6, 5)). wall((4, 5)). }).
#pos({state_after((5,3))}, {}, {state_before((5,4)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({state_after((10,3))}, {state_after((6,4)),state_after((5,5)),state_after((4,4)),state_after((5,3)),state_after((5,4))}, {state_before((5,3)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,3)),state_after((10,3)), state_after((5,2))}, {state_before((10,3)).action(up).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({}, {state_after((11,2)),state_after((10,3)),state_after((9,2)),state_after((10,2)),state_after((10,3)), state_after((10,2)), state_after((5,1))}, {state_before((10,2)).action(up).wall((11, 2)). wall((9, 2)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(left).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(right).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6)),state_after((10,3))}, {state_before((4,6)).action(right).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((10,3)), state_after((10,2))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((4,5)),state_after((5,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((5,5)).action(up).wall((6, 5)). wall((4, 5)). }).
#pos({state_after((5,3))}, {}, {state_before((5,4)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({state_after((10,3))}, {state_after((6,4)),state_after((5,5)),state_after((4,4)),state_after((5,3)),state_after((5,4))}, {state_before((5,3)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,3)),state_after((10,3)), state_after((5,2))}, {state_before((10,3)).action(up).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({}, {state_after((11,2)),state_after((10,3)),state_after((9,2)),state_after((10,2)),state_after((10,3)), state_after((10,2)), state_after((5,1))}, {state_before((10,2)).action(up).wall((11, 2)). wall((9, 2)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(left).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(right).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6)),state_after((10,3))}, {state_before((4,6)).action(right).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((10,3)), state_after((10,2))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((4,5)),state_after((5,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((5,5)).action(up).wall((6, 5)). wall((4, 5)). }).
#pos({state_after((5,3))}, {}, {state_before((5,4)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({state_after((10,3))}, {state_after((6,4)),state_after((5,5)),state_after((4,4)),state_after((5,3)),state_after((5,4))}, {state_before((5,3)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,3)),state_after((10,3)), state_after((5,2))}, {state_before((10,3)).action(up).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({}, {state_after((11,2)),state_after((10,3)),state_after((9,2)),state_after((10,2)),state_after((10,3)), state_after((10,2)), state_after((5,1))}, {state_before((10,2)).action(up).wall((11, 2)). wall((9, 2)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((2,5)),state_after((2,6)),state_after((10,3)), state_after((10,2)), state_after((2,6))}, {state_before((2,6)).action(left).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(left).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(right).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6)),state_after((10,3))}, {state_before((4,6)).action(right).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((10,3)), state_after((10,2))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((4,5)),state_after((5,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((5,5)).action(up).wall((6, 5)). wall((4, 5)). }).
#pos({state_after((5,3))}, {}, {state_before((5,4)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({state_after((10,3))}, {state_after((6,4)),state_after((5,5)),state_after((4,4)),state_after((5,3)),state_after((5,4))}, {state_before((5,3)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,3)),state_after((10,3)), state_after((5,2))}, {state_before((10,3)).action(up).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({}, {state_after((11,2)),state_after((10,3)),state_after((9,2)),state_after((10,2)),state_after((10,3)), state_after((10,2)), state_after((5,1))}, {state_before((10,2)).action(up).wall((11, 2)). wall((9, 2)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(left).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(right).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6)),state_after((10,3))}, {state_before((4,6)).action(right).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((10,3)), state_after((10,2))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((4,5)),state_after((5,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((5,5)).action(up).wall((6, 5)). wall((4, 5)). }).
#pos({state_after((5,3))}, {}, {state_before((5,4)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({state_after((10,3))}, {state_after((6,4)),state_after((5,5)),state_after((4,4)),state_after((5,3)),state_after((5,4))}, {state_before((5,3)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,3)),state_after((10,3)), state_after((5,2))}, {state_before((10,3)).action(up).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({}, {state_after((11,2)),state_after((10,3)),state_after((9,2)),state_after((10,1)),state_after((10,3)), state_after((10,1)), state_after((5,1))}, {state_before((10,2)).action(left).wall((11, 2)). wall((9, 2)). }).
#pos({}, {state_after((11,2)),state_after((10,3)),state_after((9,2)),state_after((10,2)),state_after((10,3))}, {state_before((10,2)).action(up).wall((11, 2)). wall((9, 2)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(left).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(right).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6)),state_after((10,3))}, {state_before((4,6)).action(right).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((10,3)), state_after((10,2))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((4,5)),state_after((5,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((5,5)).action(up).wall((6, 5)). wall((4, 5)). }).
#pos({state_after((5,3))}, {}, {state_before((5,4)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({state_after((10,3))}, {state_after((6,4)),state_after((5,5)),state_after((4,4)),state_after((5,3)),state_after((5,4))}, {state_before((5,3)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,3)),state_after((10,3)), state_after((5,2))}, {state_before((10,3)).action(up).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({}, {state_after((11,2)),state_after((10,3)),state_after((9,2)),state_after((10,2)),state_after((10,3)), state_after((10,2)), state_after((5,1))}, {state_before((10,2)).action(up).wall((11, 2)). wall((9, 2)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(left).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(right).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6)),state_after((10,3))}, {state_before((4,6)).action(right).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((10,3)), state_after((10,2))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((4,5)),state_after((5,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((5,5)).action(up).wall((6, 5)). wall((4, 5)). }).
#pos({state_after((5,3))}, {}, {state_before((5,4)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({state_after((10,3))}, {state_after((6,4)),state_after((5,5)),state_after((4,4)),state_after((5,3)),state_after((5,4))}, {state_before((5,3)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,3)),state_after((10,3)), state_after((5,2))}, {state_before((10,3)).action(up).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({}, {state_after((11,2)),state_after((10,3)),state_after((9,2)),state_after((10,2)),state_after((10,3)), state_after((10,2)), state_after((5,1))}, {state_before((10,2)).action(up).wall((11, 2)). wall((9, 2)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(left).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(right).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6)),state_after((10,3))}, {state_before((4,6)).action(right).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((10,3)), state_after((10,2))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((4,5)),state_after((5,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((5,5)).action(up).wall((6, 5)). wall((4, 5)). }).
#pos({state_after((5,3))}, {}, {state_before((5,4)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({state_after((10,3))}, {state_after((6,4)),state_after((5,5)),state_after((4,4)),state_after((5,3)),state_after((5,4))}, {state_before((5,3)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,3)),state_after((10,3)), state_after((5,2))}, {state_before((10,3)).action(up).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({}, {state_after((11,2)),state_after((10,3)),state_after((9,2)),state_after((10,2)),state_after((10,3)), state_after((10,2)), state_after((5,1))}, {state_before((10,2)).action(up).wall((11, 2)). wall((9, 2)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((3,5)),state_after((3,6)),state_after((10,3)), state_after((10,2)), state_after((10,1)), state_after((3,6))}, {state_before((3,6)).action(left).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(left).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(right).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6)),state_after((10,3))}, {state_before((4,6)).action(right).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((10,3)), state_after((10,2))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((4,5)),state_after((5,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((5,5)).action(up).wall((6, 5)). wall((4, 5)). }).
#pos({state_after((5,3))}, {}, {state_before((5,4)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({state_after((10,3))}, {state_after((6,4)),state_after((5,5)),state_after((4,4)),state_after((5,3)),state_after((5,4))}, {state_before((5,3)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,3)),state_after((10,3)), state_after((5,2))}, {state_before((10,3)).action(up).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({}, {state_after((11,2)),state_after((10,3)),state_after((9,2)),state_after((10,2)),state_after((10,3)), state_after((10,2)), state_after((5,1))}, {state_before((10,2)).action(up).wall((11, 2)). wall((9, 2)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((2,6))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(left).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(right).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6)),state_after((10,3))}, {state_before((4,6)).action(right).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((10,3)), state_after((10,2))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((4,5)),state_after((5,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((5,5)).action(up).wall((6, 5)). wall((4, 5)). }).
#pos({state_after((5,3))}, {}, {state_before((5,4)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({state_after((10,3))}, {state_after((6,4)),state_after((5,5)),state_after((4,4)),state_after((5,3)),state_after((5,4))}, {state_before((5,3)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,3)),state_after((10,3)), state_after((5,2))}, {state_before((10,3)).action(up).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({}, {state_after((11,2)),state_after((10,3)),state_after((9,2)),state_after((10,2)),state_after((10,3)), state_after((10,2)), state_after((5,1))}, {state_before((10,2)).action(up).wall((11, 2)). wall((9, 2)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(left).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(right).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6)),state_after((10,3))}, {state_before((4,6)).action(right).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((10,3)), state_after((10,2))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((4,5)),state_after((5,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((5,5)).action(up).wall((6, 5)). wall((4, 5)). }).
#pos({state_after((5,3))}, {}, {state_before((5,4)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({state_after((10,3))}, {state_after((6,4)),state_after((5,5)),state_after((4,4)),state_after((5,3)),state_after((5,4))}, {state_before((5,3)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,3)),state_after((10,3)), state_after((5,2))}, {state_before((10,3)).action(up).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
#pos({}, {state_after((11,2)),state_after((10,3)),state_after((9,2)),state_after((10,2)),state_after((10,3)), state_after((10,2)), state_after((5,1))}, {state_before((10,2)).action(up).wall((11, 2)). wall((9, 2)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3))}, {state_before((1,6)).action(left).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((2,6)),state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((1,6)).action(up).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((1,7)),state_after((0,6)),state_after((1,5)),state_after((1,6)),state_after((10,3))}, {state_before((1,6)).action(right).wall((1, 7)). wall((0, 6)). wall((1, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(left).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((3,6)),state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((2,6)).action(up).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((2,7)),state_after((1,6)),state_after((2,5)),state_after((2,6)),state_after((10,3))}, {state_before((2,6)).action(right).wall((2, 7)). wall((2, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((4,6)),state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((3,6)).action(up).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((3,7)),state_after((2,6)),state_after((3,5)),state_after((3,6)),state_after((10,3))}, {state_before((3,6)).action(right).wall((3, 7)). wall((3, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((4,6)).action(up).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((4,6)),state_after((10,3))}, {state_before((4,6)).action(right).wall((4, 7)). wall((4, 5)). }).
#pos({}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6)),state_after((10,3)), state_after((10,2))}, {state_before((5,6)).action(up).wall((5, 7)). }).
#pos({}, {state_after((6,5)),state_after((5,6)),state_after((4,5)),state_after((5,5)),state_after((10,3)), state_after((10,2)), state_after((10,1))}, {state_before((5,5)).action(up).wall((6, 5)). wall((4, 5)). }).
#pos({state_after((5,3))}, {}, {state_before((5,4)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({state_after((10,3))}, {state_after((6,4)),state_after((5,5)),state_after((4,4)),state_after((5,3)),state_after((5,4))}, {state_before((5,3)).action(up).wall((6, 4)). wall((4, 4)). }).
#pos({state_after((10,3))}, {state_after((11,3)),state_after((10,4)),state_after((9,3)),state_after((10,2)),state_after((10,2)), state_after((5,2))}, {state_before((10,3)).action(down).wall((11, 3)). wall((10, 4)). wall((9, 3)). }).
