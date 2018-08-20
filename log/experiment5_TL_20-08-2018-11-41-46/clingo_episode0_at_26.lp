1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..17, 0..8)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).
%START
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), wall(V1).state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).
%END
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((16, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((1, 8)).

wall((0, 7)).

wall((1, 6)).

wall((2, 8)).

wall((3, 6)).

wall((2, 4)).

wall((3, 4)).

wall((5, 5)).

wall((4, 4)).

wall((5, 6)).

wall((4, 8)).

wall((5, 8)).

wall((6, 8)).

wall((7, 8)).

wall((7, 6)).

wall((8, 8)).

wall((8, 6)).

wall((9, 8)).

wall((9, 6)).

wall((10, 8)).

wall((11, 6)).

wall((11, 5)).

wall((9, 4)).

wall((8, 4)).
%AAA
state_at((9, 5), 26).
%BBB
%CCC
time(26..250).
%DDD
%ANSWER SETS

%state_at((9,5),26)
%state_at((10,5),27)
%action(right,26)
%action(up,27)
%state_at((10,4),28)
%action(right,28)
%state_at((11,4),29)
%action(right,29)
%state_at((12,4),30)
%action(right,30)
%state_at((13,4),31)
%action(right,31)
%state_at((14,4),32)
%action(right,32)
%state_at((15,4),33)
%action(right,33)
%state_at((16,4),34)
%action(up,34)
%state_at((16,3),35)
%action(up,35)
%state_at((16,2),36)
%action(up,36)
%state_at((16,1),37)
