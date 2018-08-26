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
%START
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), action(down, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).

%END
%AAA
state_at((13, 6), 26).
%BBB
%CCC
time(26..250).
%DDD
%ANSWER SETS

%state_at((13,6),26)
%state_at((12,4),27)
%action(down,26)
%state_at((14,4),27)
%state_at((14,4),29)
%state_at((1,5),27)
%state_at((2,5),27)
%state_at((2,5),28)
%state_at((3,5),27)
%state_at((3,5),28)
%state_at((3,5),29)
%state_at((5,5),27)
%state_at((5,5),29)
%state_at((7,5),27)
%state_at((7,5),29)
%state_at((8,5),27)
%state_at((8,5),28)
%state_at((9,5),27)
%state_at((9,5),28)
%state_at((9,5),29)
%state_at((10,5),27)
%state_at((10,5),28)
%state_at((10,5),29)
%state_at((11,5),27)
%state_at((11,5),28)
%state_at((11,5),29)
%state_at((12,5),27)
%state_at((14,5),27)
%state_at((0,6),27)
%state_at((0,6),28)
%state_at((0,6),29)
%state_at((14,6),27)
%state_at((1,7),27)
%state_at((2,7),27)
%state_at((2,7),28)
%state_at((3,7),27)
%state_at((3,7),28)
%state_at((3,7),29)
%state_at((3,7),30)
%state_at((3,7),31)
%state_at((3,7),32)
%state_at((4,7),27)
%state_at((4,7),28)
%state_at((4,7),29)
%state_at((5,7),27)
%state_at((5,7),28)
%state_at((5,7),29)
%state_at((5,7),30)
%state_at((5,7),31)
%state_at((5,7),32)
%state_at((6,7),27)
%state_at((6,7),28)
%state_at((6,7),29)
%state_at((7,7),27)
%state_at((7,7),28)
%state_at((7,7),29)
%state_at((7,7),30)
%state_at((7,7),31)
%state_at((7,7),32)
%state_at((8,7),27)
%state_at((8,7),28)
%state_at((8,7),29)
%state_at((8,7),30)
%state_at((8,7),31)
%state_at((8,7),32)
%state_at((9,7),27)
%state_at((9,7),28)
%state_at((9,7),29)
%state_at((9,7),30)
%state_at((9,7),31)
%state_at((9,7),32)
%state_at((10,7),27)
%state_at((10,7),28)
%state_at((10,7),29)
%state_at((10,7),30)
%state_at((10,7),31)
%state_at((10,7),32)
%state_at((11,7),27)
%state_at((11,7),28)
%state_at((11,7),29)
%state_at((11,7),30)
%state_at((11,7),31)
%state_at((11,7),32)
%state_at((12,7),27)
%state_at((12,7),28)
%state_at((12,7),29)
%state_at((12,7),30)
%state_at((12,7),31)
%state_at((12,7),32)
%state_at((13,7),27)
%state_at((13,7),28)
%state_at((13,7),29)
%action(right,28)
%action(right,27)
%action(up,31)
%action(up,30)
%state_at((13,6),30)
%action(up,29)
%state_at((6,6),30)
%state_at((4,6),30)
%state_at((0,5),30)
%state_at((11,4),30)
%state_at((10,4),30)
%state_at((9,4),30)
%state_at((7,4),30)
%state_at((5,4),30)
%state_at((3,4),30)
%state_at((14,3),30)
%state_at((15,6),28)
%state_at((15,5),28)
%state_at((13,5),31)
%state_at((13,5),29)
%state_at((13,5),28)
%state_at((6,5),31)
%state_at((6,5),28)
%state_at((4,5),31)
%state_at((4,5),29)
%state_at((4,5),28)
%state_at((15,4),28)
%state_at((13,4),32)
%state_at((13,4),30)
%state_at((13,4),28)
%state_at((13,3),31)
%state_at((4,4),30)
%state_at((4,4),32)
%state_at((6,4),32)
%state_at((14,2),31)
%state_at((3,3),31)
%state_at((5,3),31)
%state_at((7,3),31)
%state_at((9,3),31)
%state_at((10,3),31)
%state_at((11,3),31)
%state_at((0,4),31)
%state_at((16,4),29)
%state_at((16,4),30)
%state_at((16,4),31)
%state_at((16,5),29)
%state_at((16,5),30)
%state_at((16,6),29)
%state_at((16,3),32)
%state_at((16,3),31)
%state_at((16,3),30)
%state_at((0,3),32)
%state_at((11,2),32)
%state_at((10,2),32)
%state_at((9,2),32)
%state_at((7,2),32)
%state_at((5,2),32)
%state_at((3,2),32)
%state_at((14,1),32)
%state_at((4,3),31)
%state_at((13,2),32)
%state_at((4,2),32)
%state_at((16,2),31)
%state_at((16,2),32)
%state_at((16,1),32)
