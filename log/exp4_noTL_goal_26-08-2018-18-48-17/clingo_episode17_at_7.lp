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

wall((11, 8)).

wall((11, 6)).

wall((12, 8)).

wall((12, 6)).

wall((14, 7)).

wall((13, 8)).

wall((14, 6)).

wall((12, 5)).

wall((13, 4)).
link_start((14,5)). link_dest((14,3)). 

wall((15, 3)).

wall((14, 4)).

wall((13, 3)).

wall((15, 2)).

wall((13, 2)).

wall((14, 0)).

wall((15, 0)).

wall((5, 5)).

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

wall((7, 2)).

wall((7, 0)).

wall((8, 0)).

wall((9, 2)).

wall((9, 0)).

wall((10, 2)).

wall((10, 0)).

wall((11, 2)).

wall((11, 0)).

wall((12, 2)).

wall((12, 0)).

wall((13, 0)).
%START
state_at(V1, T+1) :- time(T), link_start(V0), link_dest(V1), state_at(V0, T).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), action(left, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), wall(V1).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).

%END
%AAA
state_at((5, 7), 7).
%BBB
%CCC
time(7..250).
%DDD
%ANSWER SETS

%state_at((5,7),7)
%state_at((2,0),8)
%action(left,7)
%state_at((3,0),8)
%state_at((4,0),8)
%state_at((5,0),8)
%state_at((6,0),8)
%state_at((7,0),8)
%state_at((8,0),8)
%state_at((9,0),8)
%state_at((10,0),8)
%state_at((11,0),8)
%state_at((12,0),8)
%state_at((13,0),8)
%state_at((14,0),8)
%state_at((15,0),8)
%state_at((16,0),8)
%state_at((1,1),8)
%state_at((1,1),9)
%state_at((1,2),8)
%state_at((1,2),9)
%state_at((3,2),8)
%state_at((4,2),8)
%state_at((5,2),8)
%state_at((6,2),8)
%state_at((7,2),8)
%state_at((8,2),8)
%state_at((10,2),8)
%state_at((11,2),8)
%state_at((12,2),8)
%state_at((13,2),8)
%state_at((14,2),8)
%state_at((14,2),9)
%state_at((16,2),8)
%state_at((16,2),9)
%state_at((1,3),8)
%state_at((1,3),9)
%state_at((3,3),8)
%state_at((3,3),9)
%state_at((14,3),8)
%state_at((14,3),9)
%state_at((16,3),8)
%state_at((1,4),8)
%state_at((1,4),9)
%state_at((3,4),8)
%state_at((4,4),8)
%state_at((5,4),8)
%state_at((14,4),8)
%state_at((15,4),8)
%state_at((15,4),9)
%state_at((1,5),8)
%state_at((6,5),8)
%state_at((6,5),9)
%state_at((13,5),8)
%state_at((13,5),9)
%state_at((2,6),8)
%state_at((4,6),8)
%state_at((4,6),9)
%state_at((6,6),8)
%state_at((8,6),8)
%state_at((9,6),8)
%state_at((10,6),8)
%state_at((12,6),8)
%state_at((12,6),9)
%state_at((13,6),8)
%state_at((15,6),8)
%state_at((15,6),9)
%state_at((1,7),8)
%state_at((1,7),9)
%state_at((15,7),8)
%state_at((2,8),8)
%state_at((3,8),8)
%state_at((4,8),8)
%state_at((5,8),8)
%state_at((6,8),8)
%state_at((7,8),8)
%state_at((8,8),8)
%state_at((9,8),8)
%state_at((10,8),8)
%state_at((11,8),8)
%state_at((12,8),8)
%state_at((13,8),8)
%state_at((14,8),8)
%state_at((14,8),9)
%state_at((13,7),9)
%action(up,8)
%state_at((12,7),9)
%state_at((11,7),9)
%state_at((10,7),9)
%state_at((9,7),9)
%state_at((8,7),9)
%state_at((7,7),9)
%state_at((6,7),9)
%state_at((5,7),9)
%state_at((4,7),9)
%state_at((3,7),9)
%state_at((2,7),9)
%state_at((15,5),9)
%state_at((10,5),9)
%state_at((9,5),9)
%state_at((8,5),9)
%state_at((4,5),9)
%state_at((2,5),9)
%state_at((6,4),9)
%state_at((5,3),9)
%state_at((4,3),9)
%state_at((16,1),9)
%state_at((14,1),9)
%state_at((13,1),9)
%state_at((12,1),9)
%state_at((11,1),9)
%state_at((10,1),9)
%state_at((8,1),9)
%state_at((7,1),9)
%state_at((6,1),9)
%state_at((5,1),9)
%state_at((4,1),9)
%state_at((3,1),9)
%state_at((4,7),8)
