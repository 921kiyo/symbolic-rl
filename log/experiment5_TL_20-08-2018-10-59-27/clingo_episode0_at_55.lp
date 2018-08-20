1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..17, 0..8)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).
%START
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), wall(V1).state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).
%END
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

wall((5, 6)).

wall((5, 5)).

wall((4, 4)).

wall((3, 4)).

wall((2, 4)).

wall((5, 8)).
%AAA
state_at((5, 7), 55).
%BBB
%CCC
time(55..250).
%DDD
%ANSWER SETS

%state_at((5,7),55)
%state_at((6,7),56)
%action(right,55)
%action(right,56)
%state_at((7,7),57)
%action(right,57)
%state_at((8,7),58)
%action(right,58)
%state_at((9,7),59)
%action(right,59)
%state_at((10,7),60)
%action(right,60)
%state_at((11,7),61)
%action(right,61)
%state_at((12,7),62)
%action(right,62)
%state_at((13,7),63)
%action(right,63)
%state_at((14,7),64)
%action(right,64)
%state_at((15,7),65)
%action(right,65)
%state_at((16,7),66)
%action(up,66)
%state_at((16,6),67)
%action(up,67)
%state_at((16,5),68)
%action(up,68)
%state_at((16,4),69)
%action(up,69)
%state_at((16,3),70)
%action(up,70)
%state_at((16,2),71)
%action(up,71)
%state_at((16,1),72)
