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
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), action(left, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), not wall(V1).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).

%END
%AAA
state_at((4, 6), 68).
%BBB
%CCC
time(68..250).
%DDD
%ANSWER SETS

%state_at((4,6),68)
%state_at((1,2),69)
%action(left,68)
%state_at((1,2),70)
%state_at((1,2),71)
%state_at((1,2),72)
%state_at((1,2),73)
%state_at((1,2),74)
%state_at((1,2),75)
%state_at((1,2),76)
%state_at((1,2),77)
%state_at((1,2),78)
%state_at((1,2),79)
%state_at((3,2),69)
%state_at((3,2),79)
%state_at((1,3),69)
%state_at((1,3),70)
%state_at((1,3),71)
%state_at((1,3),72)
%state_at((1,3),73)
%state_at((1,3),74)
%state_at((1,3),75)
%state_at((1,3),76)
%state_at((1,3),77)
%state_at((1,3),78)
%state_at((3,3),69)
%state_at((3,3),78)
%state_at((1,4),69)
%state_at((1,4),70)
%state_at((1,4),71)
%state_at((1,4),72)
%state_at((1,4),73)
%state_at((1,4),74)
%state_at((1,4),75)
%state_at((1,4),76)
%state_at((1,4),77)
%state_at((3,4),69)
%state_at((3,4),70)
%state_at((3,4),71)
%state_at((3,4),72)
%state_at((3,4),73)
%state_at((3,4),74)
%state_at((3,4),75)
%state_at((3,4),76)
%state_at((3,4),77)
%state_at((4,4),69)
%state_at((5,4),69)
%state_at((5,4),70)
%state_at((1,5),69)
%state_at((6,5),69)
%state_at((6,5),78)
%state_at((6,5),80)
%state_at((2,6),69)
%state_at((2,6),70)
%state_at((2,6),71)
%state_at((2,6),72)
%state_at((2,6),73)
%state_at((2,6),74)
%state_at((2,6),75)
%state_at((2,6),76)
%state_at((2,6),77)
%state_at((2,6),79)
%state_at((4,6),69)
%state_at((4,6),70)
%state_at((4,6),71)
%state_at((4,6),72)
%state_at((4,6),73)
%state_at((4,6),74)
%state_at((4,6),75)
%state_at((4,6),76)
%state_at((4,6),77)
%state_at((4,6),79)
%state_at((6,6),69)
%state_at((6,6),70)
%state_at((6,6),71)
%state_at((6,6),72)
%state_at((6,6),73)
%state_at((6,6),74)
%state_at((6,6),75)
%state_at((6,6),76)
%state_at((6,6),77)
%state_at((6,6),79)
%state_at((8,6),69)
%state_at((1,7),69)
%state_at((2,8),69)
%state_at((2,8),70)
%state_at((2,8),71)
%state_at((2,8),72)
%state_at((2,8),73)
%state_at((2,8),74)
%state_at((2,8),75)
%state_at((2,8),76)
%state_at((2,8),77)
%state_at((3,8),69)
%state_at((3,8),70)
%state_at((3,8),71)
%state_at((3,8),72)
%state_at((3,8),73)
%state_at((3,8),74)
%state_at((3,8),75)
%state_at((3,8),76)
%state_at((3,8),77)
%state_at((4,8),69)
%state_at((4,8),70)
%state_at((4,8),71)
%state_at((4,8),72)
%state_at((4,8),73)
%state_at((4,8),74)
%state_at((4,8),75)
%state_at((4,8),76)
%state_at((4,8),77)
%state_at((5,8),69)
%state_at((5,8),70)
%state_at((5,8),71)
%state_at((5,8),72)
%state_at((5,8),73)
%state_at((5,8),74)
%state_at((5,8),75)
%state_at((5,8),76)
%state_at((5,8),77)
%state_at((6,8),69)
%state_at((6,8),70)
%state_at((6,8),71)
%state_at((6,8),72)
%state_at((6,8),73)
%state_at((6,8),74)
%state_at((6,8),75)
%state_at((6,8),76)
%state_at((6,8),77)
%state_at((7,8),69)
%state_at((8,8),69)
%state_at((8,8),70)
%action(right,76)
%action(right,75)
%action(right,74)
%action(right,73)
%action(right,72)
%action(right,71)
%action(right,70)
%action(right,69)
%state_at((8,7),76)
%state_at((6,7),78)
%state_at((6,7),74)
%state_at((4,7),78)
%state_at((4,7),72)
%state_at((2,7),78)
%state_at((2,7),70)
%state_at((4,5),82)
%state_at((4,5),81)
%state_at((4,5),80)
%state_at((4,5),79)
%state_at((4,5),78)
%state_at((4,5),77)
%state_at((4,5),76)
%state_at((4,5),75)
%state_at((4,5),74)
%state_at((4,5),73)
%state_at((4,5),72)
%state_at((3,5),71)
%action(up,81)
%action(up,80)
%action(up,79)
%action(up,78)
%action(up,77)
%state_at((7,7),75)
%state_at((5,7),82)
%state_at((5,7),81)
%state_at((5,7),80)
%state_at((5,7),79)
%state_at((5,7),78)
%state_at((5,7),73)
%state_at((3,7),82)
%state_at((3,7),81)
%state_at((3,7),80)
%state_at((3,7),79)
%state_at((3,7),78)
%state_at((3,7),71)
%state_at((8,5),71)
%state_at((2,5),82)
%state_at((2,5),81)
%state_at((2,5),80)
%state_at((2,5),79)
%state_at((2,5),78)
%state_at((2,5),70)
%state_at((6,4),81)
%state_at((6,4),79)
%state_at((6,4),71)
%state_at((6,4),70)
%state_at((5,3),71)
%state_at((4,3),70)
%state_at((3,1),80)
%state_at((1,1),80)
%state_at((1,1),79)
%state_at((1,1),78)
%state_at((9,8),71)
%state_at((9,8),70)
%state_at((9,6),78)
%state_at((9,6),70)
%state_at((7,5),70)
%state_at((4,2),70)
%state_at((9,7),77)
%state_at((7,4),71)
%state_at((7,4),72)
%state_at((9,5),72)
%state_at((9,5),79)
%state_at((1,0),79)
%state_at((1,0),80)
%state_at((1,0),81)
%state_at((3,0),81)
%state_at((5,2),71)
%state_at((6,3),72)
%state_at((6,3),80)
%state_at((6,3),82)
%state_at((8,4),72)
%state_at((8,4),73)
%state_at((10,6),71)
%state_at((10,8),71)
%state_at((10,8),72)
%state_at((10,5),73)
%state_at((8,3),74)
%state_at((6,2),81)
%state_at((6,2),72)
%state_at((9,4),80)
%state_at((9,4),74)
%state_at((9,4),73)
%state_at((7,3),73)
%state_at((11,8),73)
%state_at((11,8),72)
%state_at((11,6),72)
%state_at((11,5),74)
%state_at((7,2),73)
%state_at((9,3),75)
%state_at((9,3),81)
%state_at((6,1),82)
%state_at((8,2),74)
%state_at((10,4),74)
%state_at((10,4),75)
%state_at((12,6),73)
%state_at((12,8),73)
%state_at((12,8),74)
%state_at((12,5),75)
%state_at((10,3),76)
%state_at((9,2),82)
%state_at((9,2),75)
%state_at((11,4),76)
%state_at((11,4),75)
%state_at((13,8),75)
%state_at((13,8),74)
%state_at((13,6),74)
%state_at((13,5),76)
%state_at((11,3),77)
%state_at((10,2),76)
%state_at((12,4),76)
%state_at((12,4),77)
%state_at((14,6),75)
%state_at((14,8),75)
%state_at((14,8),76)
%state_at((14,5),77)
%state_at((12,3),78)
%state_at((11,2),78)
%state_at((11,2),77)
%state_at((13,4),77)
%state_at((15,8),77)
%state_at((15,8),76)
%state_at((15,6),79)
%state_at((15,6),76)
%state_at((15,7),78)
%state_at((15,5),80)
%state_at((13,3),78)
%state_at((11,1),78)
%state_at((11,1),79)
%state_at((12,2),79)
%state_at((14,4),78)
%state_at((16,6),77)
%state_at((16,6),79)
%state_at((16,8),77)
%state_at((16,7),78)
%state_at((16,5),80)
%state_at((16,5),78)
%state_at((14,3),79)
%state_at((12,1),80)
%state_at((11,0),80)
%state_at((11,0),79)
%state_at((13,2),79)
%state_at((15,4),81)
%state_at((15,3),82)
%state_at((13,1),80)
%state_at((12,0),81)
%state_at((14,2),80)
%state_at((16,4),79)
%state_at((16,4),81)
%state_at((16,3),82)
%state_at((16,3),80)
%state_at((14,1),81)
%state_at((13,0),81)
%state_at((14,0),82)
%state_at((16,2),81)
%state_at((16,1),82)
