1{action(down, T); action(up, T); action(right, T); action(left, T); action(non, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((16, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.
time(1..20).
cell((0..18, 0..7)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
    adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
    adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
    adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).
wall((3, 7)).
wall((3, 4)).
wall((4, 4)).
wall((5, 4)).
wall((6, 4)).
wall((6, 7)).
wall((7, 7)).
wall((5, 7)).
wall((7, 4)).
wall((8, 7)).
wall((9, 7)).
wall((10, 7)).
wall((10, 4)).
wall((9, 4)).
wall((11, 4)).
wall((11, 7)).
wall((12, 4)).
wall((12, 7)).
wall((8, 4)).
wall((13, 7)).
wall((13, 4)).
wall((14, 7)).
wall((14, 4)).
wall((15, 4)).
wall((16, 4)).
wall((16, 7)).
wall((15, 7)).
wall((18, 5)).
wall((18, 4)).
wall((18, 3)).
wall((18, 2)).
wall((15, 2)).
wall((18, 6)).
wall((17, 7)).
wall((18, 1)).
wall((17, 0)).
wall((4, 7)).
%START
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).
state_at(V0, T+1) :- time(T), state_at(V0, T), action(non, T).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).
%Pre-processing  : 0.189s
%Solve time      : 91.418s
%Total           : 91.606s

%END
wall((6, 0)).
%AAA
state_at((11, 6), 1).
%BBB
