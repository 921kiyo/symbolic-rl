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

wall((5, 6)).

wall((5, 5)).

wall((4, 4)).

wall((3, 4)).

wall((2, 4)).

wall((5, 8)).

wall((6, 8)).

wall((7, 8)).

wall((7, 6)).

wall((8, 8)).

wall((8, 6)).

wall((9, 8)).

wall((9, 6)).

wall((10, 8)).

wall((11, 8)).

wall((11, 6)).

wall((12, 8)).

wall((12, 6)).

wall((14, 7)).

wall((13, 8)).

wall((14, 6)).

wall((12, 5)).

wall((13, 4)).
link_start((14,5)). link_dest((14,3)). 

wall((15, 3)).

wall((14, 4)).

wall((13, 3)).

wall((15, 2)).

wall((13, 2)).
%START
state_at(V1, T+1) :- time(T), link_start(V0), link_dest(V1), state_at(V0, T).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).

%END

wall((14, 0)).

wall((15, 0)).
%AAA
state_at((7, 7), 12).
%BBB
%CCC
time(12..250).
%DDD
%ANSWER SETS

%state_at((7,7),12)
%state_at((8,7),13)
%action(right,12)
%state_at((9,7),14)
%action(right,13)
%action(right,14)
%state_at((10,7),15)
%action(right,15)
%state_at((11,7),16)
%action(right,16)
%state_at((12,7),17)
%action(right,17)
%state_at((13,7),18)
%action(up,18)
%state_at((13,6),19)
%action(up,19)
%state_at((13,5),20)
%action(right,20)
%state_at((14,5),21)
%action(right,21)
%state_at((15,5),22)
%state_at((14,3),22)
%state_at((14,2),23)
%action(up,22)
%state_at((15,4),23)
%state_at((15,4),24)
%action(up,23)
%state_at((14,1),24)
%action(right,24)
%state_at((16,4),25)
%state_at((15,1),25)
%action(right,25)
%state_at((17,4),26)
%state_at((16,1),26)
