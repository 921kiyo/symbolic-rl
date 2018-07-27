1{action(down, T); action(up, T); action(right, T); action(left, T); action(non, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((17, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.
time(1..30).

cell((0..18, 0..7)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
    adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
    adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
    adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

wall((4, 4)).

wall((5, 4)).

wall((6, 4)).

wall((5, 0)).

wall((3, 7)).

wall((4, 7)).

wall((5, 7)).

wall((6, 7)).

wall((7, 7)).

wall((7, 4)).

wall((8, 4)).

wall((8, 7)).

wall((2, 7)).

wall((9, 7)).

wall((9, 4)).

wall((10, 7)).

wall((10, 4)).

wall((11, 4)).

wall((12, 7)).

wall((13, 4)).

wall((13, 0)).

wall((12, 0)).

wall((15, 1)).

wall((14, 0)).

wall((15, 2)).

wall((14, 4)).

wall((15, 4)).

wall((13, 7)).

wall((14, 7)).

wall((0, 3)).

wall((0, 4)).

wall((0, 5)).

wall((0, 2)).

wall((0, 1)).

wall((1, 0)).

wall((2, 0)).

wall((16, 4)).

wall((16, 7)).

wall((15, 7)).

wall((18, 5)).

wall((17, 4)).

wall((18, 6)).

wall((17, 7)).

wall((11, 7)).

wall((1, 7)).

wall((0, 6)).

wall((3, 0)).

wall((4, 0)).

wall((6, 0)).

wall((7, 0)).

wall((8, 0)).

wall((9, 0)).

wall((9, 3)).

wall((10, 0)).

wall((11, 0)).

wall((18, 2)).

wall((16, 0)).

wall((18, 3)).
%START
state_at(V0, T+1) :- time(T), state_at(V0, T), action(non, T).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), action(right, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), action(up, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), wall(V0).

%END
%AAA
state_at((1, 6), 1).
%BBB
%ANSWER SETS

%state_at((1,6),1)
%state_at((14,1),2)
%state_at((9,4),2)
%state_at((17,5),2)
%state_at((0,7),2)
%state_at((0,0),3)
%action(right,2)
%state_at((1,0),3)
%state_at((2,0),3)
%state_at((3,0),3)
%state_at((4,0),3)
%state_at((5,0),3)
%state_at((6,0),3)
%state_at((7,0),3)
%state_at((8,0),3)
%state_at((9,0),3)
%state_at((10,0),3)
%state_at((11,0),3)
%state_at((12,0),3)
%state_at((13,0),3)
%state_at((15,0),3)
%state_at((14,1),3)
%state_at((14,2),3)
%state_at((17,2),3)
%state_at((8,3),3)
%state_at((17,3),3)
%state_at((3,4),3)
%state_at((4,4),3)
%state_at((5,4),3)
%state_at((6,4),3)
%state_at((7,4),3)
%state_at((8,4),3)
%state_at((9,4),3)
%state_at((10,4),3)
%state_at((12,4),3)
%state_at((13,4),3)
%state_at((14,4),3)
%state_at((15,4),3)
%state_at((16,4),3)
%state_at((17,5),3)
%state_at((17,6),3)
%state_at((0,7),3)
%state_at((1,7),3)
%state_at((2,7),3)
%state_at((3,7),3)
%state_at((4,7),3)
%state_at((5,7),3)
%state_at((6,7),3)
%state_at((7,7),3)
%state_at((8,7),3)
%state_at((9,7),3)
%state_at((10,7),3)
%state_at((11,7),3)
%state_at((12,7),3)
%state_at((13,7),3)
%state_at((14,7),3)
%state_at((15,7),3)
%state_at((16,7),3)
%state_at((1,1),2)
%action(up,1)
%state_at((2,1),2)
%state_at((3,1),2)
%state_at((4,1),2)
%state_at((5,1),2)
%state_at((6,1),2)
%state_at((7,1),2)
%state_at((8,1),2)
%state_at((9,1),2)
%state_at((10,1),2)
%state_at((11,1),2)
%state_at((12,1),2)
%state_at((13,1),2)
%state_at((16,1),2)
%state_at((0,2),2)
%state_at((15,2),2)
%state_at((0,3),2)
%state_at((15,3),2)
%state_at((18,3),2)
%state_at((0,4),2)
%state_at((18,4),2)
%state_at((0,5),2)
%state_at((4,5),2)
%state_at((5,5),2)
%state_at((6,5),2)
%state_at((7,5),2)
%state_at((8,5),2)
%state_at((9,5),2)
%state_at((10,5),2)
%state_at((11,5),2)
%state_at((13,5),2)
%state_at((14,5),2)
%state_at((15,5),2)
%state_at((16,5),2)
%state_at((0,6),2)
%state_at((18,6),2)
%state_at((18,7),2)
%state_at((2,1),3)
%state_at((3,1),3)
%state_at((4,1),3)
%state_at((5,1),3)
%state_at((6,1),3)
%state_at((7,1),3)
%state_at((8,1),3)
%state_at((9,1),3)
%state_at((10,1),3)
%state_at((11,1),3)
%state_at((12,1),3)
%state_at((13,1),3)
%state_at((5,5),3)
%state_at((6,5),3)
%state_at((7,5),3)
%state_at((8,5),3)
%state_at((9,5),3)
%state_at((10,5),3)
%state_at((11,5),3)
%state_at((14,5),3)
%state_at((15,5),3)
%state_at((16,5),3)
%state_at((16,2),3)
%state_at((1,2),3)
%state_at((12,5),3)
%state_at((1,6),3)
%state_at((16,3),3)
%state_at((17,1),3)
%state_at((1,5),2)
%state_at((1,5),3)
%state_at((1,4),3)
%state_at((1,3),3)
%state_at((2,5),3)
