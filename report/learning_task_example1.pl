% Background knowledge
cell((0..5, 0..5)).
adjacent(right,(X+1,Y),(X,Y)):-cell((X,Y)),cell((X+1,Y)).
adjacent(left,(X,Y),(X+1,Y)):-cell((X,Y)),cell((X+1,Y)).
adjacent(down,(X,Y+1),(X,Y)):-cell((X,Y)),cell((X,Y+1)).
adjacent(up,(X,Y),(X,Y+1)):- cell((X,Y)),cell((X,Y+1)).
% Context dependent examples
#pos({state_after((3,4))},
     {state_after((2,4)),state_after((1,5)),
     state_after((0,4)),state_after((1,4))},
     {state_before((2,4)). action(right).
     wall((1, 4)). wall((4, 2)).}).
% Language bias
#modeh(state_after(var(cell))).
#modeb(1, adjacent(const(action),
          var(cell),var(cell)),(positive)).
#modeb(1, state_before(var(cell)), (positive)).
#modeb(1, action(const(action)), (positive)).
#modeb(1, wall(var(cell))).

#max_penalty(50).

#constant(action, right).
#constant(action, left).
#constant(action, down).
#constant(action, up).
