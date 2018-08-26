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
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), action(up, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).

%END
%AAA
state_at((1, 7), 0).
%BBB
%CCC
time(0..250).
%DDD
%ANSWER SETS

%state_at((1,7),0)
%state_at((1,7),1)
%action(up,0)
%state_at((1,7),3)
%action(up,2)
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
%state_at((2,7),1)
%state_at((2,7),2)
%state_at((2,7),3)
%state_at((2,7),4)
%state_at((2,7),5)
%state_at((2,7),6)
%state_at((2,7),7)
%state_at((2,7),8)
%state_at((2,7),9)
%state_at((2,7),10)
%state_at((3,7),1)
%state_at((3,7),2)
%state_at((3,7),3)
%state_at((3,7),4)
%state_at((3,7),5)
%state_at((3,7),6)
%state_at((3,7),7)
%state_at((3,7),8)
%state_at((3,7),9)
%state_at((3,7),10)
%state_at((5,7),1)
%state_at((5,7),3)
%state_at((5,7),4)
%state_at((5,7),5)
%state_at((5,7),6)
%state_at((5,7),7)
%state_at((5,7),8)
%state_at((5,7),9)
%state_at((7,7),1)
%state_at((7,7),3)
%state_at((7,7),4)
%state_at((7,7),5)
%state_at((7,7),6)
%state_at((7,7),7)
%state_at((7,7),8)
%state_at((7,7),9)
%state_at((8,7),1)
%state_at((8,7),2)
%state_at((8,7),3)
%state_at((8,7),4)
%state_at((8,7),5)
%state_at((8,7),6)
%state_at((8,7),7)
%state_at((8,7),8)
%state_at((8,7),9)
%state_at((8,7),10)
%state_at((9,7),1)
%state_at((9,7),2)
%state_at((9,7),3)
%state_at((9,7),4)
%state_at((9,7),5)
%state_at((9,7),6)
%state_at((9,7),7)
%state_at((9,7),8)
%state_at((9,7),9)
%state_at((9,7),10)
%state_at((10,7),1)
%state_at((10,7),2)
%state_at((10,7),3)
%state_at((10,7),4)
%state_at((10,7),5)
%state_at((10,7),6)
%state_at((10,7),7)
%state_at((10,7),8)
%state_at((10,7),9)
%state_at((10,7),10)
%state_at((11,7),1)
%state_at((11,7),2)
%state_at((11,7),3)
%state_at((11,7),4)
%state_at((11,7),5)
%state_at((11,7),6)
%state_at((11,7),7)
%state_at((11,7),8)
%state_at((11,7),9)
%state_at((11,7),10)
%state_at((12,7),1)
%state_at((12,7),2)
%state_at((12,7),3)
%state_at((12,7),4)
%state_at((12,7),5)
%state_at((12,7),6)
%state_at((12,7),7)
%state_at((12,7),8)
%state_at((12,7),9)
%state_at((12,7),10)
%state_at((0,8),1)
%state_at((0,8),3)
%state_at((0,8),4)
%state_at((0,8),5)
%state_at((0,8),6)
%state_at((0,8),7)
%state_at((0,8),8)
%state_at((0,8),9)
%state_at((14,8),1)
%state_at((14,8),3)
%state_at((14,8),4)
%state_at((14,8),5)
%state_at((14,8),6)
%state_at((14,8),7)
%state_at((14,8),8)
%state_at((14,8),9)
%state_at((6,7),10)
%state_at((6,7),2)
%state_at((4,7),10)
%state_at((4,7),2)
%state_at((15,8),10)
%action(right,9)
%state_at((15,8),2)
%action(right,1)
%state_at((1,8),10)
%state_at((1,8),2)
%state_at((13,7),10)
%state_at((13,7),2)
%state_at((13,6),3)
%state_at((15,7),3)
%state_at((4,6),3)
%state_at((6,6),3)
%state_at((6,5),4)
%state_at((4,5),4)
%state_at((15,6),4)
%state_at((13,5),4)
%state_at((13,4),5)
%state_at((15,5),5)
%state_at((4,4),5)
%state_at((6,4),5)
%state_at((6,3),6)
%state_at((4,3),6)
%state_at((15,4),6)
%state_at((13,3),6)
%state_at((13,2),7)
%state_at((15,3),7)
%state_at((4,2),7)
%state_at((6,2),7)
%state_at((6,1),8)
%state_at((4,1),8)
%state_at((15,2),8)
%state_at((13,1),8)
%state_at((13,0),9)
%state_at((15,1),9)
%state_at((4,0),9)
%state_at((6,0),9)
%state_at((16,1),10)
%state_at((14,0),10)
%state_at((7,0),10)
%state_at((5,0),10)
