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

wall((7, 6)).

wall((6, 4)).

wall((7, 4)).
%AAA
state_at((7, 5), 35).
%BBB
%CCC
time(35..250).
%DDD
%ANSWER SETS

%state_at((7,5),35)
%state_at((8,5),36)
%action(right,35)
%action(right,36)
%state_at((9,5),37)
%action(right,37)
%state_at((10,5),38)
%action(right,38)
%state_at((11,5),39)
%action(right,39)
%state_at((12,5),40)
%action(right,40)
%state_at((13,5),41)
%action(right,41)
%state_at((14,5),42)
%action(right,42)
%state_at((15,5),43)
%action(right,43)
%state_at((16,5),44)
%action(up,44)
%state_at((16,4),45)
%action(up,45)
%state_at((16,3),46)
%action(up,46)
%state_at((16,2),47)
%action(up,47)
%state_at((16,1),48)
