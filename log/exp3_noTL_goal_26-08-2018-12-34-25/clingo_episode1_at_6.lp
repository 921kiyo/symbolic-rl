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

wall((6, 8)).

wall((7, 8)).

wall((7, 6)).

wall((8, 8)).

wall((8, 6)).

wall((9, 8)).

wall((9, 6)).

wall((10, 8)).

wall((10, 6)).

wall((11, 8)).

wall((11, 6)).

wall((12, 8)).

wall((12, 6)).

wall((14, 7)).

wall((13, 8)).
%START
state_at(V0, T+1) :- time(T), state_at(V0, T), action(down, T).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).

%END
%AAA
state_at((2, 7), 6).
%BBB
%CCC
time(6..250).
%DDD
%ANSWER SETS

%state_at((2,7),6)
%state_at((3,7),7)
%action(right,6)
%action(right,7)
%state_at((4,7),8)
%state_at((4,6),9)
%action(up,8)
%action(right,9)
%state_at((5,6),10)
%state_at((6,6),11)
%action(right,10)
%action(right,11)
%state_at((7,6),12)
%action(right,12)
%state_at((8,6),13)
%action(right,13)
%state_at((9,6),14)
%action(right,14)
%state_at((10,6),15)
%action(right,15)
%state_at((11,6),16)
%action(right,16)
%state_at((12,6),17)
%state_at((13,6),18)
%action(right,17)
%state_at((14,6),19)
%action(right,18)
%state_at((15,6),20)
%action(right,19)
%state_at((16,6),21)
%action(right,20)
%action(up,21)
%state_at((16,5),22)
%action(up,22)
%state_at((16,4),23)
%action(up,23)
%state_at((16,3),24)
%action(up,24)
%state_at((16,2),25)
%action(up,25)
%state_at((16,1),26)
