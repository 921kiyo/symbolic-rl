1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..18, 0..10)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).
%START
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), not wall(V0).state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), wall(V0).state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), wall(V1).state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).
%END
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((17, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((1, 10)).

wall((0, 9)).

wall((1, 8)).

wall((2, 10)).

wall((2, 8)).

wall((3, 10)).

wall((3, 8)).

wall((4, 10)).

wall((5, 10)).

wall((5, 8)).

wall((6, 10)).

wall((7, 10)).

wall((7, 8)).

wall((5, 7)).

wall((6, 6)).

wall((7, 6)).

wall((8, 8)).

wall((8, 6)).

wall((9, 8)).

wall((9, 6)).

wall((11, 7)).

wall((10, 8)).

wall((11, 6)).

wall((11, 5)).

wall((9, 5)).

wall((11, 4)).

wall((10, 3)).
%AAA
state_at((10, 4), 44).
%BBB
%CCC
time(44..250).
%DDD
%ANSWER SETS

%state_at((10,4),44)
%state_at((9,4),45)
%action(left,44)
%action(up,45)
%state_at((9,3),46)
%action(up,46)
%state_at((9,2),47)
%action(right,47)
%state_at((10,2),48)
%action(right,48)
%state_at((11,2),49)
%action(right,49)
%state_at((12,2),50)
%action(right,50)
%state_at((13,2),51)
%action(right,51)
%state_at((14,2),52)
%action(right,52)
%state_at((15,2),53)
%action(right,53)
%state_at((16,2),54)
%action(right,54)
%state_at((17,2),55)
%action(up,55)
%state_at((17,1),56)
