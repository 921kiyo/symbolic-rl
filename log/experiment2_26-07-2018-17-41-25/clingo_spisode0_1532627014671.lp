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
%START
state_at(V0, T+1) :- time(T), state_at(V0, T), action(non, T).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), action(right, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), action(left, T), wall(V1).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), action(down, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), action(up, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).

%END

wall((1, 7)).

wall((0, 6)).

wall((2, 5)).

wall((0, 5)).

wall((2, 7)).

wall((2, 4)).

wall((0, 4)).

wall((3, 7)).

wall((4, 5)).

wall((4, 4)).

wall((4, 3)).

wall((2, 3)).

wall((4, 2)).

wall((2, 2)).

wall((4, 7)).

wall((5, 7)).

wall((5, 5)).

wall((6, 7)).

wall((6, 5)).

wall((7, 7)).

wall((8, 5)).

wall((8, 4)).

wall((6, 4)).

wall((8, 7)).

wall((8, 3)).

wall((6, 3)).

wall((8, 2)).

wall((6, 2)).

wall((7, 0)).

wall((8, 0)).

wall((9, 0)).

wall((10, 2)).

wall((10, 0)).

wall((11, 0)).

wall((12, 2)).

wall((12, 0)).

wall((13, 2)).

wall((13, 0)).

wall((14, 2)).

wall((14, 0)).

wall((15, 0)).
%AAA
state_at((1, 6), 1).
%BBB
%ANSWER SETS

%state_at((1,6),1)
%state_at((6,0),3)
%action(right,2)
%state_at((7,0),3)
%state_at((8,0),2)
%state_at((8,0),3)
%state_at((9,0),2)
%state_at((9,0),3)
%state_at((10,0),2)
%state_at((10,0),3)
%state_at((11,0),2)
%state_at((11,0),3)
%state_at((12,0),2)
%state_at((12,0),3)
%state_at((13,0),2)
%state_at((13,0),3)
%state_at((14,0),2)
%state_at((14,0),3)
%state_at((1,2),3)
%state_at((3,2),2)
%state_at((3,2),3)
%state_at((5,2),2)
%state_at((5,2),3)
%state_at((7,2),2)
%state_at((7,2),3)
%state_at((9,2),2)
%state_at((9,2),3)
%state_at((11,2),2)
%state_at((11,2),3)
%state_at((12,2),3)
%state_at((13,2),2)
%state_at((13,2),3)
%state_at((1,3),3)
%state_at((1,3),4)
%state_at((3,3),2)
%state_at((3,3),3)
%state_at((3,3),4)
%state_at((5,3),2)
%state_at((5,3),3)
%state_at((5,3),4)
%state_at((7,3),2)
%state_at((7,3),3)
%state_at((7,3),4)
%state_at((1,4),2)
%state_at((1,4),3)
%state_at((1,4),4)
%state_at((3,4),2)
%state_at((3,4),3)
%state_at((3,4),4)
%state_at((5,4),2)
%state_at((5,4),3)
%state_at((5,4),4)
%state_at((7,4),2)
%state_at((7,4),3)
%state_at((7,4),4)
%state_at((1,5),2)
%state_at((1,5),3)
%state_at((1,5),4)
%state_at((3,5),2)
%state_at((3,5),3)
%state_at((3,5),4)
%state_at((4,5),3)
%state_at((5,5),2)
%state_at((5,5),3)
%state_at((7,5),2)
%state_at((7,5),3)
%state_at((7,5),4)
%state_at((0,7),3)
%state_at((1,7),3)
%state_at((2,7),2)
%state_at((2,7),3)
%state_at((3,7),2)
%state_at((3,7),3)
%state_at((4,7),2)
%state_at((4,7),3)
%state_at((5,7),2)
%state_at((5,7),3)
%state_at((6,7),2)
%state_at((6,7),3)
%state_at((7,7),2)
%state_at((7,7),3)
%action(left,1)
%state_at((15,0),2)
%state_at((16,0),2)
%state_at((16,0),3)
%state_at((14,2),2)
%state_at((15,2),2)
%state_at((15,2),3)
%state_at((9,3),2)
%state_at((9,3),4)
%state_at((9,4),2)
%state_at((6,5),2)
%state_at((9,5),2)
%state_at((1,6),2)
%state_at((1,6),4)
%state_at((8,7),2)
%state_at((9,7),2)
%state_at((9,7),3)
%state_at((2,1),4)
%action(down,3)
%state_at((4,1),4)
%state_at((6,1),4)
%state_at((8,1),4)
%state_at((10,1),4)
%state_at((12,1),4)
%state_at((13,1),4)
%state_at((14,1),4)
%state_at((2,2),4)
%state_at((4,2),4)
%state_at((6,2),4)
%state_at((8,2),4)
%state_at((0,3),4)
%state_at((2,3),4)
%state_at((4,3),4)
%state_at((6,3),4)
%state_at((8,3),4)
%state_at((0,4),4)
%state_at((2,4),4)
%state_at((4,4),4)
%state_at((6,4),4)
%state_at((8,4),4)
%state_at((0,5),4)
%state_at((2,6),3)
%state_at((2,6),4)
%state_at((3,6),4)
%state_at((4,6),4)
%state_at((5,6),4)
%state_at((6,6),4)
%state_at((7,6),4)
%state_at((8,6),4)
%state_at((7,1),4)
%state_at((9,1),4)
%state_at((11,1),4)
%state_at((10,3),3)
%state_at((12,3),4)
%state_at((13,3),4)
%state_at((15,3),4)
%state_at((11,3),4)
%state_at((16,1),4)
%state_at((10,7),3)
%state_at((10,5),4)
%state_at((10,5),3)
%state_at((10,4),4)
%state_at((10,4),3)
%state_at((16,2),3)
%state_at((17,0),3)
%state_at((10,6),4)
%state_at((17,1),4)
%state_at((16,3),4)
