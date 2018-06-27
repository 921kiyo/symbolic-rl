
% 1st arg: X coordinate, 2nd arg: Y coordinate

#pos({state_after((1,2))}, {}, {state_before((1,1)). action(up). }).
% #pos({}, {state_after((1,2))}, {state_before((1,1)). action(down). }).
% #pos({}, {state_after((1,2))}, {state_before((1,1)). action(right). }).
% #pos({}, {state_after((1,2))}, {state_before((1,1)). action(left). }).

#pos({state_after((2,1))}, {}, {state_before((1,1)). action(right). }).
% #pos({}, {state_after((2,1))}, {state_before((1,1)). action(left). }).
% #pos({}, {state_after((2,1))}, {state_before((1,1)). action(up). }).
% #pos({}, {state_after((2,1))}, {state_before((1,1)). action(down). }).

#pos({state_after((1,1))}, {}, {state_before((2,1)). action(left). }).
% #pos({}, {state_after((1,1))}, {state_before((2,1)). action(right). }).
% #pos({}, {state_after((1,1))}, {state_before((2,1)). action(up). }).
% #pos({}, {state_after((1,1))}, {state_before((2,1)). action(down). }).

#pos({state_after((1,1))}, {}, {state_before((1,2)). action(down). }).
% #pos({}, {state_after((1,1))}, {state_before((1,2)). action(up). }).
% #pos({}, {state_after((1,1))}, {state_before((1,2)). action(right). }).
% #pos({}, {state_after((1,1))}, {state_before((1,2)). action(left). }).

#pos({state_after((2,2))}, {}, {state_before((2,1)). action(up). }).
% #pos({}, {state_after((2,2))}, {state_before((2,1)). action(down). }).
% #pos({}, {state_after((2,2))}, {state_before((2,1)). action(right). }).
% #pos({}, {state_after((2,2))}, {state_before((2,1)). action(left). }).

cell((1..6, 1..6)).

adjacent(right,(X+1,Y),(X,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(left, (X,Y),(X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y)) :- cell((X,Y)), cell((X,Y+1)).
adjacent(up, (X,Y),(X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

#modeh(state_after(var(cell))).

#modeb(1, adjacent(const(action), var(cell), var(cell))).
#modeb(1, state_before(var(cell))).
#modeb(1, action(const(action))).

#constant(action, right).
#constant(action, left).
#constant(action, down).
#constant(action, up).
