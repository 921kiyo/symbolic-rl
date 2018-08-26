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
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(down, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), wall(V1).

%END
%AAA
state_at((4, 5), 71).
%BBB
%CCC
time(71..250).
%DDD
%ANSWER SETS

%state_at((4,5),71)
%state_at((4,6),72)
%action(down,71)
%state_at((4,7),73)
%action(down,72)
%action(right,73)
%state_at((5,7),74)
%action(right,74)
%state_at((6,7),75)
%action(right,75)
%state_at((7,7),76)
%action(right,76)
%state_at((8,7),77)
%action(right,77)
%state_at((9,7),78)
%action(right,78)
%state_at((10,7),79)
%action(right,79)
%state_at((11,7),80)
%action(right,80)
%state_at((12,7),81)
%action(right,81)
%state_at((13,7),82)
%action(right,82)
%state_at((14,7),83)
%action(right,83)
%state_at((15,7),84)
%action(right,84)
%state_at((16,7),85)
%state_at((16,6),86)
%action(up,85)
%action(up,86)
%state_at((16,5),87)
%action(up,87)
%state_at((16,4),88)
%action(up,88)
%state_at((16,3),89)
%action(up,89)
%state_at((16,2),90)
%action(up,90)
%state_at((16,1),91)
