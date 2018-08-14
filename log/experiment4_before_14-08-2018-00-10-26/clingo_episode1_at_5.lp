1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..18, 0..10)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

wall((1, 10)).

wall((0, 9)).

wall((1, 8)).

wall((2, 10)).

wall((2, 8)).

wall((3, 10)).

wall((3, 8)).

wall((4, 10)).

wall((5, 8)).

wall((5, 7)).

wall((4, 6)).

wall((3, 6)).

wall((2, 6)).

wall((0, 7)).

wall((0, 6)).

wall((2, 5)).

wall((0, 5)).

wall((2, 4)).

wall((0, 4)).

wall((2, 3)).

wall((0, 3)).

wall((2, 2)).

wall((0, 2)).

wall((0, 1)).

wall((1, 0)).

wall((2, 0)).

wall((3, 2)).

wall((3, 0)).

wall((4, 2)).

wall((4, 0)).

wall((5, 2)).

wall((5, 0)).

wall((6, 2)).

wall((6, 0)).

wall((7, 2)).

wall((7, 0)).

wall((8, 0)).

wall((9, 2)).

wall((9, 3)).

wall((7, 3)).

wall((8, 5)).

wall((7, 4)).

wall((9, 0)).

wall((10, 2)).

wall((10, 0)).

wall((11, 2)).

wall((11, 0)).

wall((12, 2)).

wall((12, 0)).

wall((13, 2)).

wall((13, 0)).

wall((14, 2)).

wall((14, 0)).

wall((15, 2)).

wall((15, 0)).

wall((16, 2)).

wall((16, 0)).
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((17, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.
%START
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).

%END

wall((5, 10)).
%AAA
state_at((5, 9), 5).
%BBB
%CCC
time(5..250).
%DDD
%ANSWER SETS

%state_at((5,9),5)
%state_at((6,9),6)
%action(right,5)
%state_at((7,9),7)
%action(right,6)
%action(right,7)
%state_at((8,9),8)
%action(right,8)
%state_at((9,9),9)
%action(right,9)
%state_at((10,9),10)
%action(right,10)
%state_at((11,9),11)
%action(right,11)
%state_at((12,9),12)
%action(right,12)
%state_at((13,9),13)
%action(right,13)
%state_at((14,9),14)
%action(right,14)
%state_at((15,9),15)
%action(up,15)
%state_at((15,8),16)
%action(up,16)
%state_at((15,7),17)
%action(up,17)
%state_at((15,6),18)
%action(up,18)
%state_at((15,5),19)
%action(up,19)
%state_at((15,4),20)
%action(up,20)
%state_at((15,3),21)
%action(right,21)
%state_at((16,3),22)
%action(right,22)
%state_at((17,3),23)
%action(up,23)
%state_at((17,2),24)
%action(up,24)
%state_at((17,1),25)
