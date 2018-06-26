
#pos({state_after((1,2), 2)}, {}, {state_before((1,1), 1). action(up, 1). wall((0,0)). wall((0,1)). wall((1,0)). }).

cell((1..6, 1..6)).

adjacent_east((X,Y),(X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent_west((X+1,Y),(X,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent_south((X,Y+1),(X,Y)) :- cell((X,Y)), cell((X,Y+1)).
adjacent_north((X,Y),(X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

#modeh(state_after(var(cell), var(time))).
#modeb(1, state_before(var(cell), var(time))).
#modeb(1, adjacent_east(var(cell), var(cell)), (symmetric, anti_reflexive)).
#modeb(1, adjacent_west(var(cell), var(cell)), (symmetric, anti_reflexive)).
#modeb(1, adjacent_south(var(cell), var(cell)), (symmetric, anti_reflexive)).
#modeb(1, adjacent_north(var(cell), var(cell)), (symmetric, anti_reflexive)).
#modeb(1, action(var(action), var(time))).
#modeb(1, wall(var(cell)), (symmetric, anti_reflexive)).
time(1..20).
