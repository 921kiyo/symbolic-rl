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

wall((2, 6)).

wall((3, 8)).

wall((3, 6)).

wall((4, 8)).

wall((5, 8)).

wall((5, 6)).

wall((6, 8)).

wall((7, 6)).

wall((5, 5)).

wall((6, 4)).

wall((7, 4)).

wall((8, 6)).

wall((8, 4)).

wall((9, 6)).

wall((9, 4)).

wall((11, 5)).

wall((10, 6)).

wall((11, 4)).

wall((11, 3)).

wall((10, 2)).

wall((9, 2)).

wall((7, 3)).

wall((7, 2)).

wall((8, 0)).

wall((9, 0)).

wall((10, 0)).

wall((11, 2)).

wall((11, 0)).

wall((12, 2)).

wall((12, 0)).

wall((13, 0)).

wall((14, 2)).

wall((14, 0)).

wall((15, 2)).

wall((15, 0)).

wall((4, 4)).

wall((3, 4)).

wall((2, 4)).

wall((0, 5)).

wall((0, 4)).

wall((2, 3)).

wall((0, 3)).
%AAA
state_at((3, 5), 26).
%BBB
%CCC
time(26..250).
%DDD
%ANSWER SETS

%state_at((3,5),26)
%state_at((4,5),27)
%action(right,26)
%action(down,27)
%state_at((4,6),28)
%action(down,28)
%state_at((4,7),29)
%action(right,29)
%state_at((5,7),30)
%action(right,30)
%state_at((6,7),31)
%action(right,31)
%state_at((7,7),32)
%action(right,32)
%state_at((8,7),33)
%action(right,33)
%state_at((9,7),34)
%action(right,34)
%state_at((10,7),35)
%action(right,35)
%state_at((11,7),36)
%action(right,36)
%state_at((12,7),37)
%action(up,37)
%state_at((12,6),38)
%action(up,38)
%state_at((12,5),39)
%action(up,39)
%state_at((12,4),40)
%action(up,40)
%state_at((12,3),41)
%action(right,41)
%state_at((13,3),42)
%action(up,42)
%state_at((13,2),43)
%action(up,43)
%state_at((13,1),44)
%action(right,44)
%state_at((14,1),45)
%action(right,45)
%state_at((15,1),46)
%action(right,46)
%state_at((16,1),47)
