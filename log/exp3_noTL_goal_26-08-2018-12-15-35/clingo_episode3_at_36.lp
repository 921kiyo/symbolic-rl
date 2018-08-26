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

wall((13, 0)).

wall((14, 0)).

wall((15, 2)).

wall((15, 0)).

wall((5, 5)).

wall((4, 4)).

wall((3, 4)).

wall((6, 4)).

wall((7, 4)).

wall((8, 4)).

wall((9, 4)).

wall((11, 5)).

wall((11, 4)).

wall((11, 3)).

wall((10, 2)).

wall((9, 2)).

wall((7, 3)).
%START
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), action(left, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), wall(V1).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).

%END
%AAA
state_at((8, 3), 36).
%BBB
%CCC
time(36..250).
%DDD
%ANSWER SETS

%state_at((8,3),36)
%state_at((14,0),37)
%action(left,36)
%state_at((15,0),37)
%state_at((16,0),37)
%state_at((10,2),37)
%state_at((11,2),37)
%state_at((13,2),37)
%state_at((13,2),38)
%state_at((15,2),37)
%state_at((16,2),37)
%state_at((8,3),37)
%state_at((8,3),38)
%state_at((12,3),37)
%state_at((12,3),38)
%state_at((13,3),37)
%state_at((13,3),38)
%state_at((15,3),37)
%state_at((15,3),38)
%state_at((4,4),37)
%state_at((5,4),37)
%state_at((7,4),37)
%state_at((7,4),38)
%state_at((8,4),37)
%state_at((9,4),37)
%state_at((10,4),37)
%state_at((12,4),37)
%state_at((12,4),38)
%state_at((13,4),37)
%state_at((13,4),38)
%state_at((15,4),37)
%state_at((15,4),38)
%state_at((6,5),37)
%state_at((6,5),38)
%state_at((12,5),37)
%state_at((12,5),38)
%state_at((13,5),37)
%state_at((13,5),38)
%state_at((15,5),37)
%state_at((15,5),38)
%state_at((2,6),37)
%state_at((3,6),37)
%state_at((4,6),37)
%state_at((6,6),37)
%state_at((8,6),37)
%state_at((9,6),37)
%state_at((10,6),37)
%state_at((11,6),37)
%state_at((11,6),38)
%state_at((12,6),37)
%state_at((12,6),38)
%state_at((13,6),37)
%state_at((15,6),37)
%state_at((15,6),38)
%state_at((1,7),37)
%state_at((1,7),38)
%state_at((15,7),37)
%state_at((2,8),37)
%state_at((3,8),37)
%state_at((4,8),37)
%state_at((5,8),37)
%state_at((6,8),37)
%state_at((7,8),37)
%state_at((8,8),37)
%state_at((9,8),37)
%state_at((10,8),37)
%state_at((11,8),37)
%state_at((12,8),37)
%state_at((13,8),37)
%state_at((14,8),37)
%state_at((14,8),38)
%state_at((13,7),38)
%state_at((12,7),38)
%state_at((11,7),38)
%state_at((10,7),38)
%state_at((9,7),38)
%state_at((8,7),38)
%state_at((6,7),38)
%state_at((4,7),38)
%state_at((3,7),38)
%state_at((2,7),38)
%state_at((10,5),38)
%state_at((9,5),38)
%state_at((8,5),38)
%state_at((4,5),38)
%state_at((10,3),38)
%state_at((16,1),38)
%state_at((15,1),38)
%action(up,37)
%state_at((7,7),38)
%state_at((5,7),38)
%state_at((3,5),38)
%state_at((2,5),38)
%state_at((9,3),38)
%state_at((5,3),38)
%state_at((4,3),38)
%state_at((8,2),38)
%state_at((13,1),38)
%state_at((11,1),38)
%state_at((10,1),38)
