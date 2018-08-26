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
%START
state_at(V0, T+1) :- time(T), state_at(V0, T), action(down, T).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).

%END

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

wall((14, 6)).

wall((14, 5)).

wall((12, 5)).

wall((14, 4)).

wall((12, 4)).

wall((14, 3)).

wall((12, 3)).

wall((14, 2)).

wall((12, 2)).

wall((13, 0)).

wall((14, 0)).

wall((15, 2)).

wall((15, 0)).
%AAA
state_at((1, 7), 0).
%BBB
%CCC
time(0..250).
%DDD
%ANSWER SETS

%state_at((1,7),0)
%state_at((2,7),1)
%action(right,0)
%action(right,1)
%state_at((3,7),2)
%action(right,2)
%state_at((4,7),3)
%state_at((4,6),4)
%action(up,3)
%state_at((4,5),5)
%action(up,4)
%state_at((4,4),6)
%action(up,5)
%state_at((4,3),7)
%action(up,6)
%state_at((4,2),8)
%action(up,7)
%state_at((5,2),9)
%action(right,8)
%action(right,9)
%state_at((6,2),10)
%action(right,10)
%state_at((7,2),11)
%action(right,11)
%state_at((8,2),12)
%action(right,12)
%state_at((9,2),13)
%action(right,13)
%state_at((10,2),14)
%action(right,14)
%state_at((11,2),15)
%action(right,15)
%state_at((12,2),16)
%action(right,16)
%state_at((13,2),17)
%action(right,17)
%state_at((14,2),18)
%action(right,18)
%state_at((15,2),19)
%action(right,19)
%state_at((16,2),20)
%state_at((16,1),21)
%action(up,20)
