1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..18, 0..10)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

wall((1, 10)).

wall((0, 9)).

wall((1, 8)).

wall((2, 10)).

wall((2, 8)).

wall((3, 10)).

wall((3, 8)).

wall((4, 10)).

wall((5, 8)).

wall((5, 7)).

wall((4, 6)).

wall((3, 6)).

wall((2, 6)).

wall((0, 7)).

wall((0, 6)).

wall((2, 5)).

wall((0, 5)).

wall((2, 4)).

wall((0, 4)).

wall((2, 3)).

wall((0, 3)).

wall((2, 2)).

wall((0, 2)).

wall((0, 1)).

wall((1, 0)).

wall((2, 0)).

wall((3, 2)).

wall((3, 0)).

wall((4, 2)).

wall((4, 0)).

wall((5, 2)).

wall((5, 0)).

wall((6, 2)).

wall((6, 0)).

wall((7, 2)).

wall((7, 0)).

wall((8, 0)).

wall((9, 2)).

wall((9, 3)).

wall((7, 3)).

wall((8, 5)).

wall((7, 4)).

wall((9, 0)).

wall((10, 2)).

wall((10, 0)).

wall((11, 2)).

wall((11, 0)).

wall((12, 2)).

wall((12, 0)).

wall((13, 2)).

wall((13, 0)).

wall((14, 2)).

wall((14, 0)).

wall((15, 2)).

wall((15, 0)).

wall((16, 2)).

wall((16, 0)).
%START
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(right, T), not wall(V1).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).

%END
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((17, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.
%AAA
state_at((1, 9), 0).
%BBB
%CCC
time(0..250).
%DDD
%ANSWER SETS

%state_at((1,9),0)
%state_at((2,9),1)
%action(right,0)
%state_at((3,9),2)
%action(right,1)
%state_at((4,9),3)
%action(right,2)
%state_at((4,9),4)
%action(right,3)
%state_at((5,9),4)
%state_at((5,9),5)
%state_at((4,9),5)
%action(right,4)
%state_at((6,9),5)
%state_at((5,9),6)
%state_at((4,9),6)
%state_at((6,9),6)
%action(right,5)
%state_at((7,9),6)
%state_at((5,9),7)
%state_at((4,9),7)
%state_at((6,9),7)
%state_at((7,9),7)
%action(right,6)
%state_at((8,9),7)
%state_at((5,9),8)
%state_at((4,9),8)
%state_at((7,9),8)
%state_at((6,9),8)
%state_at((8,9),8)
%action(right,7)
%state_at((9,9),8)
%state_at((5,9),9)
%state_at((4,9),9)
%state_at((7,9),9)
%state_at((8,9),9)
%state_at((6,9),9)
%action(right,8)
%state_at((9,9),9)
%state_at((10,9),9)
%state_at((5,9),10)
%state_at((4,9),10)
%state_at((8,9),10)
%state_at((9,9),10)
%state_at((7,9),10)
%state_at((6,9),10)
%action(right,9)
%state_at((10,9),10)
%state_at((11,9),10)
%state_at((5,9),11)
%state_at((4,9),11)
%state_at((9,9),11)
%state_at((10,9),11)
%state_at((7,9),11)
%state_at((8,9),11)
%state_at((6,9),11)
%state_at((11,9),11)
%action(right,10)
%state_at((12,9),11)
%state_at((5,9),12)
%state_at((4,9),12)
%state_at((10,9),12)
%state_at((11,9),12)
%state_at((7,9),12)
%state_at((8,9),12)
%state_at((9,9),12)
%state_at((6,9),12)
%action(right,11)
%state_at((12,9),12)
%state_at((13,9),12)
%state_at((5,9),13)
%state_at((4,9),13)
%state_at((11,9),13)
%state_at((12,9),13)
%state_at((7,9),13)
%state_at((8,9),13)
%state_at((9,9),13)
%state_at((10,9),13)
%state_at((6,9),13)
%action(right,12)
%state_at((13,9),13)
%state_at((14,9),13)
%state_at((5,9),14)
%state_at((4,9),14)
%state_at((12,9),14)
%state_at((13,9),14)
%state_at((9,9),14)
%state_at((7,9),14)
%state_at((8,9),14)
%state_at((10,9),14)
%state_at((11,9),14)
%state_at((6,9),14)
%state_at((14,9),14)
%action(right,13)
%state_at((15,9),14)
%state_at((5,9),15)
%state_at((4,9),15)
%state_at((13,9),15)
%state_at((14,9),15)
%state_at((9,9),15)
%state_at((10,9),15)
%state_at((7,9),15)
%state_at((8,9),15)
%state_at((11,9),15)
%state_at((12,9),15)
%state_at((6,9),15)
%action(right,14)
%state_at((15,9),15)
%state_at((16,9),15)
%state_at((5,9),16)
%state_at((4,9),16)
%state_at((14,9),16)
%state_at((15,9),16)
%state_at((10,9),16)
%state_at((11,9),16)
%state_at((7,9),16)
%state_at((9,9),16)
%state_at((8,9),16)
%state_at((12,9),16)
%state_at((13,9),16)
%state_at((6,9),16)
%state_at((16,9),16)
%action(right,15)
%state_at((17,9),16)
%action(up,16)
%state_at((5,9),17)
%state_at((6,8),17)
%state_at((4,8),17)
%state_at((15,8),17)
%state_at((14,8),17)
%state_at((8,8),17)
%state_at((11,8),17)
%state_at((10,8),17)
%state_at((9,8),17)
%state_at((7,8),17)
%state_at((13,8),17)
%state_at((12,8),17)
%state_at((17,8),17)
%state_at((16,8),17)
%action(up,17)
%state_at((4,7),18)
%state_at((5,9),18)
%state_at((6,7),18)
%state_at((14,7),18)
%state_at((15,7),18)
%state_at((7,7),18)
%state_at((9,7),18)
%state_at((10,7),18)
%state_at((11,7),18)
%state_at((12,7),18)
%state_at((13,7),18)
%state_at((8,7),18)
%state_at((16,7),18)
%state_at((17,7),18)
%action(up,18)
%state_at((8,6),19)
%state_at((5,9),19)
%state_at((4,7),19)
%state_at((15,6),19)
%state_at((14,6),19)
%state_at((11,6),19)
%state_at((6,6),19)
%state_at((10,6),19)
%state_at((13,6),19)
%state_at((12,6),19)
%state_at((9,6),19)
%state_at((7,6),19)
%state_at((17,6),19)
%state_at((16,6),19)
%action(up,19)
%state_at((4,7),20)
%state_at((5,9),20)
%state_at((8,6),20)
%state_at((7,5),20)
%state_at((9,5),20)
%state_at((14,5),20)
%state_at((15,5),20)
%state_at((12,5),20)
%state_at((10,5),20)
%state_at((6,5),20)
%state_at((11,5),20)
%state_at((13,5),20)
%state_at((16,5),20)
%state_at((17,5),20)
%action(up,20)
%state_at((7,5),21)
%state_at((8,6),21)
%state_at((5,9),21)
%state_at((4,7),21)
%state_at((9,4),21)
%state_at((15,4),21)
%state_at((13,4),21)
%state_at((11,4),21)
%state_at((6,4),21)
%state_at((10,4),21)
%state_at((12,4),21)
%state_at((14,4),21)
%state_at((17,4),21)
%state_at((16,4),21)
%action(up,21)
%state_at((16,3),22)
%state_at((14,3),22)
%state_at((12,3),22)
%state_at((10,3),22)
%state_at((9,4),22)
%state_at((6,3),22)
%state_at((4,7),22)
%state_at((5,9),22)
%state_at((8,6),22)
%state_at((7,5),22)
%state_at((11,3),22)
%state_at((13,3),22)
%state_at((15,3),22)
%state_at((17,3),22)
%action(up,22)
%state_at((15,3),23)
%state_at((13,3),23)
%state_at((11,3),23)
%state_at((7,5),23)
%state_at((8,6),23)
%state_at((5,9),23)
%state_at((4,7),23)
%state_at((6,3),23)
%state_at((9,4),23)
%state_at((10,3),23)
%state_at((12,3),23)
%state_at((14,3),23)
%state_at((16,3),23)
%state_at((17,2),23)
%action(up,23)
%state_at((16,3),24)
%state_at((14,3),24)
%state_at((12,3),24)
%state_at((10,3),24)
%state_at((9,4),24)
%state_at((6,3),24)
%state_at((4,7),24)
%state_at((5,9),24)
%state_at((8,6),24)
%state_at((7,5),24)
%state_at((11,3),24)
%state_at((13,3),24)
%state_at((15,3),24)
%state_at((17,1),24)
