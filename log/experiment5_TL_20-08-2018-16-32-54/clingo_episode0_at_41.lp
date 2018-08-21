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
%AAA
state_at((8, 7), 41).
%BBB
%CCC
time(41..250).
%DDD
%ANSWER SETS

%state_at((8,7),41)
%state_at((9,7),42)
%action(right,41)
%action(right,42)
%state_at((10,7),43)
%action(right,43)
%state_at((11,7),44)
%action(right,44)
%state_at((12,7),45)
%action(right,45)
%state_at((13,7),46)
%action(right,46)
%state_at((14,7),47)
%action(right,47)
%state_at((15,7),48)
%action(right,48)
%state_at((16,7),49)
%action(up,49)
%state_at((16,6),50)
%action(up,50)
%state_at((16,5),51)
%action(up,51)
%state_at((16,4),52)
%action(up,52)
%state_at((16,3),53)
%action(up,53)
%state_at((16,2),54)
%action(up,54)
%state_at((16,1),55)
