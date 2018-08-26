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
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), action(right, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), action(up, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).

%END
%AAA
state_at((4, 6), 7).
%BBB
%CCC
time(7..250).
%DDD
%ANSWER SETS

%state_at((4,6),7)
%state_at((12,0),9)
%action(right,8)
%state_at((13,0),9)
%state_at((14,0),9)
%state_at((11,2),9)
%state_at((13,2),9)
%state_at((14,2),9)
%state_at((11,3),9)
%state_at((13,3),9)
%state_at((11,4),9)
%state_at((13,4),9)
%state_at((11,5),9)
%state_at((13,5),9)
%state_at((0,6),9)
%state_at((1,6),9)
%state_at((2,6),9)
%state_at((4,6),9)
%state_at((6,6),9)
%state_at((7,6),9)
%state_at((8,6),9)
%state_at((9,6),9)
%state_at((10,6),9)
%state_at((11,6),9)
%state_at((13,6),9)
%state_at((13,7),9)
%state_at((0,8),8)
%state_at((0,8),9)
%state_at((1,8),9)
%state_at((2,8),9)
%state_at((3,8),9)
%state_at((4,8),9)
%state_at((5,8),9)
%state_at((6,8),9)
%state_at((7,8),9)
%state_at((8,8),9)
%state_at((9,8),9)
%state_at((10,8),9)
%state_at((11,8),9)
%state_at((12,8),9)
%state_at((13,1),8)
%action(up,7)
%state_at((14,1),8)
%state_at((14,1),9)
%state_at((15,1),8)
%state_at((15,1),9)
%state_at((12,3),8)
%state_at((14,3),8)
%state_at((15,3),8)
%state_at((15,3),9)
%state_at((12,4),8)
%state_at((14,4),8)
%state_at((12,5),8)
%state_at((14,5),8)
%state_at((12,6),8)
%state_at((14,6),8)
%state_at((1,7),8)
%state_at((2,7),8)
%state_at((2,7),9)
%state_at((3,7),8)
%state_at((3,7),9)
%state_at((5,7),8)
%state_at((7,7),8)
%state_at((8,7),8)
%state_at((8,7),9)
%state_at((9,7),8)
%state_at((9,7),9)
%state_at((10,7),8)
%state_at((10,7),9)
%state_at((11,7),8)
%state_at((11,7),9)
%state_at((12,7),8)
%state_at((12,7),9)
%state_at((14,7),8)
%state_at((14,8),8)
%state_at((15,8),9)
%state_at((15,7),9)
%state_at((6,7),9)
%state_at((4,7),9)
%state_at((15,6),9)
%state_at((15,5),9)
%state_at((15,4),9)
%state_at((16,3),9)
%state_at((16,1),9)
%state_at((4,5),8)
%state_at((5,5),9)
