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

wall((3, 8)).

wall((3, 6)).

wall((4, 8)).

wall((5, 6)).

wall((5, 5)).

wall((4, 4)).
%AAA
state_at((4, 6), 29).
%BBB
%CCC
time(29..250).
%DDD
%ANSWER SETS

%state_at((4,6),29)
%state_at((4,5),30)
%action(up,29)
%action(left,30)
%state_at((3,5),31)
%action(up,31)
%state_at((3,4),32)
%action(up,32)
%state_at((3,3),33)
%action(right,33)
%state_at((4,3),34)
%action(right,34)
%state_at((5,3),35)
%action(right,35)
%state_at((6,3),36)
%action(right,36)
%state_at((7,3),37)
%action(right,37)
%state_at((8,3),38)
%action(right,38)
%state_at((9,3),39)
%action(up,39)
%state_at((9,2),40)
%action(right,40)
%state_at((10,2),41)
%action(right,41)
%state_at((11,2),42)
%action(right,42)
%state_at((12,2),43)
%action(right,43)
%state_at((13,2),44)
%action(right,44)
%state_at((14,2),45)
%action(up,45)
%state_at((14,1),46)
%action(right,46)
%state_at((15,1),47)
%action(right,47)
%state_at((16,1),48)
