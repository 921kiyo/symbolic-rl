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
state_at((2, 4), 19).
%BBB
%CCC
time(19..250).
%DDD
%ANSWER SETS

%state_at((2,4),19)
%state_at((9,0),20)
%action(left,19)
%state_at((9,0),21)
%state_at((10,0),20)
%state_at((10,0),21)
%state_at((11,0),20)
%state_at((11,0),21)
%state_at((12,0),20)
%state_at((12,0),21)
%state_at((13,0),20)
%state_at((13,0),21)
%state_at((14,0),20)
%state_at((15,0),20)
%state_at((15,0),21)
%state_at((17,0),20)
%state_at((16,1),20)
%state_at((16,2),20)
%state_at((10,3),20)
%state_at((1,4),20)
%state_at((5,4),20)
%state_at((5,4),21)
%state_at((6,4),20)
%state_at((6,4),21)
%state_at((7,4),20)
%state_at((7,4),21)
%state_at((8,4),20)
%state_at((8,4),21)
%state_at((9,4),20)
%state_at((9,4),21)
%state_at((10,4),20)
%state_at((10,4),21)
%state_at((11,4),20)
%state_at((12,4),20)
%state_at((12,4),21)
%state_at((14,4),20)
%state_at((14,4),21)
%state_at((15,4),20)
%state_at((15,4),21)
%state_at((16,4),20)
%state_at((16,4),21)
%state_at((17,4),20)
%state_at((18,4),20)
%state_at((18,4),21)
%state_at((1,5),20)
%state_at((3,7),20)
%state_at((3,7),21)
%state_at((4,7),20)
%state_at((4,7),21)
%state_at((5,7),20)
%state_at((5,7),21)
%state_at((6,7),20)
%state_at((6,7),21)
%state_at((7,7),20)
%state_at((7,7),21)
%state_at((8,7),20)
%state_at((8,7),21)
%state_at((9,7),20)
%state_at((9,7),21)
%state_at((10,7),20)
%state_at((10,7),21)
%state_at((11,7),20)
%state_at((11,7),21)
%state_at((12,7),20)
%state_at((13,7),20)
%state_at((13,7),21)
%action(right,20)
%state_at((17,1),21)
%state_at((11,3),21)
%state_at((14,7),21)
%state_at((2,5),21)
%state_at((2,4),21)
%state_at((17,2),21)
%state_at((18,0),21)
