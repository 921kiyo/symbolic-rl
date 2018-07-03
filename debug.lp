
% This is a tiny maze, where w is walls, g is a goal, A is an agent and + is a path
% GAME MAP
% 0123456
% wwwwwww 5
% w++++gw 4
% w+wwwww 3
% w+w+w+w 2
% wA++++w 1
% wwwwwww 0

#pos({state_after((1,2))}, {}, {state_before((1,1)). action(up). wall((1,0)). wall((0,1)). wall((0,0)). wall((2,0)). wall((0,2)). wall((2,2)). :- wall((2,1)). :- wall((1,2)).}).
% Adding below counter examples as exclusions, because action other than "up" should not make the same change as above. Only action "up" will move the agent from (1,1) to (1,2)
#pos({}, {state_after((1,2))}, {state_before((1,1)). action(down). wall((1,0)). wall((0,1)). wall((0,0)). wall((2,0)). wall((0,2)). wall((2,2)). :- wall((2,1)). :- wall((1,2)).}).
#pos({}, {state_after((1,2))}, {state_before((1,1)). action(right). wall((1,0)). wall((0,1)). wall((0,0)). wall((2,0)). wall((0,2)). wall((2,2)). :- wall((2,1)). :- wall((1,2)).}).
#pos({}, {state_after((1,2))}, {state_before((1,1)). action(left). wall((1,0)). wall((0,1)). wall((0,0)). wall((2,0)). wall((0,2)). wall((2,2)). :- wall((2,1)). :- wall((1,2)).}).

% 0123456
% wwwwwww 5
% w++++gw 4
% w+wwwww 3
% wAw+w+w 2
% w+++++w 1
% wwwwwww 0

#pos({state_after((2,1))}, {}, {state_before((1,1)). action(right). wall((1,0)). wall((0,1)). wall((0,0)). wall((2,0)). wall((0,2)). wall((2,2)). :- wall((2,1)). :- wall((1,2)). }).
#pos({}, {state_after((2,1))}, {state_before((1,1)). action(left). wall((1,0)). wall((0,1)). wall((0,0)). wall((2,0)). wall((0,2)). wall((2,2)). :- wall((2,1)). :- wall((1,2)).}).
#pos({}, {state_after((2,1))}, {state_before((1,1)). action(up). wall((1,0)). wall((0,1)). wall((0,0)). wall((2,0)). wall((0,2)). wall((2,2)). :- wall((2,1)). :- wall((1,2)).}).
#pos({}, {state_after((2,1))}, {state_before((1,1)). action(down). wall((1,0)). wall((0,1)). wall((0,0)). wall((2,0)). wall((0,2)). wall((2,2)). :- wall((2,1)). :- wall((1,2)).}).

% 0123456
% wwwwwww 5
% w++++gw 4
% w+wwwww 3
% w+w+w+w 2
% w+A+++w 1
% wwwwwww 0

#pos({state_after((1,1))}, {}, {state_before((2,1)). action(left). wall((1,0)). wall((2,0)). wall((3,0)). wall((2,2)). :- wall((1,1)). :- wall((1,1)). :- wall((1,2)). :- wall((3,2)). :- wall((3,1)).}).
#pos({}, {state_after((1,1))}, {state_before((2,1)). action(right). wall((1,0)). wall((2,0)). wall((3,0)). wall((2,2)). :- wall((1,1)). :- wall((1,1)). :- wall((1,2)). :- wall((3,2)). :- wall((3,1)).}).
#pos({}, {state_after((1,1))}, {state_before((2,1)). action(up). wall((1,0)). wall((2,0)). wall((3,0)). wall((2,2)). :- wall((1,1)). :- wall((1,1)). :- wall((1,2)). :- wall((3,2)). :- wall((3,1)).}).
#pos({}, {state_after((1,1))}, {state_before((2,1)). action(down). wall((1,0)). wall((2,0)). wall((3,0)). wall((2,2)). :- wall((1,1)). :- wall((1,1)). :- wall((1,2)). :- wall((3,2)). :- wall((3,1)).}).

% 0123456
% wwwwwww 5
% w++++gw 4
% w+wwwww 3
% w+w+w+w 2
% wA++++w 1
% wwwwwww 0

#pos({state_after((1,3))}, {}, {state_before((1,2)). action(up). wall((0, 1)). wall((0, 2)). wall((0, 3)). wall((2, 2)).wall((2, 3)). :- wall((1, 3)). :- wall((1, 1)). :- wall((2, 1)). }).
#pos({}, {state_after((1,3))}, {state_before((1,2)). action(down). wall((0, 1)). wall((0, 2)). wall((0, 3)). wall((2, 2)).wall((2, 3)). :- wall((1, 3)). :- wall((1, 1)). :- wall((2, 1)). }).
#pos({}, {state_after((1,3))}, {state_before((1,2)). action(right). wall((0, 1)). wall((0, 2)). wall((0, 3)). wall((2, 2)).wall((2, 3)). :- wall((1, 3)). :- wall((1, 1)). :- wall((2, 1)). }).
#pos({}, {state_after((1,3))}, {state_before((1,2)). action(left). wall((0, 1)). wall((0, 2)). wall((0, 3)). wall((2, 2)).wall((2, 3)). :- wall((1, 3)). :- wall((1, 1)). :- wall((2, 1)). }).

% 0123456
% wwwwwww 5
% w++++gw 4
% wAwwwww 3
% w+w+w+w 2
% w+++++w 1
% wwwwwww 0

#pos({state_after((1,4))}, {}, {state_before((2,4)). action(left). wall((1,5)). wall((2,5)). wall((3,5)). wall((2,3)). wall((3,3)). :- wall((1, 4)). :- wall((1, 3)). :- wall((3, 4)). }).
#pos({}, {state_after((1,4))}, {state_before((2,4)). action(right). wall((1,5)). wall((2,5)). wall((3,5)). wall((2,3)). wall((3,3)). :- wall((1, 4)). :- wall((1, 3)). :- wall((3, 4)). }).
#pos({}, {state_after((1,4))}, {state_before((2,4)). action(down). wall((1,5)). wall((2,5)). wall((3,5)). wall((2,3)). wall((3,3)). :- wall((1, 4)). :- wall((1, 3)). :- wall((3, 4)). }).
#pos({}, {state_after((1,4))}, {state_before((2,4)). action(up). wall((1,5)). wall((2,5)). wall((3,5)). wall((2,3)). wall((3,3)). :- wall((1, 4)). :- wall((1, 3)). :- wall((3, 4)). }).

% 0123456
% wwwwwww 5
% wA+++gw 4
% w+wwwww 3
% w+w+w+w 2
% w+++++w 1
% wwwwwww 0

#pos({state_after((1,4))}, {}, {state_before((1,4)). action(left). wall((0,5)). wall((1,5)). wall((2,5)). wall((0,4)). wall((0,3)). wall((2,3)). :- wall((2, 4)). :- wall((1, 3)). }).
% ADDING BELOW MAKES IT BREAK
% #pos({}, {state_after((1,4))}, {state_before((1,4)). action(right). wall((0,5)). wall((1,5)). wall((2,5)). wall((0,4)). wall((0,3)). wall((2,3)). :- wall((2, 4)). :- wall((1, 3)). }).
% #pos({}, {state_after((1,4))}, {state_before((1,4)). action(down). wall((0,5)). wall((1,5)). wall((2,5)). wall((0,4)). wall((0,3)). wall((2,3)). :- wall((2, 4)). :- wall((1, 3)). }).
% #pos({}, {state_after((1,4))}, {state_before((1,4)). action(up). wall((0,5)). wall((1,5)). wall((2,5)). wall((0,4)). wall((0,3)). wall((2,3)). :- wall((2, 4)). :- wall((1, 3)). }).

% The agent hits a wall and did not move.
% 0123456
% wwwwwww 5
% wA+++gw 4
% w+wwwww 3
% w+w+w+w 2
% w+++++w 1
% wwwwwww 0

cell((0..6, 0..5)).

adjacent(left,(X+1,Y),(X,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(right, (X,Y),(X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y)) :- cell((X,Y)), cell((X,Y+1)).
adjacent(up, (X,Y),(X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

#modeh(state_after(var(cell))).

#modeb(1, adjacent(const(action), var(cell), var(cell))).
#modeb(1, state_before(var(cell))).
#modeb(1, action(const(action))).
#modeb(1, wall(var(cell))).
% #maxv(3).

#constant(action, right).
#constant(action, left).
#constant(action, down).
#constant(action, up).
