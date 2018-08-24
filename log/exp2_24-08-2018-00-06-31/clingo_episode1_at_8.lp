1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..17, 0..7)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

wall((3, 4)).

wall((0, 4)).

wall((0, 3)).

wall((0, 5)).

wall((4, 4)).

wall((6, 3)).

wall((5, 4)).

wall((6, 0)).

wall((7, 0)).

wall((8, 0)).

wall((9, 0)).

wall((10, 0)).

wall((9, 6)).

wall((8, 7)).
link_start((10,6)). link_dest((13,1)). 

wall((13, 2)).

wall((12, 1)).

wall((13, 0)).

wall((14, 2)).

wall((14, 0)).

wall((15, 2)).

wall((15, 0)).
%START
state_at(V1, T+1) :- time(T), link_start(V0), link_dest(V1), state_at(V0, T).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), action(down, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).

%END
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((16, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((2, 7)).

wall((3, 7)).

wall((4, 7)).

wall((5, 7)).
%AAA
state_at((6, 6), 8).
%BBB
%CCC
time(8..250).
%DDD
%ANSWER SETS

%state_at((6,6),8)
%state_at((12,0),9)
%action(down,8)
%state_at((12,0),10)
%state_at((13,1),9)
%state_at((14,1),9)
%state_at((14,1),10)
%state_at((15,1),9)
%state_at((15,1),10)
%state_at((0,2),9)
%state_at((6,2),9)
%state_at((0,3),9)
%state_at((3,3),9)
%state_at((4,3),9)
%state_at((4,3),10)
%state_at((5,3),9)
%state_at((5,3),10)
%state_at((0,4),9)
%state_at((9,5),9)
%state_at((2,6),9)
%state_at((3,6),9)
%state_at((3,6),10)
%state_at((4,6),9)
%state_at((4,6),10)
%state_at((5,6),9)
%state_at((5,6),10)
%state_at((8,6),9)
%state_at((8,6),10)
%action(right,9)
%state_at((6,7),9)
%state_at((6,6),10)
%state_at((10,5),10)
%state_at((1,4),10)
%state_at((1,3),10)
%state_at((7,2),10)
%state_at((1,2),10)
%state_at((16,1),10)
%state_at((7,7),10)
