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
%START
state_at(V0, T+1) :- time(T), state_at(V0, T), action(down, T).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), wall(V1).

%END

wall((5, 5)).

wall((4, 4)).

wall((3, 4)).

wall((2, 4)).

wall((0, 5)).

wall((0, 4)).

wall((2, 3)).

wall((0, 3)).
%AAA
state_at((1, 2), 54).
%BBB
%CCC
time(54..250).
%DDD
%ANSWER SETS

%state_at((1,2),54)
%state_at((2,2),55)
%action(right,54)
%action(right,55)
%state_at((3,2),56)
%action(right,56)
%state_at((4,2),57)
%action(right,57)
%state_at((5,2),58)
%action(right,58)
%state_at((6,2),59)
%action(right,59)
%state_at((7,2),60)
%action(right,60)
%state_at((8,2),61)
%action(right,61)
%state_at((9,2),62)
%action(right,62)
%state_at((10,2),63)
%action(right,63)
%state_at((11,2),64)
%action(right,64)
%state_at((12,2),65)
%action(right,65)
%state_at((13,2),66)
%action(right,66)
%state_at((14,2),67)
%action(right,67)
%state_at((15,2),68)
%action(right,68)
%state_at((16,2),69)
%action(up,69)
%state_at((16,1),70)
