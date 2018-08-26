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

wall((5, 5)).

wall((4, 4)).

wall((3, 4)).

wall((2, 4)).

wall((0, 5)).

wall((0, 4)).

wall((2, 3)).

wall((0, 3)).
%START
state_at(V0, T+1) :- time(T), state_at(V0, T), action(down, T).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), action(left, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).

%END
%AAA
state_at((1, 3), 58).
%BBB
%CCC
time(58..250).
%DDD
%ANSWER SETS

%state_at((1,3),58)
%state_at((1,3),59)
%action(left,58)
%state_at((1,3),60)
%state_at((1,3),61)
%state_at((1,3),62)
%state_at((1,3),63)
%state_at((1,3),64)
%state_at((1,3),65)
%state_at((1,3),66)
%state_at((1,3),67)
%state_at((1,3),68)
%state_at((1,3),69)
%state_at((1,3),70)
%state_at((1,3),71)
%state_at((3,3),59)
%state_at((3,3),71)
%state_at((1,4),59)
%state_at((1,4),60)
%state_at((1,4),61)
%state_at((1,4),62)
%state_at((1,4),63)
%state_at((1,4),64)
%state_at((1,4),65)
%state_at((1,4),66)
%state_at((1,4),67)
%state_at((1,4),68)
%state_at((1,4),69)
%state_at((1,4),70)
%state_at((3,4),59)
%state_at((3,4),60)
%state_at((3,4),61)
%state_at((3,4),62)
%state_at((3,4),63)
%state_at((3,4),64)
%state_at((3,4),65)
%state_at((3,4),66)
%state_at((3,4),67)
%state_at((3,4),68)
%state_at((3,4),69)
%state_at((3,4),70)
%state_at((4,4),59)
%state_at((5,4),59)
%state_at((5,4),60)
%state_at((1,5),59)
%state_at((6,5),59)
%state_at((2,6),59)
%state_at((2,6),60)
%state_at((2,6),61)
%state_at((2,6),62)
%state_at((2,6),63)
%state_at((2,6),64)
%state_at((2,6),65)
%state_at((2,6),66)
%state_at((2,6),67)
%state_at((2,6),68)
%state_at((2,6),69)
%state_at((2,6),70)
%state_at((3,6),59)
%state_at((4,6),59)
%state_at((4,6),60)
%state_at((4,6),61)
%state_at((4,6),62)
%state_at((4,6),63)
%state_at((4,6),64)
%state_at((4,6),65)
%state_at((4,6),66)
%state_at((4,6),67)
%state_at((4,6),68)
%state_at((4,6),69)
%state_at((4,6),70)
%state_at((4,6),72)
%state_at((6,6),59)
%state_at((1,7),59)
%state_at((2,8),59)
%state_at((2,8),60)
%state_at((2,8),61)
%state_at((2,8),62)
%state_at((2,8),63)
%state_at((2,8),64)
%state_at((2,8),65)
%state_at((2,8),66)
%state_at((2,8),67)
%state_at((2,8),68)
%state_at((2,8),69)
%state_at((2,8),70)
%state_at((3,8),59)
%state_at((3,8),60)
%state_at((3,8),61)
%state_at((3,8),62)
%state_at((3,8),63)
%state_at((3,8),64)
%state_at((3,8),65)
%state_at((3,8),66)
%state_at((3,8),67)
%state_at((3,8),68)
%state_at((3,8),69)
%state_at((3,8),70)
%state_at((4,8),59)
%state_at((4,8),60)
%state_at((4,8),61)
%state_at((4,8),62)
%state_at((4,8),63)
%state_at((4,8),64)
%state_at((4,8),65)
%state_at((4,8),66)
%state_at((4,8),67)
%state_at((4,8),68)
%state_at((4,8),69)
%state_at((4,8),70)
%state_at((5,8),59)
%state_at((6,8),59)
%state_at((6,8),60)
%action(right,69)
%action(right,68)
%action(right,67)
%action(right,66)
%action(right,65)
%action(right,64)
%action(right,63)
%action(right,62)
%action(right,61)
%action(right,60)
%action(right,59)
%action(up,72)
%action(up,71)
%action(up,70)
%state_at((6,7),64)
%state_at((5,7),63)
%state_at((4,7),71)
%state_at((4,7),62)
%state_at((3,7),73)
%state_at((3,7),72)
%state_at((3,7),71)
%state_at((3,7),61)
%state_at((2,7),73)
%state_at((2,7),72)
%state_at((2,7),71)
%state_at((2,7),60)
%state_at((4,5),73)
%state_at((4,5),72)
%state_at((4,5),71)
%state_at((4,5),70)
%state_at((4,5),69)
%state_at((4,5),68)
%state_at((4,5),67)
%state_at((4,5),66)
%state_at((4,5),65)
%state_at((4,5),64)
%state_at((4,5),63)
%state_at((4,5),62)
%state_at((3,5),61)
%state_at((2,5),73)
%state_at((2,5),72)
%state_at((2,5),71)
%state_at((2,5),60)
%state_at((6,4),61)
%state_at((6,4),60)
%state_at((5,3),61)
%state_at((4,3),60)
%state_at((3,2),72)
%state_at((1,2),72)
%state_at((1,2),71)
%state_at((7,8),61)
%state_at((7,8),60)
%state_at((7,6),60)
%state_at((7,5),60)
%state_at((7,4),61)
%state_at((7,4),62)
%state_at((7,7),65)
%state_at((1,1),72)
%state_at((1,1),73)
%state_at((3,1),73)
%state_at((6,3),62)
%state_at((8,5),61)
%state_at((8,6),61)
%state_at((8,8),61)
%state_at((8,8),62)
%state_at((8,7),66)
%state_at((8,4),63)
%state_at((8,4),62)
%state_at((1,0),73)
%state_at((7,3),63)
%state_at((9,8),63)
%state_at((9,8),62)
%state_at((9,6),62)
%state_at((9,5),62)
%state_at((9,4),63)
%state_at((9,4),64)
%state_at((9,7),67)
%state_at((8,3),64)
%state_at((10,5),63)
%state_at((10,6),63)
%state_at((10,8),63)
%state_at((10,8),64)
%state_at((10,7),68)
%state_at((10,4),65)
%state_at((10,4),64)
%state_at((9,3),65)
%state_at((11,8),65)
%state_at((11,8),64)
%state_at((11,6),64)
%state_at((11,5),64)
%state_at((11,4),65)
%state_at((11,4),66)
%state_at((11,7),69)
%state_at((10,3),66)
%state_at((12,5),65)
%state_at((12,5),72)
%state_at((12,6),65)
%state_at((12,6),71)
%state_at((12,8),65)
%state_at((12,8),66)
%state_at((12,7),70)
%state_at((12,4),73)
%state_at((12,4),67)
%state_at((12,4),66)
%state_at((11,3),67)
%state_at((13,8),67)
%state_at((13,8),66)
%state_at((13,6),66)
%state_at((13,5),66)
%state_at((13,4),67)
%state_at((13,4),68)
%state_at((12,3),68)
%state_at((14,5),67)
%state_at((14,6),67)
%state_at((14,8),67)
%state_at((14,8),68)
%state_at((14,4),69)
%state_at((14,4),68)
%state_at((13,3),69)
%state_at((15,8),69)
%state_at((15,8),68)
%state_at((15,6),68)
%state_at((15,5),68)
%state_at((15,4),69)
%state_at((15,4),70)
%state_at((14,3),70)
%state_at((16,5),69)
%state_at((16,5),73)
%state_at((16,6),69)
%state_at((16,6),72)
%state_at((16,8),69)
%state_at((16,8),70)
%state_at((16,7),71)
%state_at((16,4),70)
%state_at((14,2),71)
%state_at((15,3),71)
%state_at((17,8),70)
%state_at((17,6),72)
%state_at((17,6),70)
%state_at((17,5),73)
%state_at((17,5),71)
%state_at((17,5),70)
%state_at((17,4),71)
%state_at((17,4),72)
%state_at((17,7),71)
%state_at((15,2),72)
%state_at((14,1),72)
%state_at((16,3),71)
%state_at((16,2),72)
%state_at((14,0),73)
%state_at((15,1),73)
%state_at((17,3),73)
%state_at((17,3),72)
%state_at((17,2),73)
%state_at((16,1),73)
