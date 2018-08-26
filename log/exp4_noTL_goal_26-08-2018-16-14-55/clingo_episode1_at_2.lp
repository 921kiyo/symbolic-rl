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
%START
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), not wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), action(up, T), wall(V0).

%END
%AAA
state_at((2, 7), 2).
%BBB
%CCC
time(2..250).
%DDD
%ANSWER SETS

%state_at((2,7),2)
%state_at((2,6),3)
%state_at((2,5),4)
%state_at((2,4),5)
%state_at((2,3),6)
%state_at((2,2),7)
%state_at((2,1),8)
%state_at((2,0),9)
%state_at((0,8),4)
%action(up,3)
%state_at((1,7),4)
%state_at((1,7),6)
%action(right,21)
%action(right,20)
%action(right,19)
%action(right,18)
%action(right,17)
%action(right,16)
%action(right,15)
%action(right,14)
%action(right,13)
%action(right,12)
%action(right,11)
%action(right,10)
%state_at((2,7),5)
%action(right,4)
%state_at((1,8),5)
%state_at((3,7),3)
%action(right,2)
%state_at((3,6),4)
%state_at((2,6),6)
%state_at((4,6),5)
%state_at((2,5),7)
%state_at((3,5),5)
%state_at((3,4),6)
%state_at((2,4),8)
%state_at((4,5),6)
%state_at((4,4),7)
%state_at((2,3),9)
%state_at((3,3),7)
%state_at((3,2),8)
%state_at((2,2),10)
%state_at((4,3),8)
%state_at((3,2),11)
%state_at((4,2),9)
%state_at((2,1),11)
%state_at((3,1),9)
%state_at((4,2),12)
%state_at((3,0),10)
%state_at((2,0),12)
%state_at((4,1),10)
%state_at((3,1),12)
%state_at((5,2),13)
%state_at((3,0),13)
%state_at((4,0),11)
%state_at((4,1),13)
%state_at((5,1),11)
%state_at((6,2),14)
%state_at((5,0),12)
%state_at((4,0),14)
%state_at((6,1),12)
%state_at((5,1),14)
%state_at((7,2),15)
%state_at((5,0),15)
%state_at((6,0),13)
%state_at((6,1),15)
%state_at((7,1),13)
%state_at((8,2),16)
%state_at((7,0),14)
%state_at((6,0),16)
%state_at((8,1),14)
%state_at((7,1),16)
%state_at((9,2),17)
%state_at((7,0),17)
%state_at((8,0),15)
%state_at((8,1),17)
%state_at((9,1),15)
%state_at((10,2),18)
%state_at((9,0),16)
%state_at((8,0),18)
%state_at((10,1),16)
%state_at((9,1),18)
%state_at((11,2),19)
%state_at((9,0),19)
%state_at((10,0),17)
%state_at((10,1),19)
%state_at((11,1),17)
%state_at((12,2),20)
%state_at((11,0),18)
%state_at((10,0),20)
%state_at((12,1),18)
%state_at((11,1),20)
%state_at((13,2),21)
%state_at((11,0),21)
%state_at((12,0),19)
%state_at((12,1),21)
%state_at((13,1),19)
%state_at((14,2),22)
%state_at((13,0),20)
%state_at((12,0),22)
%state_at((14,1),20)
%state_at((13,1),22)
%state_at((13,0),23)
%state_at((14,0),21)
%state_at((14,1),23)
%state_at((15,1),21)
%state_at((15,0),22)
%state_at((14,0),24)
%state_at((16,1),22)
%state_at((16,0),23)
%action(down,5)
%action(down,6)
%action(down,7)
%action(down,8)
%action(down,9)
