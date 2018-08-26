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
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), wall(V1).

%END
%AAA
state_at((3, 7), 9).
%BBB
%CCC
time(9..250).
%DDD
%ANSWER SETS

%state_at((3,7),9)
%state_at((4,7),10)
%action(right,9)
%state_at((4,6),11)
%action(up,10)
%action(up,11)
%state_at((4,5),12)
%action(up,12)
%state_at((4,4),13)
%action(up,13)
%state_at((4,3),14)
%action(up,14)
%state_at((4,2),15)
%action(up,15)
%state_at((4,1),16)
%state_at((5,1),17)
%action(right,16)
%state_at((6,1),18)
%action(right,17)
%state_at((7,1),19)
%action(right,18)
%state_at((8,1),20)
%action(right,19)
%state_at((9,1),21)
%action(right,20)
%state_at((10,1),22)
%action(right,21)
%state_at((11,1),23)
%action(right,22)
%state_at((12,1),24)
%action(right,23)
%state_at((13,1),25)
%action(right,24)
%state_at((14,1),26)
%action(right,25)
%state_at((15,1),27)
%action(right,26)
%state_at((16,1),28)
%action(right,27)
