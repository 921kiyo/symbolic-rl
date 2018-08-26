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

wall((6, 8)).
%START
state_at(V0, T+1) :- time(T), state_at(V0, T), action(down, T).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), wall(V1).

%END

wall((5, 5)).

wall((4, 4)).

wall((3, 4)).
%AAA
state_at((3, 5), 43).
%BBB
%CCC
time(43..250).
%DDD
%ANSWER SETS

%state_at((3,5),43)
%state_at((2,5),44)
%action(left,43)
%state_at((2,4),45)
%action(up,44)
%action(up,45)
%state_at((2,3),46)
%action(right,46)
%state_at((3,3),47)
%action(right,47)
%state_at((4,3),48)
%action(right,48)
%state_at((5,3),49)
%action(right,49)
%state_at((6,3),50)
%action(right,50)
%state_at((7,3),51)
%action(right,51)
%state_at((8,3),52)
%action(right,52)
%state_at((9,3),53)
%action(right,53)
%state_at((10,3),54)
%action(right,54)
%state_at((11,3),55)
%action(right,55)
%state_at((12,3),56)
%action(right,56)
%state_at((13,3),57)
%action(right,57)
%state_at((14,3),58)
%action(right,58)
%state_at((15,3),59)
%action(right,59)
%state_at((16,3),60)
%action(up,60)
%state_at((16,2),61)
%action(up,61)
%state_at((16,1),62)
