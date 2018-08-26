1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..17, 0..8)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((16, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((1, 8)).

wall((0, 7)).

wall((1, 6)).

wall((2, 8)).

wall((2, 6)).

wall((3, 8)).

wall((3, 6)).

wall((4, 8)).

wall((5, 8)).

wall((5, 6)).

wall((6, 8)).

wall((7, 8)).

wall((7, 6)).

wall((8, 8)).

wall((8, 6)).

wall((9, 8)).

wall((9, 6)).

wall((10, 8)).

wall((10, 6)).

wall((11, 8)).

wall((11, 6)).

wall((12, 8)).

wall((12, 6)).

wall((14, 7)).

wall((13, 8)).

wall((14, 6)).

wall((14, 5)).

wall((12, 5)).

wall((14, 4)).

wall((12, 4)).

wall((14, 3)).

wall((12, 3)).

wall((14, 2)).

wall((12, 2)).
%START
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), action(down, T), wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), wall(V1).

%END
%AAA
state_at((13, 3), 42).
%BBB
%CCC
time(42..250).
%DDD
%ANSWER SETS

%state_at((13,3),42)
%state_at((12,3),43)
%action(down,42)
%state_at((14,3),43)
%state_at((12,4),43)
%state_at((14,4),43)
%state_at((12,5),43)
%state_at((14,5),43)
%state_at((12,6),43)
%state_at((14,6),43)
%state_at((1,7),43)
%state_at((2,7),43)
%state_at((2,7),44)
%state_at((2,7),45)
%state_at((2,7),46)
%state_at((3,7),43)
%state_at((3,7),44)
%state_at((3,7),45)
%state_at((3,7),46)
%state_at((3,7),47)
%state_at((5,7),43)
%state_at((7,7),43)
%state_at((8,7),43)
%state_at((8,7),44)
%state_at((8,7),45)
%state_at((8,7),46)
%state_at((9,7),43)
%state_at((9,7),44)
%state_at((9,7),45)
%state_at((9,7),46)
%state_at((9,7),47)
%state_at((10,7),43)
%state_at((10,7),44)
%state_at((10,7),45)
%state_at((10,7),46)
%state_at((10,7),47)
%state_at((11,7),43)
%state_at((11,7),44)
%state_at((11,7),45)
%state_at((11,7),46)
%state_at((11,7),47)
%state_at((12,7),43)
%state_at((12,7),44)
%state_at((12,7),45)
%state_at((12,7),46)
%state_at((12,7),47)
%state_at((14,7),43)
%state_at((0,8),43)
%state_at((0,8),44)
%state_at((0,8),45)
%state_at((0,8),46)
%state_at((0,8),47)
%state_at((14,8),43)
%action(right,46)
%action(right,43)
%state_at((13,4),43)
%state_at((13,7),47)
%state_at((13,7),44)
%state_at((6,7),44)
%state_at((4,7),47)
%state_at((4,7),44)
%state_at((13,6),45)
%state_at((13,6),44)
%state_at((13,5),47)
%state_at((13,5),46)
%state_at((13,5),45)
%state_at((13,5),44)
%state_at((13,4),47)
%state_at((13,4),46)
%state_at((13,4),45)
%state_at((13,4),44)
%state_at((13,3),47)
%state_at((13,3),46)
%state_at((13,3),45)
%state_at((13,3),44)
%state_at((15,8),44)
%state_at((15,7),45)
%state_at((15,7),44)
%state_at((15,6),46)
%state_at((15,6),45)
%state_at((15,6),44)
%state_at((15,5),46)
%state_at((15,5),45)
%state_at((15,5),44)
%state_at((15,4),46)
%state_at((15,4),45)
%state_at((15,4),44)
%state_at((15,3),46)
%state_at((15,3),45)
%state_at((15,3),44)
%action(up,45)
%action(up,44)
%state_at((15,2),45)
%state_at((15,2),46)
%state_at((13,2),45)
%state_at((13,2),46)
%state_at((13,2),47)
%state_at((4,6),45)
%state_at((6,6),45)
%state_at((16,3),47)
%state_at((16,4),47)
%state_at((16,5),47)
%state_at((16,6),47)
%state_at((16,2),47)
%state_at((6,5),46)
%state_at((4,5),46)
%state_at((13,1),46)
%state_at((15,1),46)
%state_at((16,1),47)
%state_at((14,1),47)
%state_at((5,5),47)
%state_at((7,5),47)
