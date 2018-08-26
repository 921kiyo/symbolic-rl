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
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), action(down, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), wall(V1).

%END
%AAA
state_at((13, 2), 47).
%BBB
%CCC
time(47..250).
%DDD
%ANSWER SETS

%state_at((13,2),47)
%state_at((12,1),48)
%action(down,47)
%state_at((14,1),48)
%state_at((14,1),50)
%state_at((12,2),48)
%state_at((14,2),48)
%state_at((12,3),48)
%state_at((14,3),48)
%state_at((12,4),48)
%state_at((14,4),48)
%state_at((1,5),48)
%state_at((2,5),48)
%state_at((2,5),49)
%state_at((3,5),48)
%state_at((3,5),49)
%state_at((3,5),50)
%state_at((5,5),48)
%state_at((5,5),50)
%state_at((7,5),48)
%state_at((7,5),50)
%state_at((8,5),48)
%state_at((8,5),49)
%state_at((9,5),48)
%state_at((9,5),49)
%state_at((9,5),50)
%state_at((10,5),48)
%state_at((10,5),49)
%state_at((10,5),50)
%state_at((11,5),48)
%state_at((11,5),49)
%state_at((11,5),50)
%state_at((12,5),48)
%state_at((14,5),48)
%state_at((0,6),48)
%state_at((0,6),49)
%state_at((0,6),50)
%state_at((14,6),48)
%state_at((1,7),48)
%state_at((2,7),48)
%state_at((2,7),49)
%state_at((3,7),48)
%state_at((3,7),49)
%state_at((3,7),50)
%state_at((4,7),48)
%state_at((4,7),49)
%state_at((4,7),50)
%state_at((5,7),48)
%state_at((5,7),49)
%state_at((5,7),50)
%state_at((6,7),48)
%state_at((6,7),49)
%state_at((6,7),50)
%state_at((7,7),48)
%state_at((7,7),49)
%state_at((7,7),50)
%state_at((8,7),48)
%state_at((8,7),49)
%state_at((8,7),50)
%state_at((9,7),48)
%state_at((9,7),49)
%state_at((9,7),50)
%state_at((10,7),48)
%state_at((10,7),49)
%state_at((10,7),50)
%state_at((11,7),48)
%state_at((11,7),49)
%state_at((11,7),50)
%state_at((12,7),48)
%state_at((12,7),49)
%state_at((12,7),50)
%state_at((13,7),48)
%state_at((13,7),49)
%state_at((13,7),50)
%action(right,49)
%action(right,48)
%state_at((13,3),48)
%state_at((15,6),49)
%state_at((15,5),49)
%state_at((13,5),50)
%state_at((13,5),49)
%state_at((6,5),49)
%state_at((4,5),50)
%state_at((4,5),49)
%state_at((15,4),49)
%state_at((13,4),50)
%state_at((13,4),49)
%state_at((15,3),49)
%state_at((13,3),50)
%state_at((13,3),49)
%state_at((15,2),49)
%state_at((13,2),50)
%state_at((13,2),49)
%state_at((15,1),49)
%state_at((13,1),49)
%state_at((16,1),50)
%state_at((16,2),50)
%state_at((16,3),50)
%state_at((16,4),50)
%state_at((16,5),50)
%state_at((16,6),50)
