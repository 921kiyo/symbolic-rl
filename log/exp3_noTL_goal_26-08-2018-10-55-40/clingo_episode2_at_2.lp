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
%START
state_at(V0, T+1) :- time(T), state_at(V0, T), action(down, T).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), action(left, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), wall(V1).

%END
%AAA
state_at((1, 7), 2).
%BBB
%CCC
time(2..250).
%DDD
%ANSWER SETS

%state_at((1,7),2)
%state_at((12,0),3)
%action(left,2)
%state_at((13,0),3)
%state_at((14,0),3)
%state_at((11,2),3)
%state_at((11,2),4)
%state_at((11,2),5)
%state_at((11,2),6)
%state_at((13,2),3)
%state_at((13,2),4)
%state_at((13,2),5)
%state_at((13,2),6)
%state_at((14,2),3)
%state_at((11,3),3)
%state_at((11,3),4)
%state_at((11,3),5)
%state_at((11,3),6)
%state_at((13,3),3)
%state_at((13,3),4)
%state_at((13,3),5)
%state_at((13,3),6)
%state_at((11,4),3)
%state_at((11,4),4)
%state_at((11,4),5)
%state_at((11,4),6)
%state_at((13,4),3)
%state_at((13,4),4)
%state_at((13,4),5)
%state_at((13,4),6)
%state_at((11,5),3)
%state_at((11,5),4)
%state_at((11,5),5)
%state_at((11,5),6)
%state_at((13,5),3)
%state_at((13,5),4)
%state_at((13,5),5)
%state_at((13,5),6)
%state_at((0,6),3)
%state_at((1,6),3)
%state_at((2,6),3)
%state_at((4,6),3)
%state_at((6,6),3)
%state_at((7,6),3)
%state_at((8,6),3)
%state_at((9,6),3)
%state_at((10,6),3)
%state_at((11,6),3)
%state_at((13,6),3)
%state_at((13,6),4)
%state_at((13,6),5)
%state_at((13,6),6)
%state_at((13,7),3)
%state_at((13,7),5)
%state_at((13,7),6)
%state_at((0,8),3)
%state_at((0,8),4)
%state_at((0,8),5)
%state_at((0,8),6)
%state_at((1,8),3)
%state_at((2,8),3)
%state_at((3,8),3)
%state_at((4,8),3)
%state_at((5,8),3)
%state_at((6,8),3)
%state_at((7,8),3)
%state_at((8,8),3)
%state_at((9,8),3)
%state_at((10,8),3)
%state_at((11,8),3)
%state_at((12,8),3)
%action(right,5)
%action(right,4)
%state_at((12,7),6)
%state_at((12,7),5)
%state_at((12,7),4)
%action(up,3)
%state_at((11,7),6)
%state_at((11,7),5)
%state_at((11,7),4)
%state_at((10,7),6)
%state_at((10,7),5)
%state_at((10,7),4)
%state_at((9,7),6)
%state_at((9,7),5)
%state_at((9,7),4)
%state_at((8,7),6)
%state_at((8,7),5)
%state_at((8,7),4)
%state_at((7,7),6)
%state_at((7,7),5)
%state_at((7,7),4)
%state_at((6,7),6)
%state_at((6,7),5)
%state_at((6,7),4)
%state_at((5,7),6)
%state_at((5,7),5)
%state_at((5,7),4)
%state_at((4,7),6)
%state_at((4,7),5)
%state_at((4,7),4)
%state_at((3,7),6)
%state_at((3,7),5)
%state_at((3,7),4)
%state_at((2,7),5)
%state_at((2,7),4)
%state_at((1,7),4)
%state_at((10,5),6)
%state_at((10,5),5)
%state_at((10,5),4)
%state_at((9,5),6)
%state_at((9,5),5)
%state_at((9,5),4)
%state_at((8,5),6)
%state_at((8,5),5)
%state_at((8,5),4)
%state_at((7,5),5)
%state_at((7,5),4)
%state_at((6,5),6)
%state_at((6,5),4)
%state_at((4,5),6)
%state_at((4,5),4)
%state_at((2,5),6)
%state_at((2,5),5)
%state_at((2,5),4)
%state_at((1,5),5)
%state_at((1,5),4)
%state_at((0,5),4)
%state_at((14,1),5)
%state_at((14,1),4)
%state_at((13,1),6)
%state_at((13,1),4)
%state_at((11,1),4)
%state_at((12,1),5)
%state_at((15,1),5)
%state_at((15,1),6)
%state_at((3,5),5)
%state_at((3,5),6)
%state_at((5,5),5)
%state_at((16,1),6)
