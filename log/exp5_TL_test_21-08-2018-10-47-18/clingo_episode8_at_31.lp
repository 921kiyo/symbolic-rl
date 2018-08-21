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

wall((11, 6)).

wall((10, 8)).

wall((9, 8)).

wall((11, 8)).

wall((8, 8)).

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

wall((14, 0)).

wall((13, 0)).

wall((12, 2)).

wall((12, 0)).

wall((11, 2)).

wall((11, 0)).

wall((15, 0)).
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
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((16, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((7, 8)).

wall((11, 4)).

wall((11, 3)).

wall((10, 2)).

wall((9, 2)).
%AAA
state_at((10, 3), 31).
%BBB
%CCC
time(31..250).
%DDD
%ANSWER SETS

%state_at((10,3),31)
%state_at((9,3),32)
%action(left,31)
%action(left,32)
%state_at((8,3),33)
%action(up,33)
%state_at((8,2),34)
%action(up,34)
%state_at((8,1),35)
%action(right,35)
%state_at((9,1),36)
%action(right,36)
%state_at((10,1),37)
%action(right,37)
%state_at((11,1),38)
%action(right,38)
%state_at((12,1),39)
%action(right,39)
%state_at((13,1),40)
%action(right,40)
%state_at((14,1),41)
%action(right,41)
%state_at((15,1),42)
%action(right,42)
%state_at((16,1),43)
