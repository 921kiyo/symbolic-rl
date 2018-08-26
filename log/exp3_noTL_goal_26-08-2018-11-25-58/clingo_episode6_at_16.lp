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
%START
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), action(left, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).

%END
%AAA
state_at((13, 6), 16).
%BBB
%CCC
time(16..250).
%DDD
%ANSWER SETS

%state_at((13,6),16)
%state_at((9,0),17)
%action(left,16)
%state_at((10,0),17)
%state_at((11,0),17)
%state_at((12,0),17)
%state_at((13,0),17)
%state_at((14,0),17)
%state_at((15,0),17)
%state_at((16,0),17)
%state_at((8,2),17)
%state_at((10,2),17)
%state_at((11,2),17)
%state_at((11,2),18)
%state_at((12,2),17)
%state_at((12,2),18)
%state_at((13,2),17)
%state_at((15,2),17)
%state_at((16,2),17)
%state_at((8,3),17)
%state_at((8,3),18)
%state_at((12,3),17)
%state_at((12,3),18)
%state_at((13,3),17)
%state_at((13,3),18)
%state_at((15,3),17)
%state_at((15,3),18)
%state_at((5,4),17)
%state_at((5,4),18)
%state_at((7,4),17)
%state_at((8,4),17)
%state_at((9,4),17)
%state_at((10,4),17)
%state_at((12,4),17)
%state_at((12,4),18)
%state_at((13,4),17)
%state_at((13,4),18)
%state_at((15,4),17)
%state_at((15,4),18)
%state_at((6,5),17)
%state_at((12,5),17)
%state_at((12,5),18)
%state_at((13,5),17)
%state_at((13,5),18)
%state_at((15,5),17)
%state_at((15,5),18)
%state_at((2,6),17)
%state_at((3,6),17)
%state_at((4,6),17)
%state_at((6,6),17)
%state_at((6,6),18)
%state_at((8,6),17)
%state_at((9,6),17)
%state_at((10,6),17)
%state_at((11,6),17)
%state_at((12,6),17)
%state_at((13,6),17)
%state_at((13,6),18)
%state_at((15,6),17)
%state_at((15,6),18)
%state_at((1,7),17)
%state_at((1,7),18)
%state_at((15,7),17)
%state_at((15,7),18)
%state_at((2,8),17)
%state_at((3,8),17)
%state_at((4,8),17)
%state_at((5,8),17)
%state_at((6,8),17)
%state_at((7,8),17)
%state_at((8,8),17)
%state_at((9,8),17)
%state_at((10,8),17)
%state_at((11,8),17)
%state_at((12,8),17)
%state_at((13,8),17)
%state_at((14,8),17)
%action(down,17)
%state_at((15,8),18)
%state_at((13,7),18)
%state_at((12,7),18)
%state_at((11,7),18)
%state_at((10,7),18)
%state_at((9,7),18)
%state_at((8,7),18)
%state_at((6,7),18)
%state_at((4,7),18)
%state_at((3,7),18)
%state_at((2,7),18)
%state_at((10,5),18)
%state_at((9,5),18)
%state_at((8,5),18)
%state_at((7,5),18)
%state_at((16,3),18)
%state_at((10,3),18)
%state_at((16,1),18)
%state_at((15,1),18)
%state_at((14,1),18)
%state_at((13,1),18)
%state_at((12,1),18)
%state_at((11,1),18)
%state_at((10,1),18)
%state_at((9,1),18)
