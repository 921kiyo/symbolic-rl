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

wall((5, 8)).

wall((5, 6)).

wall((6, 8)).
%AAA
state_at((4, 6), 24).
%BBB
%CCC
time(24..250).
%DDD
%ANSWER SETS

%state_at((4,6),24)
%state_at((4,5),25)
%action(up,24)
%action(right,25)
%state_at((5,5),26)
%action(right,26)
%state_at((6,5),27)
%action(right,27)
%state_at((7,5),28)
%action(right,28)
%state_at((8,5),29)
%action(right,29)
%state_at((9,5),30)
%action(right,30)
%state_at((10,5),31)
%action(right,31)
%state_at((11,5),32)
%action(right,32)
%state_at((12,5),33)
%action(right,33)
%state_at((13,5),34)
%action(right,34)
%state_at((14,5),35)
%action(right,35)
%state_at((15,5),36)
%action(right,36)
%state_at((16,5),37)
%action(up,37)
%state_at((16,4),38)
%action(up,38)
%state_at((16,3),39)
%action(up,39)
%state_at((16,2),40)
%action(up,40)
%state_at((16,1),41)
