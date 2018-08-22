1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..18, 0..7)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

wall((3, 7)).

wall((4, 7)).

wall((5, 7)).

wall((6, 7)).

wall((7, 7)).

wall((6, 4)).

wall((7, 4)).

wall((8, 4)).

wall((8, 7)).

wall((9, 7)).

wall((11, 5)).

wall((13, 3)).

wall((15, 4)).

wall((14, 2)).

wall((15, 2)).

wall((16, 4)).

wall((16, 2)).

wall((18, 3)).

wall((17, 4)).

wall((18, 2)).
%START
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), not wall(V1).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), wall(V0).

%END
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((17, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((4, 4)).

wall((7, 3)).
%AAA
state_at((8, 2), 16).
%BBB
%CCC
time(16..250).
%DDD
%ANSWER SETS

%state_at((8,2),16)
%state_at((9,2),17)
%action(right,16)
%state_at((10,2),18)
%action(right,17)
%state_at((11,2),19)
%action(right,18)
%action(right,19)
%state_at((12,2),20)
%action(right,20)
%state_at((13,2),21)
%action(up,21)
%state_at((13,1),22)
%action(right,22)
%state_at((14,1),23)
%action(right,23)
%state_at((15,1),24)
%action(right,24)
%state_at((16,1),25)
%action(right,25)
%state_at((17,1),26)
