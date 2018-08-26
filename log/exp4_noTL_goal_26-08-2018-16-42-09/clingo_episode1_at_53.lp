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

wall((2, 4)).

wall((3, 4)).

wall((5, 5)).

wall((4, 4)).

wall((0, 5)).

wall((0, 4)).

wall((2, 3)).

wall((0, 3)).

wall((2, 2)).

wall((0, 2)).
%START
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), action(down, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), wall(V1).

%END
%AAA
state_at((1, 4), 53).
%BBB
%CCC
time(53..250).
%DDD
%ANSWER SETS

%state_at((1,4),53)
%state_at((0,1),54)
%action(down,53)
%state_at((2,1),54)
%state_at((2,1),56)
%state_at((0,2),54)
%state_at((2,2),54)
%state_at((0,3),54)
%state_at((2,3),54)
%state_at((3,3),54)
%state_at((3,3),55)
%state_at((4,3),54)
%state_at((4,3),55)
%state_at((4,3),56)
%state_at((0,4),54)
%state_at((5,4),54)
%state_at((1,5),54)
%state_at((3,5),54)
%state_at((3,5),56)
%state_at((5,5),54)
%state_at((7,5),54)
%state_at((7,5),56)
%state_at((0,6),54)
%state_at((0,6),55)
%state_at((0,6),56)
%state_at((0,6),57)
%state_at((0,6),58)
%state_at((0,6),59)
%state_at((0,6),60)
%state_at((0,6),61)
%state_at((0,6),62)
%state_at((0,6),63)
%state_at((0,6),64)
%state_at((0,6),65)
%state_at((0,6),66)
%state_at((0,6),67)
%state_at((1,7),54)
%state_at((2,7),54)
%state_at((2,7),55)
%state_at((3,7),54)
%state_at((3,7),55)
%state_at((3,7),56)
%state_at((4,7),54)
%state_at((4,7),55)
%state_at((4,7),56)
%state_at((4,7),57)
%state_at((5,7),54)
%state_at((5,7),55)
%state_at((5,7),56)
%state_at((5,7),57)
%state_at((5,7),58)
%state_at((6,7),54)
%state_at((6,7),55)
%state_at((6,7),56)
%state_at((6,7),57)
%state_at((6,7),58)
%state_at((6,7),59)
%state_at((7,7),54)
%state_at((7,7),55)
%state_at((7,7),56)
%state_at((7,7),57)
%state_at((7,7),58)
%state_at((7,7),59)
%state_at((7,7),60)
%action(right,62)
%action(right,61)
%action(right,60)
%action(right,59)
%action(right,58)
%action(right,57)
%action(right,56)
%action(right,55)
%action(right,54)
%action(up,66)
%action(up,65)
%action(up,64)
%action(up,63)
%state_at((7,4),56)
%state_at((1,4),63)
%state_at((1,4),62)
%state_at((1,4),61)
%state_at((1,4),60)
%state_at((1,4),59)
%state_at((1,4),58)
%state_at((1,4),57)
%state_at((1,4),56)
%state_at((1,4),55)
%state_at((5,3),57)
%state_at((5,3),56)
%state_at((5,3),55)
%state_at((4,2),56)
%state_at((3,2),55)
%state_at((8,7),61)
%state_at((8,7),60)
%state_at((8,7),59)
%state_at((8,7),58)
%state_at((8,7),57)
%state_at((8,7),56)
%state_at((8,7),55)
%state_at((8,5),57)
%state_at((8,5),55)
%state_at((6,5),55)
%state_at((4,5),67)
%state_at((4,5),66)
%state_at((4,5),65)
%state_at((4,5),64)
%state_at((4,5),63)
%state_at((4,5),62)
%state_at((4,5),61)
%state_at((4,5),60)
%state_at((4,5),59)
%state_at((4,5),58)
%state_at((4,5),57)
%state_at((4,5),56)
%state_at((4,5),55)
%state_at((2,5),55)
%state_at((6,4),55)
%state_at((1,3),64)
%state_at((1,3),63)
%state_at((1,3),62)
%state_at((1,3),61)
%state_at((1,3),60)
%state_at((1,3),59)
%state_at((1,3),58)
%state_at((1,3),57)
%state_at((1,3),56)
%state_at((1,3),55)
%state_at((1,2),65)
%state_at((1,2),64)
%state_at((1,2),63)
%state_at((1,2),62)
%state_at((1,2),61)
%state_at((1,2),60)
%state_at((1,2),59)
%state_at((1,2),58)
%state_at((1,2),57)
%state_at((1,2),56)
%state_at((1,2),55)
%state_at((3,1),57)
%state_at((3,1),55)
%state_at((1,1),66)
%state_at((1,1),65)
%state_at((1,1),64)
%state_at((1,1),55)
%state_at((1,0),65)
%state_at((1,0),66)
%state_at((1,0),67)
%state_at((6,3),56)
%state_at((6,3),57)
%state_at((6,3),58)
%state_at((8,4),57)
%state_at((4,1),56)
%state_at((4,1),58)
%state_at((5,2),57)
%state_at((7,3),57)
%state_at((7,3),58)
%state_at((7,3),59)
%state_at((9,5),56)
%state_at((9,5),58)
%state_at((9,7),56)
%state_at((9,7),57)
%state_at((9,7),58)
%state_at((9,7),59)
%state_at((9,7),60)
%state_at((9,7),61)
%state_at((9,7),62)
%state_at((9,4),58)
%state_at((7,2),59)
%state_at((5,1),59)
%state_at((5,1),57)
%state_at((8,3),60)
%state_at((8,3),59)
%state_at((8,3),58)
%state_at((6,2),58)
%state_at((10,7),63)
%state_at((10,7),62)
%state_at((10,7),61)
%state_at((10,7),60)
%state_at((10,7),59)
%state_at((10,7),58)
%state_at((10,7),57)
%state_at((10,5),65)
%state_at((10,5),59)
%state_at((10,5),57)
%state_at((10,6),64)
%state_at((10,4),59)
%state_at((10,4),66)
%state_at((6,1),58)
%state_at((6,1),60)
%state_at((8,2),60)
%state_at((7,1),59)
%state_at((7,1),61)
%state_at((9,3),59)
%state_at((9,3),60)
%state_at((9,3),61)
%state_at((11,5),58)
%state_at((11,5),60)
%state_at((11,5),65)
%state_at((11,7),58)
%state_at((11,7),59)
%state_at((11,7),60)
%state_at((11,7),61)
%state_at((11,7),62)
%state_at((11,7),63)
%state_at((11,6),64)
%state_at((11,4),66)
%state_at((11,4),60)
%state_at((9,2),61)
%state_at((8,1),62)
%state_at((8,1),60)
%state_at((10,3),67)
%state_at((10,3),62)
%state_at((10,3),61)
%state_at((10,3),60)
%state_at((12,7),63)
%state_at((12,7),62)
%state_at((12,7),61)
%state_at((12,7),60)
%state_at((12,7),59)
%state_at((12,5),65)
%state_at((12,5),61)
%state_at((12,5),59)
%state_at((12,6),64)
%state_at((12,4),61)
%state_at((12,4),66)
%state_at((10,2),62)
%state_at((9,1),61)
%state_at((9,1),63)
%state_at((11,3),61)
%state_at((11,3),62)
%state_at((11,3),63)
%state_at((11,3),67)
%state_at((13,5),60)
%state_at((13,5),62)
%state_at((13,5),65)
%state_at((13,7),60)
%state_at((13,7),61)
%state_at((13,7),62)
%state_at((13,7),63)
%state_at((13,6),64)
%state_at((13,4),66)
%state_at((13,4),62)
%state_at((11,2),64)
%state_at((11,2),63)
%state_at((9,0),64)
%state_at((10,1),62)
%state_at((12,3),67)
%state_at((12,3),63)
%state_at((12,3),62)
%state_at((14,7),63)
%state_at((14,7),62)
%state_at((14,7),61)
%state_at((14,5),65)
%state_at((14,5),63)
%state_at((14,5),61)
%state_at((14,6),64)
%state_at((14,4),63)
%state_at((14,4),64)
%state_at((14,4),66)
%state_at((12,2),64)
%state_at((11,1),63)
%state_at((11,1),64)
%state_at((11,1),65)
%state_at((13,3),63)
%state_at((13,3),67)
%state_at((15,5),62)
%state_at((15,5),65)
%state_at((15,7),62)
%state_at((15,7),63)
%state_at((15,6),64)
%state_at((15,4),66)
%state_at((13,2),64)
%state_at((11,0),66)
%state_at((11,0),65)
%state_at((11,0),64)
%state_at((12,1),65)
%state_at((14,3),67)
%state_at((14,3),65)
%state_at((14,3),64)
%state_at((16,7),63)
%state_at((16,5),65)
%state_at((16,5),63)
%state_at((16,6),64)
%state_at((16,4),64)
%state_at((16,4),66)
%state_at((14,2),65)
%state_at((14,2),66)
%state_at((12,0),66)
%state_at((13,1),65)
%state_at((15,3),67)
%state_at((13,0),66)
%state_at((14,1),67)
%state_at((14,1),66)
%state_at((16,3),67)
%state_at((16,3),65)
%state_at((16,2),66)
%state_at((14,0),67)
%state_at((16,1),67)
