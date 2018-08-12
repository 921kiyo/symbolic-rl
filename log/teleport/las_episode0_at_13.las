%ILASP

%state_after(V0) :- link_dest(V0), action(up).
%state_after(V1) :- link_start(V0), link_dest(V1), state_before(V0).
%state_after(V1) :- link_dest(V0), adjacent(up, V0, V1), action(down).
%state_after(V0) :- link_dest(V0), state_before(V0), action(left).
%state_after(V0) :- adjacent(left, V0, V1), action(right), wall(V1).
%state_after(V1) :- adjacent(left, V0, V1), state_before(V0), action(right), not wall(V1).
%state_after(V0) :- adjacent(left, V0, V1), state_before(V1), action(left), not wall(V0).
%state_after(V0) :- adjacent(up, V0, V1), state_before(V0), action(down), wall(V1).
cell((0..19, 0..11)).
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

#max_penalty(100).

#constant(action, right).
#constant(action, left).
#constant(action, down).
#constant(action, up).
#pos({state_after((1,9))}, {state_after((2,9)),state_after((1,10)),state_after((0,9)),state_after((1,8))}, {state_before((1,9)).action(down).wall((1, 10)). wall((0, 9)). wall((1, 8)). }).
#pos({state_after((2,9))}, {state_after((1,10)),state_after((0,9)),state_after((1,8)),state_after((1,9)),state_after((1,9))}, {state_before((1,9)).action(right).wall((1, 10)). wall((0, 9)). wall((1, 8)). }).
link_start((3,9)). link_dest((17,8)). 
#pos({state_after((3,9))}, {}, {state_before((2,9)).action(right).wall((2, 10)). wall((2, 8)). }).
#pos({state_after((17,8))}, {state_after((3,9)),state_after((2,10)),state_after((1,9)),state_after((2,8)),state_after((2,9))}, {state_before((3,9)).action(right).wall((2, 10)). wall((2, 8)). }).
#pos({state_after((17,9))}, {state_after((18,8)),state_after((16,8)),state_after((17,7)),state_after((17,8)),state_after((17,8))}, {state_before((17,8)).action(down).wall((18, 8)). wall((16, 8)). wall((17, 7)). }).
#pos({}, {state_after((18,9)),state_after((17,10)),state_after((16,9)),state_after((17,8)),state_after((17,6)),state_after((1,7)),state_after((2,7)),state_after((16,7)),state_after((18,7)),state_after((0,8)),state_after((18,8)),state_after((1,9)),state_after((2,9))}, {state_before((17,9)).action(down).wall((18, 9)). wall((17, 10)). }).
#pos({state_after((17,9))}, {state_after((18,9)),state_after((17,10)),state_after((16,9)),state_after((17,8)),state_after((18,9))}, {state_before((17,9)).action(right).wall((18, 9)). wall((17, 10)). }).
#pos({state_after((17,8))}, {state_after((18,9)),state_after((17,10)),state_after((16,9)),state_after((17,9))}, {state_before((17,9)).action(up).wall((18, 9)). wall((17, 10)). }).
#pos({state_after((17,8))}, {state_after((18,8)),state_after((17,9)),state_after((16,8)),state_after((17,7))}, {state_before((17,8)).action(up).wall((18, 8)). wall((16, 8)). wall((17, 7)). }).
#pos({state_after((17,8))}, {state_after((18,8)),state_after((17,9)),state_after((16,8)),state_after((17,7))}, {state_before((17,8)).action(up).wall((18, 8)). wall((16, 8)). wall((17, 7)). }).
#pos({state_after((17,8))}, {state_after((18,8)),state_after((17,9)),state_after((16,8)),state_after((17,7))}, {state_before((17,8)).action(up).wall((18, 8)). wall((16, 8)). wall((17, 7)). }).
#pos({state_after((17,8))}, {state_after((18,8)),state_after((17,9)),state_after((16,8)),state_after((17,7))}, {state_before((17,8)).action(left).wall((18, 8)). wall((16, 8)). wall((17, 7)). }).
#pos({state_after((17,9))}, {state_after((18,8)),state_after((16,8)),state_after((17,7)),state_after((17,8))}, {state_before((17,8)).action(down).wall((18, 8)). wall((16, 8)). wall((17, 7)). }).
#pos({state_after((16,9))}, {state_after((18,9)),state_after((17,10)),state_after((17,8)),state_after((17,9))}, {state_before((17,9)).action(left).wall((18, 9)). wall((17, 10)). }).
#pos({}, {state_after((17,9)),state_after((16,10)),state_after((16,8)),state_after((16,9)),state_after((17,8)),state_after((1,9)),state_after((2,9)),state_after((16,9)),state_after((18,9)),state_after((0,10)),state_after((18,10))}, {state_before((16,9)).action(left).wall((16, 10)). wall((16, 8)). }).
