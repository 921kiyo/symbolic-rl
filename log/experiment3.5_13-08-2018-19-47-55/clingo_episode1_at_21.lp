1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..11, 0..7)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

wall((1, 7)).

wall((0, 6)).

wall((1, 5)).

wall((2, 7)).

wall((2, 5)).

wall((3, 7)).

wall((4, 5)).

wall((4, 4)).

wall((2, 4)).

wall((4, 3)).

wall((2, 3)).

wall((4, 2)).

wall((2, 2)).

wall((2, 1)).

wall((3, 0)).

wall((4, 0)).

wall((5, 2)).

wall((5, 0)).

wall((6, 2)).

wall((6, 0)).

wall((7, 0)).

wall((8, 2)).

wall((8, 0)).

wall((9, 2)).

wall((9, 0)).

wall((8, 3)).

wall((6, 3)).

wall((8, 4)).

wall((6, 4)).
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((10, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.
%START
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), wall(V0).

%END

wall((4, 7)).

wall((5, 7)).

wall((6, 7)).

wall((6, 5)).

wall((7, 7)).

wall((8, 7)).

wall((8, 5)).

wall((9, 7)).

wall((9, 5)).

wall((11, 6)).

wall((10, 7)).

wall((10, 5)).
%AAA
state_at((7, 4), 21).
%BBB
%CCC
time(21..250).
%DDD
%ANSWER SETS

%state_at((7,4),21)
%state_at((7,3),22)
%action(up,21)
%action(up,22)
%state_at((7,2),23)
%action(up,23)
%state_at((7,1),24)
%action(right,24)
%state_at((8,1),25)
%action(right,25)
%state_at((9,1),26)
%action(right,26)
%state_at((10,1),27)
