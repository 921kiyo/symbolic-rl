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
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), action(down, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), wall(V1).

%END
%AAA
state_at((1, 3), 45).
%BBB
%CCC
time(45..250).
%DDD
%ANSWER SETS

%state_at((1,3),45)
%state_at((0,3),46)
%action(down,45)
%state_at((2,3),46)
%state_at((0,4),46)
%state_at((2,4),46)
%state_at((2,4),47)
%state_at((2,4),48)
%state_at((2,4),49)
%state_at((2,4),50)
%state_at((2,4),51)
%state_at((2,4),52)
%state_at((2,4),53)
%state_at((2,4),54)
%state_at((2,4),55)
%state_at((2,4),56)
%state_at((2,4),57)
%state_at((2,4),58)
%state_at((2,4),59)
%state_at((2,4),60)
%state_at((2,4),61)
%state_at((0,5),46)
%state_at((2,5),46)
%state_at((2,5),48)
%state_at((3,5),46)
%state_at((3,5),47)
%state_at((3,5),49)
%state_at((4,5),46)
%state_at((4,5),47)
%state_at((4,5),48)
%state_at((4,5),49)
%state_at((4,5),50)
%state_at((4,5),51)
%state_at((4,5),52)
%state_at((4,5),53)
%state_at((4,5),54)
%state_at((4,5),55)
%state_at((4,5),56)
%state_at((4,5),57)
%state_at((4,5),58)
%state_at((4,5),59)
%state_at((4,5),60)
%state_at((4,5),61)
%state_at((0,6),46)
%state_at((0,6),47)
%state_at((0,6),48)
%state_at((0,6),49)
%state_at((0,6),50)
%state_at((0,6),51)
%state_at((0,6),52)
%state_at((0,6),53)
%state_at((0,6),54)
%state_at((0,6),55)
%state_at((0,6),56)
%state_at((0,6),57)
%state_at((0,6),58)
%state_at((0,6),59)
%state_at((0,6),60)
%state_at((0,6),61)
%state_at((5,6),46)
%state_at((1,7),46)
%state_at((3,7),46)
%state_at((3,7),48)
%state_at((5,7),46)
%state_at((5,7),48)
%state_at((5,7),50)
%state_at((7,7),46)
%state_at((7,7),48)
%state_at((7,7),50)
%state_at((7,7),52)
%state_at((0,8),46)
%state_at((0,8),47)
%state_at((0,8),48)
%state_at((0,8),49)
%state_at((0,8),50)
%state_at((0,8),51)
%state_at((0,8),52)
%state_at((0,8),53)
%state_at((0,8),54)
%state_at((0,8),55)
%state_at((0,8),56)
%state_at((0,8),57)
%state_at((0,8),58)
%state_at((0,8),59)
%state_at((0,8),60)
%state_at((0,8),61)
%action(right,54)
%action(right,53)
%action(right,52)
%action(right,51)
%action(right,50)
%action(right,49)
%action(right,48)
%action(right,47)
%action(right,46)
%state_at((1,4),46)
%state_at((8,7),53)
%state_at((8,7),51)
%state_at((8,7),49)
%state_at((8,7),47)
%state_at((6,7),51)
%state_at((6,7),49)
%state_at((6,7),47)
%state_at((4,7),49)
%state_at((4,7),47)
%state_at((2,7),47)
%state_at((6,6),55)
%state_at((6,6),54)
%state_at((6,6),53)
%state_at((6,6),52)
%state_at((6,6),51)
%state_at((6,6),50)
%state_at((6,6),49)
%state_at((6,6),48)
%state_at((6,6),47)
%state_at((1,5),47)
%state_at((1,4),55)
%state_at((1,4),54)
%state_at((1,4),53)
%state_at((1,4),52)
%state_at((1,4),51)
%state_at((1,4),50)
%state_at((1,4),49)
%state_at((1,4),48)
%state_at((1,4),47)
%state_at((3,3),47)
%state_at((1,3),56)
%state_at((1,3),55)
%state_at((1,3),54)
%state_at((1,3),53)
%state_at((1,3),52)
%state_at((1,3),51)
%state_at((1,3),50)
%state_at((1,3),49)
%state_at((1,3),48)
%state_at((1,3),47)
%action(up,60)
%action(up,59)
%action(up,58)
%action(up,57)
%action(up,56)
%action(up,55)
%state_at((1,2),56)
%state_at((1,2),57)
%state_at((6,5),56)
%state_at((4,3),48)
%state_at((9,7),48)
%state_at((9,7),50)
%state_at((9,7),52)
%state_at((9,7),54)
%state_at((6,4),57)
%state_at((1,1),58)
%state_at((1,1),57)
%state_at((10,7),55)
%state_at((10,7),53)
%state_at((10,7),51)
%state_at((10,7),49)
%state_at((5,3),49)
%state_at((10,6),56)
%state_at((1,0),58)
%state_at((1,0),59)
%state_at((6,3),50)
%state_at((6,3),58)
%state_at((11,7),50)
%state_at((11,7),52)
%state_at((11,7),54)
%state_at((8,3),52)
%state_at((6,2),59)
%state_at((10,5),57)
%state_at((7,3),51)
%state_at((12,7),55)
%state_at((12,7),53)
%state_at((12,7),51)
%state_at((12,6),56)
%state_at((10,4),58)
%state_at((6,1),60)
%state_at((9,3),53)
%state_at((13,7),52)
%state_at((13,7),54)
%state_at((6,0),61)
%state_at((10,3),59)
%state_at((10,3),54)
%state_at((12,5),57)
%state_at((14,7),55)
%state_at((14,7),53)
%state_at((14,6),56)
%state_at((12,4),58)
%state_at((10,2),60)
%state_at((11,3),55)
%state_at((15,7),54)
%state_at((11,2),56)
%state_at((10,1),61)
%state_at((12,3),59)
%state_at((14,5),57)
%state_at((16,7),55)
%state_at((16,6),56)
%state_at((14,4),58)
%state_at((12,2),60)
%state_at((11,1),57)
%state_at((11,0),58)
%state_at((12,1),61)
%state_at((14,3),59)
%state_at((16,5),57)
%state_at((16,4),58)
%state_at((14,2),60)
%state_at((14,1),61)
%state_at((16,3),59)
%state_at((16,2),60)
%state_at((16,1),61)
