1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..17, 0..7)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

wall((2, 7)).

wall((1, 7)).

wall((0, 6)).

wall((0, 5)).

wall((3, 4)).

wall((3, 7)).

wall((4, 7)).

wall((5, 7)).

wall((5, 4)).

wall((6, 4)).

wall((6, 7)).

wall((4, 4)).

wall((7, 7)).

wall((9, 6)).

wall((12, 3)).

wall((12, 2)).

wall((10, 7)).

wall((11, 7)).

wall((12, 7)).

wall((15, 4)).

wall((15, 7)).

wall((14, 7)).

wall((13, 7)).

wall((15, 0)).

wall((17, 2)).
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
 goal(T):- state_at((16, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((6, 3)).

wall((12, 1)).

wall((11, 0)).
%AAA
state_at((11, 1), 18).
%BBB
%CCC
time(18..250).
%DDD
%ANSWER SETS

%state_at((11,1),18)
%state_at((11,2),19)
%action(down,18)
%action(down,19)
%state_at((11,3),20)
%action(down,20)
%state_at((11,4),21)
%action(right,21)
%state_at((12,4),22)
%action(right,22)
%state_at((13,4),23)
%action(right,23)
%state_at((14,4),24)
%action(up,24)
%state_at((14,3),25)
%action(right,25)
%state_at((15,3),26)
%action(right,26)
%state_at((16,3),27)
%action(up,27)
%state_at((16,2),28)
%action(up,28)
%state_at((16,1),29)
