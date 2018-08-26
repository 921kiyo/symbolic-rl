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
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), action(down, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).

%END
%AAA
state_at((13, 3), 31).
%BBB
%CCC
time(31..250).
%DDD
%ANSWER SETS

%state_at((13,3),31)
%state_at((12,3),32)
%action(down,31)
%state_at((14,3),32)
%state_at((12,4),32)
%state_at((14,4),32)
%state_at((12,5),32)
%state_at((14,5),32)
%state_at((12,6),32)
%state_at((14,6),32)
%state_at((1,7),32)
%state_at((2,7),32)
%state_at((2,7),33)
%state_at((2,7),34)
%state_at((2,7),35)
%state_at((3,7),32)
%state_at((3,7),33)
%state_at((3,7),34)
%state_at((3,7),35)
%state_at((3,7),36)
%state_at((5,7),32)
%state_at((7,7),32)
%state_at((8,7),32)
%state_at((8,7),33)
%state_at((8,7),34)
%state_at((8,7),35)
%state_at((9,7),32)
%state_at((9,7),33)
%state_at((9,7),34)
%state_at((9,7),35)
%state_at((9,7),36)
%state_at((10,7),32)
%state_at((10,7),33)
%state_at((10,7),34)
%state_at((10,7),35)
%state_at((10,7),36)
%state_at((11,7),32)
%state_at((11,7),33)
%state_at((11,7),34)
%state_at((11,7),35)
%state_at((11,7),36)
%state_at((12,7),32)
%state_at((12,7),33)
%state_at((12,7),34)
%state_at((12,7),35)
%state_at((12,7),36)
%state_at((14,7),32)
%state_at((0,8),32)
%state_at((0,8),33)
%state_at((0,8),34)
%state_at((0,8),35)
%state_at((0,8),36)
%state_at((14,8),32)
%action(right,35)
%action(right,32)
%state_at((13,4),32)
%state_at((15,8),33)
%state_at((15,7),34)
%state_at((15,7),33)
%state_at((13,7),36)
%state_at((13,7),33)
%state_at((6,7),33)
%state_at((4,7),36)
%state_at((4,7),33)
%state_at((15,6),35)
%state_at((15,6),34)
%state_at((15,6),33)
%state_at((13,6),34)
%state_at((13,6),33)
%state_at((15,5),35)
%state_at((15,5),34)
%state_at((15,5),33)
%state_at((13,5),36)
%state_at((13,5),35)
%state_at((13,5),34)
%state_at((13,5),33)
%state_at((15,4),35)
%state_at((15,4),34)
%state_at((15,4),33)
%state_at((13,4),36)
%state_at((13,4),35)
%state_at((13,4),34)
%state_at((13,4),33)
%state_at((15,3),35)
%state_at((15,3),34)
%state_at((15,3),33)
%state_at((13,3),36)
%state_at((13,3),35)
%state_at((13,3),34)
%state_at((13,3),33)
%action(up,34)
%action(up,33)
%state_at((13,2),34)
%state_at((13,2),35)
%state_at((13,2),36)
%state_at((15,2),34)
%state_at((15,2),35)
%state_at((4,6),34)
%state_at((6,6),34)
%state_at((16,3),36)
%state_at((16,4),36)
%state_at((16,5),36)
%state_at((16,6),36)
%state_at((16,2),36)
%state_at((6,5),35)
%state_at((4,5),35)
%state_at((15,1),35)
%state_at((13,1),35)
%state_at((16,1),36)
%state_at((14,1),36)
%state_at((5,5),36)
%state_at((7,5),36)
