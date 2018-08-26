1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..17, 0..8)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

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

wall((12, 8)).

wall((12, 6)).

wall((14, 7)).

wall((13, 8)).

wall((14, 6)).

wall((14, 5)).

wall((12, 5)).

wall((14, 4)).

wall((12, 4)).

wall((14, 3)).

wall((12, 3)).

wall((14, 2)).

wall((12, 2)).

wall((13, 0)).

wall((14, 0)).

wall((15, 2)).

wall((15, 0)).
%START
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).

%END
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((16, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((5, 5)).

wall((4, 4)).

wall((3, 4)).

wall((2, 4)).
%AAA
state_at((3, 5), 27).
%BBB
%CCC
time(27..250).
%DDD
%ANSWER SETS

%state_at((3,5),27)
%state_at((4,5),28)
%action(right,27)
%action(down,28)
%state_at((4,6),29)
%action(down,29)
%state_at((4,7),30)
%action(right,30)
%state_at((5,7),31)
%action(right,31)
%state_at((6,7),32)
%action(up,32)
%state_at((6,6),33)
%action(up,33)
%state_at((6,5),34)
%action(up,34)
%state_at((6,4),35)
%action(right,35)
%state_at((7,4),36)
%action(right,36)
%state_at((8,4),37)
%action(right,37)
%state_at((9,4),38)
%action(right,38)
%state_at((10,4),39)
%action(right,39)
%state_at((11,4),40)
%action(up,40)
%state_at((11,3),41)
%action(up,41)
%state_at((11,2),42)
%action(up,42)
%state_at((11,1),43)
%action(right,43)
%state_at((12,1),44)
%action(right,44)
%state_at((13,1),45)
%action(right,45)
%state_at((14,1),46)
%action(right,46)
%state_at((15,1),47)
%action(right,47)
%state_at((16,1),48)
