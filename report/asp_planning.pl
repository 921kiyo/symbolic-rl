% Hypotheses are given from ILASP.

1{action(down,T);
  action(up,T);
  action(right,T);
  action(left,T)}1
  :-time(T), not finished(T).

time(T..T_max).

finished(T):- goal(T2), time(T), T >= T2.
goal(T):- state_at((X_goal, Y_goal), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

% walls are given from context dependent examples
wall((X_1, Y_1)).
wall((X_2, Y_2)).
...

% Current state of the agent at time T
state_at((X, Y), T).

#show state_at/2.
#show action/2.

#minimize{1, X, T: action(X,T)}.

cell((0..X_width, 0..Y_height)).
adjacent(right,(X+1,Y),(X,Y)):-cell((X,Y)),cell((X+1,Y)).
adjacent(left,(X,Y),(X+1,Y)):-cell((X,Y)),cell((X+1,Y)).
adjacent(down,(X,Y+1),(X,Y)):-cell((X,Y)),cell((X,Y+1)).
adjacent(up,(X,Y),(X,Y+1)):-cell((X,Y)),cell((X,Y+1)).

