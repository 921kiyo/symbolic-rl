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
%START
state_at(V0, T+1) :- time(T), state_at(V0, T), action(down, T).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), action(right, T), wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).

%END
%AAA
state_at((13, 7), 20).
%BBB
%CCC
time(20..250).
%DDD
%ANSWER SETS

%state_at((13,7),20)
%state_at((0,6),22)
%action(right,21)
%state_at((0,6),23)
%action(right,22)
%state_at((0,6),24)
%action(right,23)
%state_at((1,6),22)
%state_at((1,6),23)
%state_at((1,6),24)
%state_at((2,6),22)
%state_at((2,6),23)
%state_at((2,6),24)
%state_at((4,6),22)
%state_at((4,6),23)
%state_at((4,6),24)
%state_at((4,6),26)
%state_at((6,6),22)
%state_at((6,6),23)
%state_at((6,6),24)
%state_at((6,6),26)
%state_at((7,6),22)
%state_at((7,6),23)
%state_at((7,6),24)
%state_at((8,6),22)
%state_at((8,6),23)
%state_at((8,6),24)
%state_at((9,6),22)
%state_at((9,6),23)
%state_at((9,6),24)
%state_at((10,6),22)
%state_at((10,6),23)
%state_at((10,6),24)
%state_at((11,6),22)
%state_at((11,6),23)
%state_at((11,6),24)
%state_at((13,7),22)
%state_at((13,7),23)
%state_at((13,7),24)
%state_at((0,8),22)
%state_at((0,8),23)
%state_at((0,8),24)
%state_at((0,8),25)
%state_at((0,8),26)
%state_at((0,8),27)
%state_at((0,8),28)
%state_at((0,8),29)
%state_at((1,8),22)
%state_at((1,8),23)
%state_at((1,8),24)
%state_at((2,8),22)
%state_at((2,8),23)
%state_at((2,8),24)
%state_at((3,8),22)
%state_at((3,8),23)
%state_at((3,8),24)
%state_at((4,8),22)
%state_at((4,8),23)
%state_at((4,8),24)
%state_at((5,8),22)
%state_at((5,8),23)
%state_at((5,8),24)
%state_at((6,8),22)
%state_at((6,8),23)
%state_at((6,8),24)
%state_at((7,8),22)
%state_at((7,8),23)
%state_at((7,8),24)
%state_at((8,8),22)
%state_at((8,8),23)
%state_at((8,8),24)
%state_at((9,8),22)
%state_at((9,8),23)
%state_at((9,8),24)
%state_at((10,8),22)
%state_at((10,8),23)
%state_at((10,8),24)
%state_at((11,8),22)
%state_at((11,8),23)
%state_at((11,8),24)
%state_at((12,8),22)
%state_at((12,8),23)
%state_at((12,8),24)
%state_at((12,7),29)
%action(up,28)
%state_at((12,7),28)
%action(up,27)
%state_at((12,7),27)
%action(up,26)
%state_at((12,7),26)
%action(up,25)
%state_at((12,7),25)
%action(up,24)
%state_at((11,7),29)
%state_at((11,7),28)
%state_at((11,7),27)
%state_at((11,7),26)
%state_at((11,7),25)
%state_at((10,7),29)
%state_at((10,7),28)
%state_at((10,7),27)
%state_at((10,7),26)
%state_at((10,7),25)
%state_at((9,7),29)
%state_at((9,7),28)
%state_at((9,7),27)
%state_at((9,7),26)
%state_at((9,7),25)
%state_at((8,7),29)
%state_at((8,7),28)
%state_at((8,7),27)
%state_at((8,7),26)
%state_at((8,7),25)
%state_at((7,7),29)
%state_at((7,7),28)
%state_at((7,7),27)
%state_at((7,7),26)
%state_at((7,7),25)
%state_at((6,7),25)
%state_at((5,7),29)
%state_at((5,7),28)
%state_at((5,7),27)
%state_at((5,7),26)
%state_at((5,7),25)
%state_at((4,7),25)
%state_at((3,7),29)
%state_at((3,7),28)
%state_at((3,7),27)
%state_at((3,7),26)
%state_at((3,7),25)
%state_at((2,7),29)
%state_at((2,7),28)
%state_at((2,7),27)
%state_at((2,7),26)
%state_at((2,7),25)
%state_at((1,7),29)
%state_at((1,7),28)
%state_at((1,7),27)
%state_at((1,7),26)
%state_at((1,7),25)
%state_at((13,6),25)
%state_at((11,5),25)
%state_at((10,5),25)
%state_at((9,5),25)
%state_at((8,5),25)
%state_at((7,5),25)
%state_at((6,5),27)
%state_at((6,5),25)
%state_at((4,5),27)
%state_at((4,5),25)
%state_at((2,5),25)
%state_at((1,5),25)
%state_at((0,5),25)
%state_at((13,6),21)
%action(up,20)
%state_at((0,4),26)
%state_at((1,4),26)
%state_at((2,4),26)
%state_at((4,4),26)
%state_at((4,4),28)
%state_at((6,4),26)
%state_at((6,4),28)
%state_at((7,4),26)
%state_at((8,4),26)
%state_at((9,4),26)
%state_at((10,4),26)
%state_at((11,4),26)
%state_at((13,5),26)
%state_at((14,6),22)
%state_at((13,4),27)
%state_at((11,3),27)
%state_at((10,3),27)
%state_at((9,3),27)
%state_at((8,3),27)
%state_at((7,3),27)
%state_at((6,3),29)
%state_at((6,3),27)
%state_at((4,3),29)
%state_at((4,3),27)
%state_at((2,3),27)
%state_at((1,3),27)
%state_at((0,3),27)
%state_at((15,6),23)
%state_at((0,2),28)
%state_at((1,2),28)
%state_at((2,2),28)
%state_at((4,2),28)
%state_at((6,2),28)
%state_at((7,2),28)
%state_at((8,2),28)
%state_at((9,2),28)
%state_at((10,2),28)
%state_at((11,2),28)
%state_at((13,3),28)
%state_at((16,6),24)
%state_at((16,5),25)
%state_at((13,2),29)
%state_at((11,1),29)
%state_at((10,1),29)
%state_at((9,1),29)
%state_at((8,1),29)
%state_at((7,1),29)
%state_at((6,1),29)
%state_at((4,1),29)
%state_at((2,1),29)
%state_at((1,1),29)
%state_at((0,1),29)
%state_at((16,4),26)
%state_at((16,3),27)
%state_at((16,2),28)
%state_at((16,1),29)
