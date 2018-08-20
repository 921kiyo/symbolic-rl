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

wall((3, 4)).

wall((2, 4)).

wall((0, 5)).

wall((0, 4)).
%AAA
state_at((1, 5), 23).
%BBB
%CCC
time(23..250).
%DDD
%ANSWER SETS

%state_at((1,5),23)
%state_at((1,4),24)
%action(up,23)
%action(up,24)
%state_at((1,3),25)
%action(up,25)
%state_at((1,2),26)
%action(up,26)
%state_at((1,1),27)
%action(right,27)
%state_at((2,1),28)
%action(right,28)
%state_at((3,1),29)
%action(right,29)
%state_at((4,1),30)
%action(right,30)
%state_at((5,1),31)
%action(right,31)
%state_at((6,1),32)
%action(right,32)
%state_at((7,1),33)
%action(right,33)
%state_at((8,1),34)
%action(right,34)
%state_at((9,1),35)
%action(right,35)
%state_at((10,1),36)
%action(right,36)
%state_at((11,1),37)
%action(right,37)
%state_at((12,1),38)
%action(right,38)
%state_at((13,1),39)
%action(right,39)
%state_at((14,1),40)
%action(right,40)
%state_at((15,1),41)
%action(right,41)
%state_at((16,1),42)
