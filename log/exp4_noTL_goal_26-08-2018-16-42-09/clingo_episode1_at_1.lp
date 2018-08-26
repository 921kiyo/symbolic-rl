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

wall((4, 8)).

wall((5, 8)).

wall((5, 6)).

wall((6, 8)).

wall((7, 8)).

wall((7, 6)).
%START
state_at(V0, T+1) :- time(T), state_at(V0, T), action(down, T).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), action(up, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).

%END
%AAA
state_at((2, 7), 1).
%BBB
%CCC
time(1..250).
%DDD
%ANSWER SETS

%state_at((2,7),1)
%state_at((1,7),2)
%action(up,1)
%state_at((1,7),4)
%action(up,3)
%state_at((1,7),5)
%action(up,4)
%state_at((1,7),6)
%action(up,5)
%state_at((1,7),7)
%action(up,6)
%state_at((1,7),8)
%action(up,7)
%state_at((1,7),9)
%action(up,8)
%state_at((3,7),2)
%state_at((3,7),4)
%state_at((3,7),5)
%state_at((3,7),6)
%state_at((3,7),7)
%state_at((3,7),8)
%state_at((3,7),9)
%state_at((3,7),11)
%state_at((5,7),2)
%state_at((5,7),4)
%state_at((5,7),5)
%state_at((5,7),6)
%state_at((5,7),7)
%state_at((5,7),8)
%state_at((5,7),9)
%state_at((5,7),11)
%state_at((5,7),13)
%state_at((7,7),2)
%state_at((7,7),4)
%state_at((7,7),5)
%state_at((7,7),6)
%state_at((7,7),7)
%state_at((7,7),8)
%state_at((7,7),9)
%state_at((7,7),11)
%state_at((7,7),13)
%state_at((7,7),15)
%state_at((0,8),2)
%state_at((0,8),4)
%state_at((0,8),5)
%state_at((0,8),6)
%state_at((0,8),7)
%state_at((0,8),8)
%state_at((0,8),9)
%state_at((6,7),14)
%state_at((6,7),12)
%state_at((6,7),10)
%state_at((6,7),3)
%state_at((4,7),12)
%state_at((4,7),10)
%state_at((4,7),3)
%state_at((2,7),10)
%state_at((2,7),3)
%action(right,16)
%action(right,15)
%action(right,14)
%action(right,13)
%action(right,12)
%action(right,11)
%action(right,10)
%state_at((1,8),10)
%action(right,9)
%state_at((1,8),3)
%action(right,2)
%state_at((8,7),16)
%state_at((8,7),14)
%state_at((8,7),12)
%state_at((8,7),10)
%state_at((8,7),3)
%state_at((2,6),2)
%state_at((3,6),3)
%state_at((9,7),11)
%state_at((9,7),13)
%state_at((9,7),15)
%state_at((9,7),17)
%state_at((2,8),11)
%state_at((8,6),4)
%state_at((2,6),4)
%state_at((4,6),4)
%state_at((6,6),4)
%state_at((3,5),4)
%state_at((3,8),12)
%state_at((10,7),16)
%state_at((10,7),14)
%state_at((10,7),12)
%state_at((6,5),5)
%state_at((4,5),5)
%state_at((2,5),5)
%state_at((8,5),5)
%state_at((3,4),5)
%state_at((11,7),13)
%state_at((11,7),15)
%state_at((11,7),17)
%state_at((4,8),13)
%state_at((8,4),6)
%state_at((2,4),6)
%state_at((4,4),6)
%state_at((6,4),6)
%state_at((3,3),6)
%state_at((5,8),14)
%state_at((12,7),16)
%state_at((12,7),14)
%state_at((6,3),7)
%state_at((4,3),7)
%state_at((2,3),7)
%state_at((8,3),7)
%state_at((3,2),7)
%state_at((13,7),15)
%state_at((13,7),17)
%state_at((6,8),15)
%state_at((8,2),8)
%state_at((2,2),8)
%state_at((4,2),8)
%state_at((6,2),8)
%state_at((3,1),8)
%state_at((7,8),16)
%state_at((14,7),16)
%state_at((6,1),13)
%state_at((6,1),11)
%state_at((6,1),9)
%state_at((4,1),11)
%state_at((4,1),9)
%state_at((2,1),9)
%state_at((8,1),15)
%state_at((8,1),13)
%state_at((8,1),11)
%state_at((8,1),9)
%state_at((7,1),10)
%state_at((7,1),12)
%state_at((7,1),14)
%state_at((3,1),10)
%state_at((5,1),10)
%state_at((5,1),12)
%state_at((3,0),9)
%state_at((9,1),10)
%state_at((9,1),12)
%state_at((9,1),14)
%state_at((9,1),16)
%state_at((15,7),17)
%state_at((8,8),17)
%state_at((8,0),14)
%state_at((4,0),10)
%state_at((6,0),12)
%state_at((5,0),11)
%state_at((7,0),13)
%state_at((9,0),15)
%state_at((10,1),17)
%state_at((10,1),15)
%state_at((10,1),13)
%state_at((10,1),11)
%state_at((11,1),12)
%state_at((11,1),14)
%state_at((11,1),16)
%state_at((10,0),16)
%state_at((11,0),17)
%state_at((12,1),17)
%state_at((12,1),15)
%state_at((12,1),13)
%state_at((13,1),14)
%state_at((13,1),16)
%state_at((14,1),17)
%state_at((14,1),15)
%state_at((15,1),16)
%state_at((16,1),17)
