1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..18, 0..7)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

wall((2, 7)).

wall((4, 4)).

wall((5, 4)).

wall((6, 4)).

wall((7, 4)).

wall((8, 0)).

wall((9, 3)).

wall((8, 4)).

wall((9, 0)).

wall((10, 0)).

wall((11, 0)).

wall((13, 0)).

wall((15, 1)).

wall((14, 0)).

wall((15, 2)).

wall((14, 4)).

wall((13, 4)).

wall((15, 4)).

wall((12, 0)).

wall((11, 4)).

wall((16, 4)).

wall((18, 3)).

wall((17, 4)).

wall((16, 0)).
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((17, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((9, 4)).

wall((10, 4)).

wall((12, 7)).

wall((18, 2)).

wall((4, 7)).

wall((5, 7)).

wall((6, 7)).

wall((7, 7)).

wall((8, 7)).

wall((9, 7)).

wall((10, 7)).

wall((11, 7)).

wall((3, 7)).
%START
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), action(left, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), wall(V0).

%END

wall((0, 5)).

wall((0, 4)).
%AAA
state_at((2, 4), 9).
%BBB
%CCC
time(9..250).
%DDD
%ANSWER SETS

%state_at((2,4),9)
%state_at((9,0),10)
%action(left,9)
%state_at((9,0),11)
%state_at((10,0),10)
%state_at((10,0),11)
%state_at((11,0),10)
%state_at((11,0),11)
%state_at((12,0),10)
%state_at((12,0),11)
%state_at((13,0),10)
%state_at((13,0),11)
%state_at((14,0),10)
%state_at((15,0),10)
%state_at((15,0),11)
%state_at((17,0),10)
%state_at((16,1),10)
%state_at((16,2),10)
%state_at((10,3),10)
%state_at((1,4),10)
%state_at((5,4),10)
%state_at((5,4),11)
%state_at((6,4),10)
%state_at((6,4),11)
%state_at((7,4),10)
%state_at((7,4),11)
%state_at((8,4),10)
%state_at((8,4),11)
%state_at((9,4),10)
%state_at((9,4),11)
%state_at((10,4),10)
%state_at((10,4),11)
%state_at((11,4),10)
%state_at((12,4),10)
%state_at((12,4),11)
%state_at((14,4),10)
%state_at((14,4),11)
%state_at((15,4),10)
%state_at((15,4),11)
%state_at((16,4),10)
%state_at((16,4),11)
%state_at((17,4),10)
%state_at((18,4),10)
%state_at((18,4),11)
%state_at((1,5),10)
%state_at((3,7),10)
%state_at((3,7),11)
%state_at((4,7),10)
%state_at((4,7),11)
%state_at((5,7),10)
%state_at((5,7),11)
%state_at((6,7),10)
%state_at((6,7),11)
%state_at((7,7),10)
%state_at((7,7),11)
%state_at((8,7),10)
%state_at((8,7),11)
%state_at((9,7),10)
%state_at((9,7),11)
%state_at((10,7),10)
%state_at((10,7),11)
%state_at((11,7),10)
%state_at((11,7),11)
%state_at((12,7),10)
%state_at((13,7),10)
%state_at((13,7),11)
%action(right,10)
%state_at((17,1),11)
%state_at((11,3),11)
%state_at((14,7),11)
%state_at((2,5),11)
%state_at((2,4),11)
%state_at((17,2),11)
%state_at((18,0),11)
