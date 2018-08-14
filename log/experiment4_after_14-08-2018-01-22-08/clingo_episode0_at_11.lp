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
%AAA
state_at((3, 9), 11).
%BBB
%CCC
time(11..250).
%DDD
%ANSWER SETS

%state_at((3,9),11)
%state_at((4,9),12)
%action(right,11)
%state_at((5,9),13)
%action(right,12)
%state_at((6,9),14)
%action(right,13)
%action(right,14)
%state_at((7,9),15)
%state_at((8,9),16)
%action(right,15)
%action(right,16)
%state_at((9,9),17)
%action(right,17)
%state_at((10,9),18)
%action(right,18)
%state_at((11,9),19)
%action(right,19)
%state_at((12,9),20)
%action(right,20)
%state_at((13,9),21)
%action(right,21)
%state_at((14,9),22)
%action(right,22)
%state_at((15,9),23)
%action(right,23)
%state_at((16,9),24)
%action(right,24)
%state_at((17,9),25)
%action(up,25)
%state_at((17,8),26)
%action(up,26)
%state_at((17,7),27)
%action(up,27)
%state_at((17,6),28)
%action(up,28)
%state_at((17,5),29)
%action(up,29)
%state_at((17,4),30)
%action(up,30)
%state_at((17,3),31)
%action(up,31)
%state_at((17,2),32)
%action(up,32)
%state_at((17,1),33)
