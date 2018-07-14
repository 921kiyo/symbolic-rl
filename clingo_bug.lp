time(1..450).

state_at((1, 9), 1).

1{action(down, T); action(up, T); action(right, T); action(left, T); action(non, T)}1 :- time(T), not finished(T).
#show state_at/2.
#show action/2.
finished(T):- goal(T2), time(T), T >= T2.
goal(T):- state_at((17, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

cell((0..18, 0..10)).
#minimize{1, X, T: action(X,T)}.

adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

%START
state_at(V0, T+1) :- time(T), state_at(V0, T), action(non, T).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), not wall(V1).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).
%Pre-processing  : 0.24s
%Solve time      : 253.343s
%Total           : 253.583s

%END

wall((1, 10)).
wall((0, 9)).
wall((1, 8)).
wall((2, 10)).
wall((2, 8)).
wall((3, 10)).
wall((3, 8)).
wall((4, 10)).
wall((5, 10)).
wall((5, 8)).
wall((5, 7)).
wall((4, 6)).
wall((3, 6)).
wall((7, 9)).
wall((6, 10)).
wall((7, 8)).
wall((6, 6)).
wall((7, 6)).
wall((8, 8)).
wall((8, 6)).
wall((9, 8)).
wall((9, 6)).
wall((11, 7)).
wall((10, 8)).
wall((11, 6)).
wall((11, 5)).
wall((9, 5)).
wall((11, 4)).
wall((10, 3)).
wall((9, 3)).
wall((8, 5)).
wall((7, 4)).
wall((7, 3)).
wall((9, 2)).
wall((7, 2)).
wall((8, 0)).
wall((9, 0)).
wall((7, 0)).
wall((10, 2)).
wall((10, 0)).
wall((11, 2)).
wall((11, 0)).
wall((12, 2)).
wall((12, 0)).
wall((13, 2)).
wall((13, 0)).
wall((14, 2)).
wall((14, 0)).
wall((15, 2)).
wall((15, 0)).
wall((16, 2)).
wall((16, 0)).
wall((18, 1)).
wall((17, 2)).
wall((17, 0)).
