1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..18, 0..10)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).
%START
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), not wall(V0).state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), wall(V0).state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), wall(V1).state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).
%END
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((17, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((1, 10)).

wall((0, 9)).

wall((1, 8)).

wall((2, 10)).

wall((2, 8)).

wall((3, 10)).

wall((3, 8)).

wall((4, 10)).

wall((5, 10)).

wall((5, 8)).

wall((6, 10)).

wall((7, 10)).

wall((7, 8)).

wall((5, 7)).

wall((6, 6)).

wall((7, 6)).

wall((8, 8)).

wall((8, 6)).

wall((9, 8)).

wall((9, 6)).

wall((11, 7)).

wall((10, 8)).

wall((11, 6)).

wall((11, 5)).

wall((9, 5)).

wall((11, 4)).

wall((10, 3)).

wall((9, 3)).

wall((8, 5)).

wall((7, 4)).

wall((8, 3)).

wall((8, 10)).

wall((9, 10)).

wall((10, 10)).

wall((11, 10)).

wall((11, 8)).

wall((12, 10)).

wall((12, 8)).

wall((13, 10)).

wall((13, 8)).

wall((15, 9)).

wall((14, 10)).

wall((15, 8)).

wall((15, 7)).

wall((13, 7)).

wall((15, 6)).

wall((13, 6)).

wall((15, 5)).

wall((13, 5)).

wall((15, 4)).

wall((13, 4)).

wall((15, 3)).

wall((13, 3)).

wall((15, 2)).

wall((13, 2)).

wall((14, 0)).

wall((15, 0)).

wall((16, 2)).

wall((16, 0)).

wall((4, 6)).
%AAA
state_at((11, 9), 12).
%BBB
%CCC
time(12..250).
%DDD
%ANSWER SETS

%state_at((11,9),12)
%state_at((12,9),13)
%action(right,12)
%state_at((13,9),14)
%action(right,13)
%state_at((14,9),15)
%action(right,14)
%action(up,15)
%state_at((14,8),16)
%action(up,16)
%state_at((14,7),17)
%action(up,17)
%state_at((14,6),18)
%action(up,18)
%state_at((14,5),19)
%action(up,19)
%state_at((14,4),20)
%action(up,20)
%state_at((14,3),21)
%action(up,21)
%state_at((14,2),22)
%action(up,22)
%state_at((14,1),23)
%action(right,23)
%state_at((15,1),24)
%action(right,24)
%state_at((16,1),25)
%action(right,25)
%state_at((17,1),26)
