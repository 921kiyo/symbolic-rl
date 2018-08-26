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

wall((7, 2)).

wall((8, 0)).

wall((9, 0)).

wall((10, 0)).

wall((11, 2)).

wall((11, 0)).

wall((12, 0)).

wall((4, 4)).

wall((3, 4)).

wall((2, 4)).

wall((0, 5)).

wall((0, 4)).

wall((2, 3)).

wall((0, 3)).

wall((2, 2)).

wall((0, 2)).

wall((0, 1)).

wall((1, 0)).

wall((2, 0)).

wall((3, 2)).

wall((3, 0)).

wall((4, 2)).

wall((4, 0)).

wall((5, 2)).

wall((5, 0)).

wall((6, 2)).

wall((6, 0)).

wall((7, 0)).
%START
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), action(down, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), wall(V1).

%END
%AAA
state_at((13, 2), 30).
%BBB
%CCC
time(30..250).
%DDD
%ANSWER SETS

%state_at((13,2),30)
%state_at((0,0),31)
%action(down,30)
%state_at((0,0),32)
%state_at((0,1),31)
%state_at((2,1),31)
%state_at((3,1),31)
%state_at((3,1),32)
%state_at((4,1),31)
%state_at((4,1),32)
%state_at((5,1),31)
%state_at((5,1),32)
%state_at((6,1),31)
%state_at((6,1),32)
%state_at((7,1),31)
%state_at((7,1),32)
%state_at((9,1),31)
%state_at((10,1),31)
%state_at((10,1),32)
%state_at((11,1),31)
%state_at((11,1),32)
%state_at((12,1),31)
%state_at((12,1),32)
%state_at((14,1),31)
%state_at((15,1),31)
%state_at((15,1),32)
%state_at((0,2),31)
%state_at((2,2),31)
%state_at((2,2),32)
%state_at((7,2),31)
%state_at((11,2),31)
%state_at((11,2),32)
%state_at((12,2),31)
%state_at((14,2),31)
%state_at((14,2),32)
%state_at((0,3),31)
%state_at((2,3),31)
%state_at((3,3),31)
%state_at((3,3),32)
%state_at((4,3),31)
%state_at((4,3),32)
%state_at((6,3),31)
%state_at((6,3),32)
%state_at((7,3),31)
%state_at((8,3),31)
%state_at((8,3),32)
%state_at((9,3),31)
%state_at((9,3),32)
%state_at((11,3),31)
%state_at((11,3),32)
%state_at((12,3),31)
%state_at((14,3),31)
%state_at((0,4),31)
%state_at((5,4),31)
%state_at((5,4),32)
%state_at((11,4),31)
%state_at((11,4),32)
%state_at((12,4),31)
%state_at((14,4),31)
%state_at((1,5),31)
%state_at((2,5),31)
%state_at((2,5),32)
%state_at((3,5),31)
%state_at((3,5),32)
%state_at((5,5),31)
%state_at((7,5),31)
%state_at((8,5),31)
%state_at((8,5),32)
%state_at((9,5),31)
%state_at((9,5),32)
%state_at((10,5),31)
%state_at((10,5),32)
%state_at((11,5),31)
%state_at((11,5),32)
%state_at((12,5),31)
%state_at((14,5),31)
%state_at((0,6),31)
%state_at((0,6),32)
%state_at((14,6),31)
%state_at((1,7),31)
%state_at((2,7),31)
%state_at((2,7),32)
%state_at((3,7),31)
%state_at((3,7),32)
%state_at((4,7),31)
%state_at((4,7),32)
%state_at((5,7),31)
%state_at((5,7),32)
%state_at((6,7),31)
%state_at((6,7),32)
%state_at((7,7),31)
%state_at((7,7),32)
%state_at((8,7),31)
%state_at((8,7),32)
%state_at((9,7),31)
%state_at((9,7),32)
%state_at((10,7),31)
%state_at((10,7),32)
%state_at((11,7),31)
%state_at((11,7),32)
%state_at((12,7),31)
%state_at((12,7),32)
%state_at((13,7),31)
%state_at((13,7),32)
%action(right,31)
%state_at((13,3),31)
%state_at((1,4),32)
%state_at((5,3),32)
%state_at((8,2),32)
%state_at((15,6),32)
%state_at((15,5),32)
%state_at((13,5),32)
%state_at((6,5),32)
%state_at((4,5),32)
%state_at((15,4),32)
%state_at((13,4),32)
%state_at((15,3),32)
%state_at((13,3),32)
%state_at((10,3),32)
%state_at((1,3),32)
%state_at((13,2),32)
%state_at((1,2),32)
%state_at((16,1),32)
%state_at((13,1),32)
%state_at((8,1),32)
%state_at((1,1),32)
