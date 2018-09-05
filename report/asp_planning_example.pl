% Learnt hypotheses
state_at(V0, T+1):-time(T),adjacent(right, V0, V1),
                   state_at(V1,T),action(right,T),not wall(V0).
state_at(V0, T+1):-time(T),adjacent(left, V0, V1),
                   state_at(V1,T),action(left,T), not wall(V0).
state_at(V0, T+1):-time(T),adjacent(down, V0, V1),
                   state_at(V1,T),action(down,T), not wall(V0).
state_at(V0, T+1):-time(T),adjacent(up, V0, V1),
                   state_at(V1,T),action(up,T), not wall(V0).

1{action(down, T);
  action(up, T);
  action(right, T);
  action(left, T)}1 :- time(T), not finished(T).

% The maximum time step is 4
time(0..4).

finished(T):- goal(T2), time(T), T >= T2.
goal(T):- state_at((3, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

% Walls that the agent knows so far
wall((1, 0)).
wall((2, 0)).
wall((3, 0)).
wall((0, 1)).
wall((0, 2)).
wall((0, 3)).
wall((2, 2)).
wall((3, 2)).

% Starting state
state_at((1, 3), 0).

#show state_at/2.
#show action/2.
#minimize{1, X, T: action(X,T)}.

% Size of the maze
cell((0..4, 0..4)).

adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).
