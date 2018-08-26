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

wall((5, 5)).

wall((4, 4)).

wall((3, 4)).

wall((2, 4)).

wall((0, 5)).

wall((0, 4)).

wall((2, 3)).

wall((0, 3)).

wall((2, 2)).

wall((0, 2)).
%START
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), action(down, T), wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), wall(V1).

%END
%AAA
state_at((1, 2), 73).
%BBB
%CCC
time(73..250).
%DDD
%ANSWER SETS

%state_at((1,2),73)
%state_at((0,1),74)
%action(down,73)
%state_at((2,1),74)
%state_at((2,1),76)
%state_at((0,2),74)
%state_at((2,2),74)
%state_at((0,3),74)
%state_at((2,3),74)
%state_at((3,3),74)
%state_at((3,3),75)
%state_at((4,3),74)
%state_at((4,3),75)
%state_at((4,3),76)
%state_at((0,4),74)
%state_at((5,4),74)
%state_at((1,5),74)
%state_at((2,5),74)
%state_at((2,5),75)
%state_at((3,5),74)
%state_at((3,5),75)
%state_at((3,5),76)
%state_at((5,5),74)
%state_at((0,6),74)
%state_at((0,6),75)
%state_at((0,6),76)
%state_at((0,6),77)
%state_at((0,6),78)
%state_at((0,6),79)
%state_at((0,6),80)
%state_at((0,6),81)
%state_at((0,6),82)
%state_at((0,6),83)
%state_at((0,6),84)
%state_at((0,6),85)
%state_at((0,6),86)
%state_at((0,6),87)
%state_at((0,6),88)
%state_at((1,7),74)
%state_at((2,7),74)
%state_at((2,7),75)
%state_at((3,7),74)
%state_at((3,7),75)
%state_at((3,7),76)
%state_at((4,7),74)
%state_at((4,7),75)
%state_at((4,7),76)
%state_at((4,7),77)
%state_at((5,7),74)
%state_at((5,7),75)
%state_at((5,7),76)
%state_at((5,7),77)
%state_at((5,7),78)
%state_at((6,7),74)
%state_at((6,7),75)
%state_at((6,7),76)
%state_at((6,7),77)
%state_at((6,7),78)
%state_at((6,7),79)
%action(right,85)
%action(right,84)
%action(right,83)
%action(right,82)
%action(right,81)
%action(right,80)
%action(right,79)
%action(right,78)
%action(right,77)
%action(right,76)
%action(right,75)
%action(right,74)
%state_at((1,3),74)
%action(up,87)
%action(up,86)
%state_at((1,4),86)
%state_at((1,4),85)
%state_at((1,4),84)
%state_at((1,4),83)
%state_at((1,4),82)
%state_at((1,4),81)
%state_at((1,4),80)
%state_at((1,4),79)
%state_at((1,4),78)
%state_at((1,4),77)
%state_at((1,4),76)
%state_at((1,4),75)
%state_at((5,3),77)
%state_at((5,3),76)
%state_at((5,3),75)
%state_at((4,2),76)
%state_at((3,2),75)
%state_at((4,5),88)
%state_at((4,5),87)
%state_at((4,5),86)
%state_at((4,5),85)
%state_at((4,5),84)
%state_at((4,5),83)
%state_at((4,5),82)
%state_at((4,5),81)
%state_at((4,5),80)
%state_at((4,5),79)
%state_at((4,5),78)
%state_at((4,5),77)
%state_at((4,5),76)
%state_at((4,5),75)
%state_at((1,3),87)
%state_at((1,3),86)
%state_at((1,3),85)
%state_at((1,3),84)
%state_at((1,3),83)
%state_at((1,3),82)
%state_at((1,3),81)
%state_at((1,3),80)
%state_at((1,3),79)
%state_at((1,3),78)
%state_at((1,3),77)
%state_at((1,3),76)
%state_at((1,3),75)
%state_at((1,2),88)
%state_at((1,2),87)
%state_at((1,2),86)
%state_at((1,2),85)
%state_at((1,2),84)
%state_at((1,2),83)
%state_at((1,2),82)
%state_at((1,2),81)
%state_at((1,2),80)
%state_at((1,2),79)
%state_at((1,2),78)
%state_at((1,2),77)
%state_at((1,2),76)
%state_at((1,2),75)
%state_at((1,1),88)
%state_at((1,1),87)
%state_at((1,1),75)
%state_at((7,7),80)
%state_at((7,7),79)
%state_at((7,7),78)
%state_at((7,7),77)
%state_at((7,7),76)
%state_at((7,7),75)
%state_at((6,5),75)
%state_at((6,4),75)
%state_at((3,1),77)
%state_at((3,1),75)
%state_at((6,3),76)
%state_at((6,3),77)
%state_at((6,3),78)
%state_at((1,0),88)
%state_at((4,1),76)
%state_at((4,1),78)
%state_at((5,2),77)
%state_at((7,4),76)
%state_at((7,5),76)
%state_at((8,7),76)
%state_at((8,7),77)
%state_at((8,7),78)
%state_at((8,7),79)
%state_at((8,7),80)
%state_at((8,7),81)
%state_at((7,3),79)
%state_at((7,3),78)
%state_at((7,3),77)
%state_at((5,1),79)
%state_at((5,1),77)
%state_at((6,2),78)
%state_at((9,7),82)
%state_at((9,7),81)
%state_at((9,7),80)
%state_at((9,7),79)
%state_at((9,7),78)
%state_at((9,7),77)
%state_at((8,5),77)
%state_at((8,4),77)
%state_at((8,3),78)
%state_at((8,3),79)
%state_at((8,3),80)
%state_at((6,1),78)
%state_at((6,1),80)
%state_at((7,2),79)
%state_at((9,4),78)
%state_at((9,5),78)
%state_at((10,7),78)
%state_at((10,7),79)
%state_at((10,7),80)
%state_at((10,7),81)
%state_at((10,7),82)
%state_at((10,7),83)
%state_at((9,3),81)
%state_at((9,3),80)
%state_at((9,3),79)
%state_at((7,1),81)
%state_at((7,1),79)
%state_at((8,2),80)
%state_at((11,7),84)
%state_at((11,7),83)
%state_at((11,7),82)
%state_at((11,7),81)
%state_at((11,7),80)
%state_at((11,7),79)
%state_at((10,5),79)
%state_at((10,4),79)
%state_at((10,3),80)
%state_at((10,3),81)
%state_at((10,3),82)
%state_at((8,1),80)
%state_at((8,1),82)
%state_at((9,2),81)
%state_at((11,4),80)
%state_at((11,5),80)
%state_at((12,7),80)
%state_at((12,7),81)
%state_at((12,7),82)
%state_at((12,7),83)
%state_at((12,7),84)
%state_at((12,7),85)
%state_at((11,3),83)
%state_at((11,3),82)
%state_at((11,3),81)
%state_at((9,1),83)
%state_at((9,1),81)
%state_at((10,2),82)
%state_at((13,7),86)
%state_at((13,7),85)
%state_at((13,7),84)
%state_at((13,7),83)
%state_at((13,7),82)
%state_at((13,7),81)
%state_at((12,5),81)
%state_at((12,4),81)
%state_at((12,3),82)
%state_at((12,3),83)
%state_at((12,3),84)
%state_at((13,6),87)
%state_at((10,1),82)
%state_at((10,1),84)
%state_at((11,2),83)
%state_at((13,4),82)
%state_at((13,5),82)
%state_at((13,5),88)
%state_at((14,7),82)
%state_at((14,7),83)
%state_at((14,7),84)
%state_at((14,7),85)
%state_at((14,7),86)
%state_at((14,6),87)
%state_at((13,3),85)
%state_at((13,3),84)
%state_at((13,3),83)
%state_at((11,1),85)
%state_at((11,1),83)
%state_at((12,2),84)
%state_at((15,7),86)
%state_at((15,7),85)
%state_at((15,7),84)
%state_at((15,7),83)
%state_at((14,5),88)
%state_at((14,5),83)
%state_at((14,4),83)
%state_at((14,3),84)
%state_at((14,3),85)
%state_at((14,3),86)
%state_at((15,6),87)
%state_at((12,1),84)
%state_at((12,1),86)
%state_at((13,2),85)
%state_at((15,4),84)
%state_at((15,5),84)
%state_at((15,5),88)
%state_at((16,7),84)
%state_at((16,7),85)
%state_at((16,7),86)
%state_at((16,6),87)
%state_at((15,3),86)
%state_at((15,3),85)
%state_at((13,1),85)
%state_at((12,0),87)
%state_at((14,2),87)
%state_at((14,2),86)
%state_at((17,7),86)
%state_at((17,7),85)
%state_at((16,5),88)
%state_at((16,5),85)
%state_at((16,4),85)
%state_at((16,3),86)
%state_at((17,6),87)
%state_at((14,1),86)
%state_at((14,1),87)
%state_at((14,1),88)
%state_at((15,2),87)
%state_at((17,4),86)
%state_at((17,4),87)
%state_at((17,5),86)
%state_at((17,5),88)
%state_at((17,3),88)
%state_at((17,3),87)
%state_at((15,1),88)
%state_at((14,0),88)
%state_at((14,0),87)
%state_at((16,2),87)
%state_at((16,1),88)
%state_at((17,2),88)
