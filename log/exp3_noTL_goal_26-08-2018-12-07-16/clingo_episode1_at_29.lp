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
state_at(V0, T+1) :- time(T), state_at(V0, T), action(down, T).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), action(right, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), wall(V1).

%END
%AAA
state_at((13, 5), 29).
%BBB
%CCC
time(29..250).
%DDD
%ANSWER SETS

%state_at((13,5),29)
%state_at((11,5),31)
%action(right,30)
%state_at((11,5),32)
%action(right,31)
%state_at((11,5),33)
%action(right,32)
%state_at((11,5),34)
%state_at((13,5),31)
%state_at((13,5),32)
%state_at((13,5),33)
%state_at((13,5),34)
%state_at((13,5),35)
%state_at((0,6),31)
%state_at((0,6),32)
%state_at((0,6),33)
%state_at((1,6),31)
%state_at((1,6),32)
%state_at((1,6),33)
%state_at((2,6),31)
%state_at((2,6),32)
%state_at((2,6),33)
%state_at((4,6),31)
%state_at((4,6),32)
%state_at((4,6),33)
%state_at((4,6),35)
%state_at((6,6),31)
%state_at((6,6),32)
%state_at((6,6),33)
%state_at((6,6),35)
%state_at((7,6),31)
%state_at((7,6),32)
%state_at((7,6),33)
%state_at((8,6),31)
%state_at((8,6),32)
%state_at((8,6),33)
%state_at((9,6),31)
%state_at((9,6),32)
%state_at((9,6),33)
%state_at((10,6),31)
%state_at((10,6),32)
%state_at((10,6),33)
%state_at((11,6),31)
%state_at((11,6),32)
%state_at((11,6),33)
%state_at((13,6),31)
%state_at((13,6),32)
%state_at((13,6),33)
%state_at((13,6),34)
%state_at((13,7),31)
%state_at((13,7),32)
%state_at((13,7),33)
%state_at((0,8),31)
%state_at((0,8),32)
%state_at((0,8),33)
%state_at((0,8),34)
%state_at((0,8),35)
%state_at((0,8),36)
%state_at((1,8),31)
%state_at((1,8),32)
%state_at((1,8),33)
%state_at((2,8),31)
%state_at((2,8),32)
%state_at((2,8),33)
%state_at((3,8),31)
%state_at((3,8),32)
%state_at((3,8),33)
%state_at((4,8),31)
%state_at((4,8),32)
%state_at((4,8),33)
%state_at((5,8),31)
%state_at((5,8),32)
%state_at((5,8),33)
%state_at((6,8),31)
%state_at((6,8),32)
%state_at((6,8),33)
%state_at((7,8),31)
%state_at((7,8),32)
%state_at((7,8),33)
%state_at((8,8),31)
%state_at((8,8),32)
%state_at((8,8),33)
%state_at((9,8),31)
%state_at((9,8),32)
%state_at((9,8),33)
%state_at((10,8),31)
%state_at((10,8),32)
%state_at((10,8),33)
%state_at((11,8),31)
%state_at((11,8),32)
%state_at((11,8),33)
%state_at((12,8),31)
%state_at((12,8),32)
%state_at((12,8),33)
%state_at((12,7),36)
%action(up,35)
%state_at((12,7),35)
%action(up,34)
%state_at((12,7),34)
%action(up,33)
%state_at((11,7),36)
%state_at((11,7),35)
%state_at((11,7),34)
%state_at((10,7),36)
%state_at((10,7),35)
%state_at((10,7),34)
%state_at((9,7),36)
%state_at((9,7),35)
%state_at((9,7),34)
%state_at((8,7),36)
%state_at((8,7),35)
%state_at((8,7),34)
%state_at((7,7),36)
%state_at((7,7),35)
%state_at((7,7),34)
%state_at((6,7),34)
%state_at((5,7),36)
%state_at((5,7),35)
%state_at((5,7),34)
%state_at((4,7),34)
%state_at((3,7),36)
%state_at((3,7),35)
%state_at((3,7),34)
%state_at((2,7),36)
%state_at((2,7),35)
%state_at((2,7),34)
%state_at((1,7),36)
%state_at((1,7),35)
%state_at((1,7),34)
%state_at((10,5),34)
%state_at((9,5),34)
%state_at((8,5),34)
%state_at((7,5),34)
%state_at((6,5),36)
%state_at((6,5),34)
%state_at((4,5),36)
%state_at((4,5),34)
%state_at((2,5),34)
%state_at((1,5),34)
%state_at((0,5),34)
%state_at((13,4),36)
%state_at((13,4),35)
%state_at((13,4),34)
%state_at((11,4),35)
%state_at((11,4),34)
%state_at((13,4),30)
%action(up,29)
%state_at((11,3),35)
%state_at((11,3),36)
%state_at((13,3),35)
%state_at((13,3),36)
%state_at((0,4),35)
%state_at((1,4),35)
%state_at((2,4),35)
%state_at((4,4),35)
%state_at((6,4),35)
%state_at((7,4),35)
%state_at((8,4),35)
%state_at((9,4),35)
%state_at((10,4),35)
%state_at((14,4),31)
%state_at((10,3),36)
%state_at((9,3),36)
%state_at((8,3),36)
%state_at((7,3),36)
%state_at((6,3),36)
%state_at((4,3),36)
%state_at((2,3),36)
%state_at((1,3),36)
%state_at((0,3),36)
%state_at((13,2),36)
%state_at((11,2),36)
%state_at((15,4),32)
%state_at((16,4),33)
%state_at((16,3),34)
%state_at((16,2),35)
%state_at((16,1),36)
