
% This is a tiny maze, where w is walls, g is a goal, A is an agent and + is a path
%
% wwwwwww
% w++++gw
% w+wwwww
% w+w+w+w
% wA++++w
% wwwwwww

% 1st arg: X coordinate, 2nd arg: Y coordinate
#pos({state_after((1,2))}, {}, {state_before((1,1)). action(up). wall((0, 1)). wall((0, 2)). wall((0, 3)). wall((2, 2)).wall((2, 3)). }).
#pos({}, {state_after((1,2))}, {state_before((1,1)). action(down). wall((0, 1)). wall((0, 2)). wall((0, 3)). wall((2, 2)).wall((2, 3)).}).
#pos({}, {state_after((1,2))}, {state_before((1,1)). action(right). wall((0, 1)). wall((0, 2)). wall((0, 3)). wall((2, 2)).wall((2, 3)).}).
#pos({}, {state_after((1,2))}, {state_before((1,1)). action(left). wall((0, 1)). wall((0, 2)). wall((0, 3)). wall((2, 2)).wall((2, 3)).}).

#pos({state_after((2,1))}, {}, {state_before((1,1)). action(right). wall((1,0)). wall((2,0)). wall((3,0)). wall((2,2)). }).
#pos({}, {state_after((2,1))}, {state_before((1,1)). action(left). wall((1,0)). wall((2,0)). wall((3,0)). wall((2,2)).}).
#pos({}, {state_after((2,1))}, {state_before((1,1)). action(up). wall((1,0)). wall((2,0)). wall((3,0)). wall((2,2)).}).
#pos({}, {state_after((2,1))}, {state_before((1,1)). action(down). wall((1,0)). wall((2,0)). wall((3,0)). wall((2,2)).}).

#pos({state_after((1,1))}, {}, {state_before((2,1)). action(left). wall((1,0)). wall((0,1)). wall((0,0)). wall((2,0)). wall((0,2)). wall((2,2)).}).
% #pos({}, {state_after((1,1))}, {state_before((2,1)). action(right). wall((1,0)). wall((0,1)). wall((0,0)). wall((2,0)). wall((0,2)). wall((2,2)).}).
% #pos({}, {state_after((1,1))}, {state_before((2,1)). action(up). wall((1,0)). wall((0,1)). wall((0,0)). wall((2,0)). wall((0,2)). wall((2,2)).}).
% #pos({}, {state_after((1,1))}, {state_before((2,1)). action(down). wall((1,0)). wall((0,1)). wall((0,0)). wall((2,0)). wall((0,2)). wall((2,2)).}).

#pos({state_after((1,1))}, {}, {state_before((1,2)). action(down). wall((1,0)). wall((0,1)). wall((0,0)). wall((2,0)). wall((0,2)). wall((2,2)). }).
% #pos({}, {state_after((1,1))}, {state_before((1,2)). action(up). wall((1,0)). wall((0,1)). wall((0,0)). wall((2,0)). wall((0,2)). wall((2,2)).}).
% #pos({}, {state_after((1,1))}, {state_before((1,2)). action(right). wall((1,0)). wall((0,1)). wall((0,0)). wall((2,0)). wall((0,2)). wall((2,2)).}).
% #pos({}, {state_after((1,1))}, {state_before((1,2)). action(left). wall((1,0)). wall((0,1)). wall((0,0)). wall((2,0)). wall((0,2)). wall((2,2)).}).

% #pos({state_after((2,3))}, {}, {state_before((2,2)). action(up). }).
% #pos({}, {state_after((2,3))}, {state_before((2,2)). action(down). }).
% % #pos({}, {state_after((2,3))}, {state_before((2,2)). action(right). }).
% #pos({}, {state_after((2,3))}, {state_before((2,2)). action(left). }).

cell((0..6, 0..6)).

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
