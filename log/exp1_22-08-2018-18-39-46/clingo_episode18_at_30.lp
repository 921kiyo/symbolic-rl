1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..18, 0..7)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

wall((2, 7)).

wall((4, 4)).

wall((5, 4)).

wall((6, 4)).

wall((7, 4)).

wall((8, 0)).

wall((9, 3)).

wall((8, 4)).

wall((9, 0)).

wall((10, 0)).

wall((11, 0)).

wall((13, 0)).

wall((15, 1)).

wall((14, 0)).

wall((15, 2)).

wall((14, 4)).

wall((13, 4)).

wall((15, 4)).

wall((12, 0)).

wall((11, 4)).

wall((16, 4)).

wall((18, 3)).

wall((17, 4)).

wall((16, 0)).
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((17, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((9, 4)).

wall((10, 4)).

wall((12, 7)).

wall((18, 2)).

wall((4, 7)).

wall((5, 7)).

wall((6, 7)).

wall((7, 7)).

wall((8, 7)).

wall((9, 7)).

wall((10, 7)).

wall((11, 7)).

wall((3, 7)).

wall((0, 5)).

wall((0, 4)).
%START
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), wall(V0).

%END
%AAA
state_at((6, 6), 30).
%BBB
%CCC
time(30..250).
%DDD
%ANSWER SETS

%state_at((6,6),30)
%state_at((7,6),31)
%action(right,30)
%action(right,31)
%state_at((8,6),32)
%action(right,32)
%state_at((9,6),33)
%action(right,33)
%state_at((10,6),34)
%action(right,34)
%state_at((11,6),35)
%action(right,35)
%state_at((12,6),36)
%action(up,36)
%state_at((12,5),37)
%action(up,37)
%state_at((12,4),38)
%action(up,38)
%state_at((12,3),39)
%action(right,39)
%state_at((13,3),40)
%action(right,40)
%state_at((14,3),41)
%action(right,41)
%state_at((15,3),42)
%action(right,42)
%state_at((16,3),43)
%action(up,43)
%state_at((16,2),44)
%action(up,44)
%state_at((16,1),45)
%action(right,45)
%state_at((17,1),46)
