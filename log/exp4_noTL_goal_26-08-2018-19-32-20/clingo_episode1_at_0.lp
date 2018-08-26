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

wall((3, 8)).

wall((3, 6)).
%START
state_at(V0, T+1) :- time(T), state_at(V0, T), action(down, T).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), action(left, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), not wall(V0).

%END
%AAA
state_at((1, 7), 0).
%BBB
%CCC
time(0..250).
%DDD
%ANSWER SETS

%state_at((1,7),0)
%state_at((2,8),1)
%action(left,0)
%state_at((1,7),1)
%state_at((2,6),1)
%state_at((2,6),3)
%state_at((3,8),1)
%state_at((4,8),1)
%state_at((4,6),1)
%state_at((4,6),3)
%action(up,5)
%action(up,4)
%state_at((4,5),4)
%action(up,3)
%action(up,2)
%state_at((4,5),2)
%action(up,1)
%state_at((4,7),2)
%state_at((3,7),2)
%state_at((2,5),4)
%state_at((2,5),2)
%state_at((1,6),2)
%state_at((2,7),2)
%action(right,17)
%action(right,16)
%action(right,15)
%action(right,14)
%action(right,13)
%action(right,12)
%action(right,11)
%action(right,10)
%action(right,9)
%action(right,8)
%action(right,7)
%action(right,6)
%state_at((3,6),3)
%state_at((3,5),4)
%state_at((1,5),3)
%state_at((2,4),3)
%state_at((2,4),5)
%state_at((4,4),3)
%state_at((4,4),5)
%state_at((4,3),8)
%state_at((4,3),7)
%state_at((4,3),6)
%state_at((4,3),4)
%state_at((2,3),6)
%state_at((2,3),4)
%state_at((1,4),4)
%state_at((3,4),5)
%state_at((3,3),6)
%state_at((3,3),7)
%state_at((5,3),7)
%state_at((5,3),8)
%state_at((5,3),9)
%state_at((1,3),5)
%state_at((2,2),5)
%state_at((2,2),7)
%state_at((4,2),5)
%state_at((4,2),9)
%state_at((6,3),10)
%state_at((6,3),9)
%state_at((6,3),8)
%state_at((4,1),8)
%state_at((4,1),6)
%state_at((2,1),6)
%state_at((1,2),6)
%state_at((5,2),10)
%state_at((3,2),8)
%state_at((7,3),9)
%state_at((7,3),10)
%state_at((7,3),11)
%state_at((3,1),7)
%state_at((5,1),7)
%state_at((5,1),9)
%state_at((6,2),11)
%state_at((8,3),12)
%state_at((8,3),11)
%state_at((8,3),10)
%state_at((6,1),10)
%state_at((6,1),8)
%state_at((7,2),12)
%state_at((9,3),11)
%state_at((9,3),12)
%state_at((9,3),13)
%state_at((7,1),9)
%state_at((7,1),11)
%state_at((8,2),13)
%state_at((10,3),14)
%state_at((10,3),13)
%state_at((10,3),12)
%state_at((8,1),12)
%state_at((8,1),10)
%state_at((9,2),14)
%state_at((11,3),13)
%state_at((11,3),14)
%state_at((11,3),15)
%state_at((9,1),11)
%state_at((9,1),13)
%state_at((10,2),15)
%state_at((12,3),16)
%state_at((12,3),15)
%state_at((12,3),14)
%state_at((10,1),14)
%state_at((10,1),12)
%state_at((11,2),16)
%state_at((13,3),15)
%state_at((13,3),16)
%state_at((13,3),17)
%state_at((11,1),13)
%state_at((11,1),15)
%state_at((12,2),17)
%state_at((14,3),18)
%state_at((14,3),17)
%state_at((14,3),16)
%state_at((12,1),16)
%state_at((12,1),14)
%state_at((13,2),18)
%state_at((15,3),17)
%state_at((15,3),18)
%state_at((13,1),15)
%state_at((13,1),17)
%state_at((16,3),18)
%state_at((14,1),18)
%state_at((14,1),16)
%state_at((15,1),17)
%state_at((16,1),18)
