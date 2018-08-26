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
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(up, T), wall(V1).

%END
%AAA
state_at((1, 7), 6).
%BBB
%CCC
time(6..250).
%DDD
%ANSWER SETS

%state_at((1,7),6)
%state_at((2,7),7)
%action(right,6)
%state_at((2,6),8)
%action(up,7)
%state_at((2,6),9)
%action(up,8)
%state_at((2,5),9)
%state_at((2,6),10)
%action(up,9)
%state_at((2,4),10)
%state_at((2,5),10)
%state_at((2,6),11)
%action(up,10)
%state_at((2,4),11)
%state_at((2,3),11)
%state_at((2,5),11)
%state_at((2,6),12)
%action(up,11)
%state_at((2,4),12)
%state_at((2,2),12)
%state_at((2,3),12)
%state_at((2,5),12)
%state_at((2,6),13)
%action(up,12)
%state_at((2,4),13)
%state_at((2,2),13)
%state_at((2,1),13)
%state_at((2,3),13)
%state_at((2,5),13)
%state_at((3,5),14)
%state_at((3,3),14)
%state_at((3,1),14)
%state_at((3,2),14)
%state_at((3,4),14)
%action(right,13)
%state_at((3,6),14)
%state_at((4,6),15)
%state_at((4,4),15)
%state_at((4,2),15)
%state_at((4,1),15)
%state_at((4,3),15)
%state_at((4,5),15)
%action(right,14)
%state_at((5,6),16)
%state_at((5,4),16)
%state_at((5,2),16)
%state_at((5,1),16)
%state_at((5,3),16)
%state_at((5,5),16)
%action(right,15)
%state_at((6,6),17)
%state_at((6,4),17)
%state_at((6,2),17)
%state_at((6,1),17)
%state_at((6,3),17)
%state_at((6,5),17)
%action(right,16)
%state_at((7,6),18)
%state_at((7,4),18)
%state_at((7,2),18)
%state_at((7,1),18)
%state_at((7,3),18)
%state_at((7,5),18)
%action(right,17)
%state_at((8,6),19)
%state_at((8,4),19)
%state_at((8,2),19)
%state_at((8,1),19)
%state_at((8,3),19)
%state_at((8,5),19)
%action(right,18)
%state_at((9,6),20)
%state_at((9,4),20)
%state_at((9,2),20)
%state_at((9,1),20)
%state_at((9,3),20)
%state_at((9,5),20)
%action(right,19)
%state_at((10,6),21)
%state_at((10,4),21)
%state_at((10,2),21)
%state_at((10,1),21)
%state_at((10,3),21)
%state_at((10,5),21)
%action(right,20)
%state_at((11,6),22)
%state_at((11,4),22)
%state_at((11,2),22)
%state_at((11,1),22)
%state_at((11,3),22)
%state_at((11,5),22)
%action(right,21)
%state_at((12,6),23)
%state_at((12,4),23)
%state_at((12,2),23)
%state_at((12,1),23)
%state_at((12,3),23)
%state_at((12,5),23)
%action(right,22)
%state_at((13,6),24)
%state_at((13,4),24)
%state_at((13,2),24)
%state_at((13,1),24)
%state_at((13,3),24)
%state_at((13,5),24)
%action(right,23)
%state_at((14,6),25)
%state_at((14,4),25)
%state_at((14,2),25)
%state_at((14,1),25)
%state_at((14,3),25)
%state_at((14,5),25)
%action(right,24)
%state_at((15,6),26)
%state_at((15,4),26)
%state_at((15,2),26)
%state_at((15,1),26)
%state_at((15,3),26)
%state_at((15,5),26)
%action(right,25)
%state_at((16,6),27)
%state_at((16,4),27)
%state_at((16,2),27)
%state_at((16,1),27)
%state_at((16,3),27)
%state_at((16,5),27)
%action(right,26)
