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
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(down, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).

%END

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

wall((3, 4)).

wall((2, 4)).
%AAA
state_at((4, 5), 45).
%BBB
%CCC
time(45..250).
%DDD
%ANSWER SETS

%state_at((4,5),45)
%state_at((4,5),46)
%action(down,45)
%state_at((4,6),46)
%action(down,46)
%state_at((4,5),47)
%state_at((4,6),47)
%state_at((4,7),47)
%state_at((4,5),48)
%state_at((4,6),48)
%action(right,47)
%state_at((5,7),48)
%state_at((4,5),49)
%state_at((4,6),49)
%action(right,48)
%state_at((6,7),49)
%state_at((4,5),50)
%action(up,49)
%state_at((6,6),50)
%state_at((4,5),51)
%action(up,50)
%state_at((6,5),51)
%state_at((4,5),52)
%action(right,51)
%state_at((7,5),52)
%state_at((4,5),53)
%action(right,52)
%state_at((8,5),53)
%state_at((4,5),54)
%action(right,53)
%state_at((9,5),54)
%state_at((4,5),55)
%action(right,54)
%state_at((10,5),55)
%state_at((4,5),56)
%action(right,55)
%state_at((11,5),56)
%state_at((4,5),57)
%state_at((11,4),57)
%action(up,56)
%state_at((4,5),58)
%action(up,57)
%state_at((11,3),58)
%state_at((4,5),59)
%action(up,58)
%state_at((11,2),59)
%state_at((4,5),60)
%action(up,59)
%state_at((11,1),60)
%state_at((4,5),61)
%action(right,60)
%state_at((12,1),61)
%state_at((4,5),62)
%action(right,61)
%state_at((13,1),62)
%state_at((4,5),63)
%action(right,62)
%state_at((14,1),63)
%state_at((4,5),64)
%action(right,63)
%state_at((15,1),64)
%state_at((4,5),65)
%action(right,64)
%state_at((16,1),65)
