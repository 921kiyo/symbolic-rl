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
%START
state_at(V0, T+1) :- time(T), state_at(V0, T), action(down, T).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).

%END

wall((5, 5)).

wall((4, 4)).

wall((3, 4)).

wall((2, 4)).
%AAA
state_at((4, 5), 63).
%BBB
%CCC
time(63..250).
%DDD
%ANSWER SETS

%state_at((4,5),63)
%state_at((3,5),64)
%action(left,63)
%state_at((2,5),65)
%action(left,64)
%action(left,65)
%state_at((1,5),66)
%state_at((1,4),67)
%action(up,66)
%action(up,67)
%state_at((1,3),68)
%action(right,68)
%state_at((2,3),69)
%action(right,69)
%state_at((3,3),70)
%action(right,70)
%state_at((4,3),71)
%action(right,71)
%state_at((5,3),72)
%action(right,72)
%state_at((6,3),73)
%action(right,73)
%state_at((7,3),74)
%action(right,74)
%state_at((8,3),75)
%action(right,75)
%state_at((9,3),76)
%action(right,76)
%state_at((10,3),77)
%action(right,77)
%state_at((11,3),78)
%action(right,78)
%state_at((12,3),79)
%action(right,79)
%state_at((13,3),80)
%action(right,80)
%state_at((14,3),81)
%action(right,81)
%state_at((15,3),82)
%action(right,82)
%state_at((16,3),83)
%state_at((16,2),84)
%action(up,83)
%action(up,84)
%state_at((16,1),85)
