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

wall((2, 6)).

wall((3, 8)).

wall((3, 6)).

wall((4, 8)).

wall((5, 8)).

wall((5, 6)).
%START
state_at(V0, T+1) :- time(T), state_at(V0, T), action(down, T).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), wall(V1).

%END

wall((6, 8)).

wall((7, 8)).

wall((7, 6)).

wall((8, 8)).

wall((8, 6)).

wall((9, 8)).

wall((9, 6)).

wall((10, 8)).

wall((10, 6)).

wall((11, 8)).

wall((11, 6)).
%AAA
state_at((11, 7), 26).
%BBB
%CCC
time(26..250).
%DDD
%ANSWER SETS

%state_at((11,7),26)
%state_at((12,7),27)
%action(right,26)
%state_at((12,6),28)
%action(up,27)
%action(up,28)
%state_at((12,5),29)
%action(up,29)
%state_at((12,4),30)
%action(up,30)
%state_at((12,3),31)
%action(up,31)
%state_at((12,2),32)
%action(up,32)
%state_at((12,1),33)
%state_at((13,1),34)
%action(right,33)
%state_at((14,1),35)
%action(right,34)
%state_at((15,1),36)
%action(right,35)
%state_at((16,1),37)
%action(right,36)
