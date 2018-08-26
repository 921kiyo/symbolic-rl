%ILASP

%state_after(V0) :- state_before(V0), action(down).
%state_after(V0) :- adjacent(left, V0, V1), action(right), wall(V1).
%state_after(V1) :- adjacent(right, V0, V1), state_before(V0), action(left), not wall(V1).
%state_after(V1) :- adjacent(left, V0, V1), state_before(V0), action(right), not wall(V1).
%state_after(V1) :- adjacent(down, V0, V1), state_before(V0), action(up), not wall(V1).
%state_after(V0) :- adjacent(right, V0, V1), state_before(V0), action(left), wall(V1).
%state_after(V1) :- adjacent(up, V0, V1), state_before(V1), action(up), wall(V0).
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
#pos({state_after((1,7))}, {state_after((2,7)),state_after((1,8)),state_after((0,7)),state_after((1,6))}, {state_before((1,7)).action(left).wall((1, 8)). wall((0, 7)). wall((1, 6)). }).
#pos({}, {state_after((2,7)),state_after((1,8)),state_after((0,7)),state_after((1,6))}, {state_before((1,7)).action(left).wall((1, 8)). wall((0, 7)). wall((1, 6)). }).
#pos({}, {state_after((2,7)),state_after((1,8)),state_after((0,7)),state_after((1,6))}, {state_before((1,7)).action(left).wall((1, 8)). wall((0, 7)). wall((1, 6)). }).
#pos({}, {state_after((2,7)),state_after((1,8)),state_after((0,7)),state_after((1,6))}, {state_before((1,7)).action(up).wall((1, 8)). wall((0, 7)). wall((1, 6)). }).
#pos({}, {state_after((2,7)),state_after((1,8)),state_after((0,7)),state_after((1,6))}, {state_before((1,7)).action(left).wall((1, 8)). wall((0, 7)). wall((1, 6)). }).
#pos({}, {state_after((2,7)),state_after((1,8)),state_after((0,7)),state_after((1,6))}, {state_before((1,7)).action(left).wall((1, 8)). wall((0, 7)). wall((1, 6)). }).
#pos({state_after((2,7))}, {state_after((1,8)),state_after((0,7)),state_after((1,6)),state_after((1,7)),state_after((1,7))}, {state_before((1,7)).action(right).wall((1, 8)). wall((0, 7)). wall((1, 6)). }).
#pos({state_after((1,7))}, {state_after((3,7)),state_after((2,8)),state_after((2,6)),state_after((2,7)),state_after((2,7))}, {state_before((2,7)).action(left).wall((2, 8)). wall((2, 6)). }).
#pos({state_after((1,7))}, {state_after((2,7)),state_after((1,8)),state_after((0,7)),state_after((1,6))}, {state_before((1,7)).action(down).wall((1, 8)). wall((0, 7)). wall((1, 6)). }).
#pos({}, {state_after((1,8)),state_after((0,7)),state_after((1,6)),state_after((1,7))}, {state_before((1,7)).action(right).wall((1, 8)). wall((0, 7)). wall((1, 6)). }).
#pos({state_after((2,7))}, {state_after((3,7)),state_after((2,8)),state_after((1,7)),state_after((2,6)),state_after((1,7))}, {state_before((2,7)).action(up).wall((2, 8)). wall((2, 6)). }).
#pos({}, {state_after((3,7)),state_after((2,8)),state_after((1,7)),state_after((2,6))}, {state_before((2,7)).action(up).wall((2, 8)). wall((2, 6)). }).
#pos({}, {state_after((3,7)),state_after((2,8)),state_after((1,7)),state_after((2,6))}, {state_before((2,7)).action(down).wall((2, 8)). wall((2, 6)). }).
#pos({}, {state_after((3,7)),state_after((2,8)),state_after((2,6)),state_after((2,7)),state_after((2,8)),state_after((2,6)),state_after((3,8)),state_after((3,6))}, {state_before((2,7)).action(left).wall((2, 8)). wall((2, 6)). }).
#pos({}, {state_after((1,8)),state_after((0,7)),state_after((1,6)),state_after((1,7))}, {state_before((1,7)).action(right).wall((1, 8)). wall((0, 7)). wall((1, 6)). }).
#pos({}, {state_after((3,7)),state_after((2,8)),state_after((1,7)),state_after((2,6))}, {state_before((2,7)).action(up).wall((2, 8)). wall((2, 6)). }).
#pos({}, {state_after((3,7)),state_after((2,8)),state_after((1,7)),state_after((2,6))}, {state_before((2,7)).action(down).wall((2, 8)). wall((2, 6)). }).
#pos({}, {state_after((2,8)),state_after((1,7)),state_after((2,6)),state_after((2,7))}, {state_before((2,7)).action(right).wall((2, 8)). wall((2, 6)). }).
#pos({}, {state_after((4,7)),state_after((3,8)),state_after((3,6)),state_after((3,7))}, {state_before((3,7)).action(left).wall((3, 8)). wall((3, 6)). }).
#pos({}, {state_after((3,7)),state_after((2,8)),state_after((1,7)),state_after((2,6))}, {state_before((2,7)).action(down).wall((2, 8)). wall((2, 6)). }).
#pos({}, {state_after((3,7)),state_after((2,8)),state_after((1,7)),state_after((2,6))}, {state_before((2,7)).action(down).wall((2, 8)). wall((2, 6)). }).
#pos({}, {state_after((3,7)),state_after((2,8)),state_after((1,7)),state_after((2,6))}, {state_before((2,7)).action(up).wall((2, 8)). wall((2, 6)). }).
#pos({}, {state_after((3,7)),state_after((2,8)),state_after((2,6)),state_after((2,7))}, {state_before((2,7)).action(left).wall((2, 8)). wall((2, 6)). }).
#pos({}, {state_after((1,8)),state_after((0,7)),state_after((1,6)),state_after((1,7))}, {state_before((1,7)).action(right).wall((1, 8)). wall((0, 7)). wall((1, 6)). }).
#pos({}, {state_after((2,8)),state_after((1,7)),state_after((2,6)),state_after((2,7))}, {state_before((2,7)).action(right).wall((2, 8)). wall((2, 6)). }).
#pos({}, {state_after((4,7)),state_after((3,8)),state_after((3,6)),state_after((3,7))}, {state_before((3,7)).action(left).wall((3, 8)). wall((3, 6)). }).
#pos({}, {state_after((3,7)),state_after((2,8)),state_after((2,6)),state_after((2,7))}, {state_before((2,7)).action(left).wall((2, 8)). wall((2, 6)). }).
#pos({}, {state_after((1,8)),state_after((0,7)),state_after((1,6)),state_after((1,7))}, {state_before((1,7)).action(right).wall((1, 8)). wall((0, 7)). wall((1, 6)). }).
#pos({}, {state_after((3,7)),state_after((2,8)),state_after((1,7)),state_after((2,6))}, {state_before((2,7)).action(up).wall((2, 8)). wall((2, 6)). }).
#pos({}, {state_after((3,7)),state_after((2,8)),state_after((1,7)),state_after((2,6))}, {state_before((2,7)).action(up).wall((2, 8)). wall((2, 6)). }).
#pos({}, {state_after((2,8)),state_after((1,7)),state_after((2,6)),state_after((2,7))}, {state_before((2,7)).action(right).wall((2, 8)). wall((2, 6)). }).
#pos({}, {state_after((3,8)),state_after((2,7)),state_after((3,6)),state_after((3,7))}, {state_before((3,7)).action(right).wall((3, 8)). wall((3, 6)). }).
#pos({}, {state_after((4,8)),state_after((3,7)),state_after((4,6)),state_after((4,7))}, {state_before((4,7)).action(right).wall((4, 8)). }).
#pos({}, {state_after((6,7)),state_after((5,8)),state_after((5,6)),state_after((5,7))}, {state_before((5,7)).action(left).wall((5, 8)). wall((5, 6)). }).
#pos({}, {state_after((5,7)),state_after((4,8)),state_after((4,6)),state_after((4,7))}, {state_before((4,7)).action(left).wall((4, 8)). }).
#pos({}, {state_after((4,7)),state_after((3,8)),state_after((2,7)),state_after((3,6))}, {state_before((3,7)).action(up).wall((3, 8)). wall((3, 6)). }).
#pos({}, {state_after((4,7)),state_after((3,8)),state_after((2,7)),state_after((3,6))}, {state_before((3,7)).action(up).wall((3, 8)). wall((3, 6)). }).
#pos({}, {state_after((4,7)),state_after((3,8)),state_after((2,7)),state_after((3,6))}, {state_before((3,7)).action(up).wall((3, 8)). wall((3, 6)). }).
#pos({}, {state_after((3,8)),state_after((2,7)),state_after((3,6)),state_after((3,7))}, {state_before((3,7)).action(right).wall((3, 8)). wall((3, 6)). }).
#pos({}, {state_after((4,8)),state_after((3,7)),state_after((4,6)),state_after((4,7))}, {state_before((4,7)).action(right).wall((4, 8)). }).
#pos({}, {state_after((5,8)),state_after((4,7)),state_after((5,6)),state_after((5,7))}, {state_before((5,7)).action(right).wall((5, 8)). wall((5, 6)). }).
#pos({state_after((6,6))}, {state_after((7,7)),state_after((6,8)),state_after((5,7)),state_after((6,7)),state_after((6,7))}, {state_before((6,7)).action(up).wall((6, 8)). }).
#pos({}, {state_after((2,7)),state_after((1,8)),state_after((0,7)),state_after((1,6)),state_after((2,7)),state_after((3,7)),state_after((5,7)),state_after((0,8))}, {state_before((1,7)).action(up).wall((1, 8)). wall((0, 7)). wall((1, 6)). }).
#pos({}, {state_after((1,8)),state_after((0,7)),state_after((1,6)),state_after((1,7))}, {state_before((1,7)).action(right).wall((1, 8)). wall((0, 7)). wall((1, 6)). }).
#pos({}, {state_after((3,7)),state_after((2,8)),state_after((1,7)),state_after((2,6))}, {state_before((2,7)).action(up).wall((2, 8)). wall((2, 6)). }).
#pos({}, {state_after((3,7)),state_after((2,8)),state_after((1,7)),state_after((2,6))}, {state_before((2,7)).action(up).wall((2, 8)). wall((2, 6)). }).
#pos({}, {state_after((3,7)),state_after((2,8)),state_after((1,7)),state_after((2,6))}, {state_before((2,7)).action(up).wall((2, 8)). wall((2, 6)). }).
#pos({}, {state_after((3,7)),state_after((2,8)),state_after((1,7)),state_after((2,6))}, {state_before((2,7)).action(up).wall((2, 8)). wall((2, 6)). }).
#pos({}, {state_after((3,7)),state_after((2,8)),state_after((1,7)),state_after((2,6))}, {state_before((2,7)).action(up).wall((2, 8)). wall((2, 6)). }).
#pos({}, {state_after((3,7)),state_after((2,8)),state_after((1,7)),state_after((2,6))}, {state_before((2,7)).action(up).wall((2, 8)). wall((2, 6)). }).
#pos({}, {state_after((2,8)),state_after((1,7)),state_after((2,6)),state_after((2,7))}, {state_before((2,7)).action(right).wall((2, 8)). wall((2, 6)). }).
#pos({}, {state_after((3,8)),state_after((2,7)),state_after((3,6)),state_after((3,7))}, {state_before((3,7)).action(right).wall((3, 8)). wall((3, 6)). }).
#pos({}, {state_after((4,8)),state_after((3,7)),state_after((4,6)),state_after((4,7))}, {state_before((4,7)).action(right).wall((4, 8)). }).
#pos({}, {state_after((5,8)),state_after((4,7)),state_after((5,6)),state_after((5,7))}, {state_before((5,7)).action(right).wall((5, 8)). wall((5, 6)). }).
#pos({}, {state_after((6,8)),state_after((5,7)),state_after((6,6)),state_after((6,7))}, {state_before((6,7)).action(right).wall((6, 8)). }).
#pos({}, {state_after((7,8)),state_after((6,7)),state_after((7,6)),state_after((7,7))}, {state_before((7,7)).action(right).wall((7, 8)). wall((7, 6)). }).
#pos({}, {state_after((8,8)),state_after((7,7)),state_after((8,6)),state_after((8,7))}, {state_before((8,7)).action(right).wall((8, 8)). wall((8, 6)). }).
#pos({}, {state_after((9,8)),state_after((8,7)),state_after((9,6)),state_after((9,7))}, {state_before((9,7)).action(right).wall((9, 8)). wall((9, 6)). }).
#pos({}, {state_after((10,8)),state_after((9,7)),state_after((10,6)),state_after((10,7))}, {state_before((10,7)).action(right).wall((10, 8)). wall((10, 6)). }).
#pos({}, {state_after((11,8)),state_after((10,7)),state_after((11,6)),state_after((11,7))}, {state_before((11,7)).action(right).wall((11, 8)). wall((11, 6)). }).
#pos({}, {state_after((13,7)),state_after((12,8)),state_after((11,7)),state_after((12,6))}, {state_before((12,7)).action(down).wall((12, 8)). wall((12, 6)). }).
#pos({}, {state_after((13,7)),state_after((12,8)),state_after((11,7)),state_after((12,6))}, {state_before((12,7)).action(down).wall((12, 8)). wall((12, 6)). }).
#pos({}, {state_after((12,8)),state_after((11,7)),state_after((12,6)),state_after((12,7))}, {state_before((12,7)).action(right).wall((12, 8)). wall((12, 6)). }).
#pos({}, {state_after((14,7)),state_after((13,8)),state_after((12,7)),state_after((13,7))}, {state_before((13,7)).action(up).wall((14, 7)). wall((13, 8)). }).
#pos({}, {state_after((14,6)),state_after((13,7)),state_after((12,6)),state_after((13,6))}, {state_before((13,6)).action(up).wall((14, 6)). wall((12, 6)). }).
#pos({}, {state_after((14,5)),state_after((13,6)),state_after((12,5)),state_after((13,5))}, {state_before((13,5)).action(up).wall((14, 5)). wall((12, 5)). }).
#pos({}, {state_after((14,4)),state_after((13,5)),state_after((12,4)),state_after((13,4))}, {state_before((13,4)).action(up).wall((14, 4)). wall((12, 4)). }).
#pos({}, {state_after((14,3)),state_after((13,4)),state_after((12,3)),state_after((13,3))}, {state_before((13,3)).action(up).wall((14, 3)). wall((12, 3)). }).
#pos({}, {state_after((14,2)),state_after((13,3)),state_after((12,2)),state_after((13,2))}, {state_before((13,2)).action(up).wall((14, 2)). wall((12, 2)). }).
#pos({}, {state_after((13,2)),state_after((12,1)),state_after((13,0)),state_after((13,1))}, {state_before((13,1)).action(right).wall((13, 0)). }).
#pos({}, {state_after((14,2)),state_after((13,1)),state_after((14,0)),state_after((14,1))}, {state_before((14,1)).action(right).wall((14, 2)). wall((14, 0)). }).
#pos({}, {state_after((16,1)),state_after((15,2)),state_after((15,0)),state_after((15,1))}, {state_before((15,1)).action(left).wall((15, 2)). wall((15, 0)). }).
#pos({}, {state_after((14,2)),state_after((13,1)),state_after((14,0)),state_after((14,1))}, {state_before((14,1)).action(right).wall((14, 2)). wall((14, 0)). }).
#pos({}, {state_after((15,2)),state_after((14,1)),state_after((15,0)),state_after((15,1))}, {state_before((15,1)).action(right).wall((15, 2)). wall((15, 0)). }).
#pos({}, {state_after((1,8)),state_after((0,7)),state_after((1,6)),state_after((1,7))}, {state_before((1,7)).action(right).wall((1, 8)). wall((0, 7)). wall((1, 6)). }).
#pos({}, {state_after((2,8)),state_after((1,7)),state_after((2,6)),state_after((2,7))}, {state_before((2,7)).action(right).wall((2, 8)). wall((2, 6)). }).
#pos({}, {state_after((3,8)),state_after((2,7)),state_after((3,6)),state_after((3,7))}, {state_before((3,7)).action(right).wall((3, 8)). wall((3, 6)). }).
#pos({}, {state_after((5,7)),state_after((4,8)),state_after((3,7)),state_after((4,7))}, {state_before((4,7)).action(up).wall((4, 8)). }).
#pos({state_after((4,6))}, {state_after((5,6)),state_after((4,7)),state_after((3,6)),state_after((4,5)),state_after((5,6))}, {state_before((4,6)).action(right).wall((5, 6)). wall((3, 6)). }).
