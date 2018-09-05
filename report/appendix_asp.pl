1{action(down,T);
  action(up,T);
  action(right,T);
  action(left,T);}1:-time(T), not finished(T).

state_at((1,4),3).
finished(T):-goal(T2),time(T), T >= T2.
goal(T):-state_at((5, 1),T), not finished(T-1).
goalMet:-goal(T).
:-not goalMet.

time(0..30).
cell((0..6, 0..5)).

adjacent(right,(X+1,Y),(X,Y)):-cell((X,Y)),cell((X+1,Y)).
adjacent(left,(X,Y),(X+1,Y)):-cell((X,Y)), cell((X+1,Y)).
adjacent(down,(X,Y+1),(X,Y)):-cell((X,Y)), cell((X,Y+1)).
adjacent(up,(X,Y),(X,Y+1)):-cell((X,Y)), cell((X,Y+1)).

#minimize{1,X,T: action(X,T)}.
#show state_at/2.
#show action/2.
