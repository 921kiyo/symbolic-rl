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

wall((3, 6)).

wall((2, 4)).

wall((3, 4)).

wall((5, 5)).

wall((4, 4)).
%START
state_at(V0, T+1) :- time(T), state_at(V0, T), action(down, T).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(left, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).

%END
%AAA
state_at((4, 5), 21).
%BBB
%CCC
time(21..250).
%DDD
%ANSWER SETS

%state_at((4,5),21)
%state_at((4,5),22)
%action(left,21)
%state_at((3,5),22)
%state_at((3,5),23)
%action(left,22)
%state_at((4,5),23)
%state_at((2,5),23)
%state_at((2,5),24)
%action(left,23)
%state_at((4,5),24)
%state_at((3,5),24)
%state_at((1,5),24)
%state_at((3,5),25)
%state_at((4,5),25)
%state_at((2,5),25)
%state_at((1,4),25)
%action(up,24)
%state_at((2,5),26)
%state_at((4,5),26)
%state_at((3,5),26)
%action(up,25)
%state_at((1,3),26)
%state_at((3,5),27)
%state_at((4,5),27)
%action(right,26)
%state_at((2,3),27)
%state_at((4,5),28)
%action(right,27)
%state_at((3,3),28)
%state_at((4,5),29)
%action(right,28)
%state_at((4,3),29)
%state_at((4,5),30)
%action(right,29)
%state_at((5,3),30)
%state_at((4,5),31)
%action(right,30)
%state_at((6,3),31)
%state_at((4,5),32)
%action(right,31)
%state_at((7,3),32)
%state_at((4,5),33)
%action(right,32)
%state_at((8,3),33)
%state_at((4,5),34)
%action(right,33)
%state_at((9,3),34)
%state_at((4,5),35)
%action(right,34)
%state_at((10,3),35)
%state_at((4,5),36)
%action(right,35)
%state_at((11,3),36)
%state_at((4,5),37)
%action(right,36)
%state_at((12,3),37)
%state_at((4,5),38)
%action(right,37)
%state_at((13,3),38)
%state_at((4,5),39)
%action(right,38)
%state_at((14,3),39)
%state_at((4,5),40)
%action(right,39)
%state_at((15,3),40)
%state_at((4,5),41)
%action(right,40)
%state_at((16,3),41)
%state_at((4,5),42)
%action(up,41)
%state_at((16,2),42)
%state_at((4,5),43)
%action(up,42)
%state_at((16,1),43)
