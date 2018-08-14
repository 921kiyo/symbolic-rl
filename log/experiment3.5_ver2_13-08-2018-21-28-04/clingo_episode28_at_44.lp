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

wall((3, 5)).

wall((4, 7)).

wall((4, 5)).

wall((5, 7)).

wall((6, 5)).

wall((6, 4)).

wall((4, 4)).
link_start((5,3)). link_dest((10,3)). 

wall((11, 3)).

wall((10, 4)).

wall((9, 3)).

wall((11, 2)).

wall((9, 2)).
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((10, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.
%START
state_at(V1, T+1) :- time(T), link_start(V0), link_dest(V1), state_at(V0, T).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), action(right, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).

%END
%AAA
state_at((10, 3), 44).
%BBB
%CCC
time(44..250).
%DDD
%ANSWER SETS

%state_at((10,3),44)
%state_at((8,2),45)
%action(right,44)
%state_at((8,2),46)
%state_at((10,2),45)
%state_at((10,2),46)
%state_at((8,3),45)
%state_at((10,3),45)
%state_at((10,3),47)
%state_at((3,4),45)
%state_at((3,4),46)
%state_at((5,4),45)
%state_at((5,4),46)
%state_at((9,4),45)
%state_at((9,4),46)
%state_at((0,5),45)
%state_at((1,5),45)
%state_at((2,5),45)
%state_at((3,5),45)
%state_at((5,5),45)
%state_at((0,7),45)
%state_at((0,7),46)
%state_at((1,7),45)
%state_at((2,7),45)
%state_at((3,7),45)
%state_at((4,7),45)
%state_at((4,6),46)
%action(up,45)
%state_at((3,6),46)
%state_at((2,6),46)
%state_at((1,6),46)
%state_at((2,4),46)
%state_at((1,4),46)
%state_at((0,4),46)
%state_at((5,3),46)
%state_at((3,3),46)
%state_at((10,1),46)
%state_at((8,1),46)
