1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..18, 0..10)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).
%START
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), not wall(V0).state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), wall(V0).state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), wall(V1).state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).
%END
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((17, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((1, 10)).

wall((0, 9)).

wall((1, 8)).

wall((2, 10)).

wall((2, 8)).

wall((3, 10)).

wall((3, 8)).

wall((4, 10)).

wall((5, 10)).

wall((5, 8)).

wall((6, 10)).

wall((7, 10)).

wall((7, 8)).

wall((5, 7)).

wall((6, 6)).

wall((7, 6)).

wall((8, 8)).

wall((8, 6)).

wall((9, 8)).

wall((9, 6)).

wall((11, 7)).

wall((10, 8)).

wall((11, 6)).

wall((11, 5)).

wall((9, 5)).

wall((11, 4)).

wall((10, 3)).

wall((9, 3)).

wall((8, 5)).

wall((7, 4)).

wall((8, 3)).
%AAA
state_at((10, 5), 51).
%BBB
%CCC
time(51..250).
%DDD
%ANSWER SETS

%state_at((10,5),51)
%state_at((10,6),52)
%action(down,51)
%action(down,52)
%state_at((10,7),53)
%action(left,53)
%state_at((9,7),54)
%action(left,54)
%state_at((8,7),55)
%action(left,55)
%state_at((7,7),56)
%action(left,56)
%state_at((6,7),57)
%action(down,57)
%state_at((6,8),58)
%action(down,58)
%state_at((6,9),59)
%action(right,59)
%state_at((7,9),60)
%action(right,60)
%state_at((8,9),61)
%action(right,61)
%state_at((9,9),62)
%action(right,62)
%state_at((10,9),63)
%action(right,63)
%state_at((11,9),64)
%action(right,64)
%state_at((12,9),65)
%action(up,65)
%state_at((12,8),66)
%action(up,66)
%state_at((12,7),67)
%action(up,67)
%state_at((12,6),68)
%action(up,68)
%state_at((12,5),69)
%action(up,69)
%state_at((12,4),70)
%action(up,70)
%state_at((12,3),71)
%action(up,71)
%state_at((12,2),72)
%action(up,72)
%state_at((12,1),73)
%action(right,73)
%state_at((13,1),74)
%action(right,74)
%state_at((14,1),75)
%action(right,75)
%state_at((15,1),76)
%action(right,76)
%state_at((16,1),77)
%action(right,77)
%state_at((17,1),78)
