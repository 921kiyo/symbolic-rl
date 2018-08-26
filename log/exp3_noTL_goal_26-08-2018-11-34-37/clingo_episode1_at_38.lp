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
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), wall(V1).

%END

wall((5, 5)).

wall((4, 4)).

wall((3, 4)).
%AAA
state_at((4, 5), 38).
%BBB
%CCC
time(38..250).
%DDD
%ANSWER SETS

%state_at((4,5),38)
%state_at((3,5),39)
%action(left,38)
%state_at((2,5),40)
%action(left,39)
%state_at((2,4),41)
%action(up,40)
%action(up,41)
%state_at((2,3),42)
%action(up,42)
%state_at((2,2),43)
%action(up,43)
%state_at((2,1),44)
%action(right,44)
%state_at((3,1),45)
%action(right,45)
%state_at((4,1),46)
%action(right,46)
%state_at((5,1),47)
%action(right,47)
%state_at((6,1),48)
%action(right,48)
%state_at((7,1),49)
%action(right,49)
%state_at((8,1),50)
%action(right,50)
%state_at((9,1),51)
%action(right,51)
%state_at((10,1),52)
%action(right,52)
%state_at((11,1),53)
%action(right,53)
%state_at((12,1),54)
%action(right,54)
%state_at((13,1),55)
%action(right,55)
%state_at((14,1),56)
%action(right,56)
%state_at((15,1),57)
%action(right,57)
%state_at((16,1),58)
