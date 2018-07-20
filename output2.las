cell((0..19, 0..8)).
% MAZE

% 0123456
% wwwwwww 0
% w++++gw 1
% w+wwwww 2
% w+w+w+w 3
% wA++++w 4
% wwwwwww 5

% (X+1,Y) is right next to (X,Y)
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).

adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).

% (X,Y+1) is above next to (X,Y)
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).

adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

#modeh(state_after(var(cell))).

#modeb(1, adjacent(const(action), var(cell), var(cell))).
#modeb(1, state_before(var(cell)), (positive)).
#modeb(1, action(const(action)),(positive)).
#modeb(1, wall(var(cell))).

#max_penalty(100).

#constant(action, right).
#constant(action, left).
#constant(action, down).
#constant(action, up).
#constant(action, non).
#pos({state_after((3,5))}, {state_after((4,5)),state_after((3,6)),state_after((2,5)),state_after((3,4))}, {state_before((3,5)). action(non). wall((3, 4)). }).
#pos({state_after((3,5))}, {state_after((4,5)),state_after((3,6)),state_after((2,5)),state_after((3,4))}, {state_before((3,5)). action(up). wall((3, 4)). }).
#pos({state_after((4,5))}, {state_after((3,6)),state_after((2,5)),state_after((3,4)),state_after((3,5))}, {state_before((3,5)). action(right). wall((3, 4)). }).
#pos({state_after((5,5))}, {state_after((4,6)),state_after((3,5)),state_after((4,4)),state_after((4,5))}, {state_before((4,5)). action(right). wall((4, 4)). }).
#pos({state_after((6,5))}, {state_after((5,6)),state_after((4,5)),state_after((5,4)),state_after((5,5))}, {state_before((5,5)). action(right). wall((5, 4)). }).
#pos({state_after((6,6))}, {state_after((7,5)),state_after((5,5)),state_after((6,4)),state_after((6,5))}, {state_before((6,5)). action(down). wall((6, 4)). }).
#pos({state_after((7,6))}, {state_after((6,7)),state_after((5,6)),state_after((6,5)),state_after((6,6))}, {state_before((6,6)). action(right). wall((6, 7)). }).
#pos({state_after((6,6))}, {state_after((8,6)),state_after((7,7)),state_after((7,5)),state_after((7,6))}, {state_before((7,6)). action(left). wall((7, 7)). }).
#pos({state_after((6,6))}, {state_after((7,6)),state_after((6,7)),state_after((5,6)),state_after((6,5))}, {state_before((6,6)). action(non). wall((6, 7)). }).
#pos({state_after((6,5))}, {state_after((7,6)),state_after((6,7)),state_after((5,6)),state_after((6,6))}, {state_before((6,6)). action(up). wall((6, 7)). }).
#pos({state_after((6,5))}, {state_after((7,5)),state_after((6,6)),state_after((5,5)),state_after((6,4))}, {state_before((6,5)). action(up). wall((6, 4)). }).
#pos({state_after((6,5))}, {state_after((7,5)),state_after((6,6)),state_after((5,5)),state_after((6,4))}, {state_before((6,5)). action(non). wall((6, 4)). }).
#pos({state_after((5,5))}, {state_after((7,5)),state_after((6,6)),state_after((6,4)),state_after((6,5))}, {state_before((6,5)). action(left). wall((6, 4)). }).
#pos({state_after((5,6))}, {state_after((6,5)),state_after((4,5)),state_after((5,4)),state_after((5,5))}, {state_before((5,5)). action(down). wall((5, 4)). }).
#pos({state_after((5,5))}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6))}, {state_before((5,6)). action(up). wall((5, 7)). }).
#pos({state_after((5,6))}, {state_after((6,5)),state_after((4,5)),state_after((5,4)),state_after((5,5))}, {state_before((5,5)). action(down). wall((5, 4)). }).
#pos({state_after((5,6))}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,5))}, {state_before((5,6)). action(down). wall((5, 7)). }).
#pos({state_after((5,5))}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,6))}, {state_before((5,6)). action(up). wall((5, 7)). }).
#pos({state_after((5,6))}, {state_after((6,5)),state_after((4,5)),state_after((5,4)),state_after((5,5))}, {state_before((5,5)). action(down). wall((5, 4)). }).
#pos({state_after((5,6))}, {state_after((6,6)),state_after((5,7)),state_after((4,6)),state_after((5,5))}, {state_before((5,6)). action(non). wall((5, 7)). }).
#pos({state_after((6,6))}, {state_after((5,7)),state_after((4,6)),state_after((5,5)),state_after((5,6))}, {state_before((5,6)). action(right). wall((5, 7)). }).
#pos({state_after((6,5))}, {state_after((7,6)),state_after((6,7)),state_after((5,6)),state_after((6,6))}, {state_before((6,6)). action(up). wall((6, 7)). }).
#pos({state_after((7,5))}, {state_after((6,6)),state_after((5,5)),state_after((6,4)),state_after((6,5))}, {state_before((6,5)). action(right). wall((6, 4)). }).
#pos({state_after((7,5))}, {state_after((8,5)),state_after((7,6)),state_after((6,5)),state_after((7,4))}, {state_before((7,5)). action(up). wall((7, 4)). }).
#pos({state_after((6,5))}, {state_after((8,5)),state_after((7,6)),state_after((7,4)),state_after((7,5))}, {state_before((7,5)). action(left). wall((7, 4)). }).
#pos({state_after((7,5))}, {state_after((6,6)),state_after((5,5)),state_after((6,4)),state_after((6,5))}, {state_before((6,5)). action(right). wall((6, 4)). }).
#pos({state_after((7,5))}, {state_after((8,5)),state_after((7,6)),state_after((6,5)),state_after((7,4))}, {state_before((7,5)). action(up). wall((7, 4)). }).
#pos({state_after((7,6))}, {state_after((8,5)),state_after((6,5)),state_after((7,4)),state_after((7,5))}, {state_before((7,5)). action(down). wall((7, 4)). }).
#pos({state_after((8,6))}, {state_after((7,7)),state_after((6,6)),state_after((7,5)),state_after((7,6))}, {state_before((7,6)). action(right). wall((7, 7)). }).
#pos({state_after((9,6))}, {state_after((8,7)),state_after((7,6)),state_after((8,5)),state_after((8,6))}, {state_before((8,6)). action(right). wall((8, 7)). }).
#pos({state_after((10,6))}, {state_after((9,7)),state_after((8,6)),state_after((9,5)),state_after((9,6))}, {state_before((9,6)). action(right). wall((9, 7)). }).
#pos({state_after((10,5))}, {state_after((11,6)),state_after((10,7)),state_after((9,6)),state_after((10,6))}, {state_before((10,6)). action(up). wall((10, 7)). }).
#pos({state_after((10,6))}, {state_after((11,5)),state_after((9,5)),state_after((10,4)),state_after((10,5))}, {state_before((10,5)). action(down). wall((10, 4)). }).
#pos({state_after((10,6))}, {state_after((11,6)),state_after((10,7)),state_after((9,6)),state_after((10,5))}, {state_before((10,6)). action(down). wall((10, 7)). }).
#pos({state_after((10,6))}, {state_after((11,6)),state_after((10,7)),state_after((9,6)),state_after((10,5))}, {state_before((10,6)). action(down). wall((10, 7)). }).
#pos({state_after((10,5))}, {state_after((11,6)),state_after((10,7)),state_after((9,6)),state_after((10,6))}, {state_before((10,6)). action(up). wall((10, 7)). }).
#pos({state_after((9,5))}, {state_after((11,5)),state_after((10,6)),state_after((10,4)),state_after((10,5))}, {state_before((10,5)). action(left). wall((10, 4)). }).
#pos({state_after((9,5))}, {state_after((10,5)),state_after((9,6)),state_after((8,5)),state_after((9,4))}, {state_before((9,5)). action(non). wall((9, 4)). }).
#pos({state_after((10,5))}, {state_after((9,6)),state_after((8,5)),state_after((9,4)),state_after((9,5))}, {state_before((9,5)). action(right). wall((9, 4)). }).
#pos({state_after((11,5))}, {state_after((10,6)),state_after((9,5)),state_after((10,4)),state_after((10,5))}, {state_before((10,5)). action(right). wall((10, 4)). }).
#pos({state_after((10,5))}, {state_after((12,5)),state_after((11,6)),state_after((11,4)),state_after((11,5))}, {state_before((11,5)). action(left). wall((11, 4)). }).
#pos({state_after((10,5))}, {state_after((11,5)),state_after((10,6)),state_after((9,5)),state_after((10,4))}, {state_before((10,5)). action(non). wall((10, 4)). }).
#pos({state_after((9,5))}, {state_after((11,5)),state_after((10,6)),state_after((10,4)),state_after((10,5))}, {state_before((10,5)). action(left). wall((10, 4)). }).
#pos({state_after((9,5))}, {state_after((10,5)),state_after((9,6)),state_after((8,5)),state_after((9,4))}, {state_before((9,5)). action(up). wall((9, 4)). }).
#pos({state_after((9,5))}, {state_after((10,5)),state_after((9,6)),state_after((8,5)),state_after((9,4))}, {state_before((9,5)). action(up). wall((9, 4)). }).
#pos({state_after((9,5))}, {state_after((10,5)),state_after((9,6)),state_after((8,5)),state_after((9,4))}, {state_before((9,5)). action(non). wall((9, 4)). }).
#pos({state_after((9,5))}, {state_after((10,5)),state_after((9,6)),state_after((8,5)),state_after((9,4))}, {state_before((9,5)). action(up). wall((9, 4)). }).
#pos({state_after((9,5))}, {state_after((10,5)),state_after((9,6)),state_after((8,5)),state_after((9,4))}, {state_before((9,5)). action(non). wall((9, 4)). }).
#pos({state_after((9,6))}, {state_after((10,5)),state_after((8,5)),state_after((9,4)),state_after((9,5))}, {state_before((9,5)). action(down). wall((9, 4)). }).
#pos({state_after((9,6))}, {state_after((10,6)),state_after((9,7)),state_after((8,6)),state_after((9,5))}, {state_before((9,6)). action(non). wall((9, 7)). }).
#pos({state_after((9,6))}, {state_after((10,6)),state_after((9,7)),state_after((8,6)),state_after((9,5))}, {state_before((9,6)). action(down). wall((9, 7)). }).
#pos({state_after((8,6))}, {state_after((10,6)),state_after((9,7)),state_after((9,5)),state_after((9,6))}, {state_before((9,6)). action(left). wall((9, 7)). }).
#pos({state_after((7,6))}, {state_after((9,6)),state_after((8,7)),state_after((8,5)),state_after((8,6))}, {state_before((8,6)). action(left). wall((8, 7)). }).
#pos({state_after((7,5))}, {state_after((8,6)),state_after((7,7)),state_after((6,6)),state_after((7,6))}, {state_before((7,6)). action(up). wall((7, 7)). }).
#pos({state_after((7,6))}, {state_after((8,5)),state_after((6,5)),state_after((7,4)),state_after((7,5))}, {state_before((7,5)). action(down). wall((7, 4)). }).
#pos({state_after((7,6))}, {state_after((8,6)),state_after((7,7)),state_after((6,6)),state_after((7,5))}, {state_before((7,6)). action(down). wall((7, 7)). }).
#pos({state_after((7,6))}, {state_after((8,6)),state_after((7,7)),state_after((6,6)),state_after((7,5))}, {state_before((7,6)). action(down). wall((7, 7)). }).
#pos({state_after((7,6))}, {state_after((8,6)),state_after((7,7)),state_after((6,6)),state_after((7,5))}, {state_before((7,6)). action(down). wall((7, 7)). }).
#pos({state_after((8,6))}, {state_after((7,7)),state_after((6,6)),state_after((7,5)),state_after((7,6))}, {state_before((7,6)). action(right). wall((7, 7)). }).
#pos({state_after((9,6))}, {state_after((8,7)),state_after((7,6)),state_after((8,5)),state_after((8,6))}, {state_before((8,6)). action(right). wall((8, 7)). }).
#pos({state_after((8,6))}, {state_after((10,6)),state_after((9,7)),state_after((9,5)),state_after((9,6))}, {state_before((9,6)). action(left). wall((9, 7)). }).
#pos({state_after((9,6))}, {state_after((8,7)),state_after((7,6)),state_after((8,5)),state_after((8,6))}, {state_before((8,6)). action(right). wall((8, 7)). }).
#pos({state_after((9,5))}, {state_after((10,6)),state_after((9,7)),state_after((8,6)),state_after((9,6))}, {state_before((9,6)). action(up). wall((9, 7)). }).
#pos({state_after((10,5))}, {state_after((9,6)),state_after((8,5)),state_after((9,4)),state_after((9,5))}, {state_before((9,5)). action(right). wall((9, 4)). }).
#pos({state_after((10,5))}, {state_after((11,5)),state_after((10,6)),state_after((9,5)),state_after((10,4))}, {state_before((10,5)). action(non). wall((10, 4)). }).
