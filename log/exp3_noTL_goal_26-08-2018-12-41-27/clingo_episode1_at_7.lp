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

wall((5, 6)).
%START
state_at(V0, T+1) :- time(T), state_at(V0, T), action(down, T).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), action(right, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).

%END
%AAA
state_at((4, 6), 7).
%BBB
%CCC
time(7..250).
%DDD
%ANSWER SETS

%state_at((4,6),7)
%state_at((0,6),9)
%action(right,8)
%state_at((0,6),10)
%action(right,9)
%state_at((0,6),11)
%action(right,10)
%state_at((0,6),12)
%action(right,11)
%state_at((0,6),13)
%action(right,12)
%state_at((0,6),14)
%action(right,13)
%state_at((0,6),15)
%action(right,14)
%state_at((0,6),16)
%action(right,15)
%state_at((0,6),17)
%action(right,16)
%state_at((0,6),18)
%action(right,17)
%state_at((0,6),19)
%action(right,18)
%state_at((0,6),20)
%action(right,19)
%state_at((1,6),9)
%state_at((1,6),10)
%state_at((1,6),11)
%state_at((1,6),12)
%state_at((1,6),13)
%state_at((1,6),14)
%state_at((1,6),15)
%state_at((1,6),16)
%state_at((1,6),17)
%state_at((1,6),18)
%state_at((1,6),19)
%state_at((1,6),20)
%state_at((2,6),9)
%state_at((2,6),10)
%state_at((2,6),11)
%state_at((2,6),12)
%state_at((2,6),13)
%state_at((2,6),14)
%state_at((2,6),15)
%state_at((2,6),16)
%state_at((2,6),17)
%state_at((2,6),18)
%state_at((2,6),19)
%state_at((2,6),20)
%state_at((4,6),9)
%state_at((4,6),10)
%state_at((4,6),11)
%state_at((4,6),12)
%state_at((4,6),13)
%state_at((4,6),14)
%state_at((4,6),15)
%state_at((4,6),16)
%state_at((4,6),17)
%state_at((4,6),18)
%state_at((4,6),19)
%state_at((4,6),20)
%state_at((0,8),9)
%state_at((0,8),10)
%state_at((0,8),11)
%state_at((0,8),12)
%state_at((0,8),13)
%state_at((0,8),14)
%state_at((0,8),15)
%state_at((0,8),16)
%state_at((0,8),17)
%state_at((0,8),18)
%state_at((0,8),19)
%state_at((0,8),20)
%state_at((0,8),21)
%state_at((0,8),22)
%state_at((0,8),23)
%state_at((0,8),24)
%state_at((1,8),9)
%state_at((1,8),10)
%state_at((1,8),11)
%state_at((1,8),12)
%state_at((1,8),13)
%state_at((1,8),14)
%state_at((1,8),15)
%state_at((1,8),16)
%state_at((1,8),17)
%state_at((1,8),18)
%state_at((1,8),19)
%state_at((1,8),20)
%state_at((2,8),9)
%state_at((2,8),10)
%state_at((2,8),11)
%state_at((2,8),12)
%state_at((2,8),13)
%state_at((2,8),14)
%state_at((2,8),15)
%state_at((2,8),16)
%state_at((2,8),17)
%state_at((2,8),18)
%state_at((2,8),19)
%state_at((2,8),20)
%state_at((3,8),9)
%state_at((3,8),10)
%state_at((3,8),11)
%state_at((3,8),12)
%state_at((3,8),13)
%state_at((3,8),14)
%state_at((3,8),15)
%state_at((3,8),16)
%state_at((3,8),17)
%state_at((3,8),18)
%state_at((3,8),19)
%state_at((3,8),20)
%state_at((3,7),24)
%action(up,23)
%state_at((3,7),23)
%action(up,22)
%state_at((3,7),22)
%action(up,21)
%state_at((3,7),21)
%action(up,20)
%state_at((2,7),24)
%state_at((2,7),23)
%state_at((2,7),22)
%state_at((2,7),21)
%state_at((1,7),24)
%state_at((1,7),23)
%state_at((1,7),22)
%state_at((1,7),21)
%state_at((4,5),21)
%state_at((2,5),21)
%state_at((1,5),21)
%state_at((0,5),21)
%state_at((4,5),8)
%action(up,7)
%state_at((0,4),22)
%state_at((1,4),22)
%state_at((2,4),22)
%state_at((4,4),22)
%state_at((5,5),9)
%state_at((4,3),23)
%state_at((2,3),23)
%state_at((1,3),23)
%state_at((0,3),23)
%state_at((6,5),10)
%state_at((0,2),24)
%state_at((1,2),24)
%state_at((2,2),24)
%state_at((4,2),24)
%state_at((7,5),11)
%state_at((8,5),12)
%state_at((9,5),13)
%state_at((10,5),14)
%state_at((11,5),15)
%state_at((12,5),16)
%state_at((13,5),17)
%state_at((14,5),18)
%state_at((15,5),19)
%state_at((16,5),20)
%state_at((16,4),21)
%state_at((16,3),22)
%state_at((16,2),23)
%state_at((16,1),24)
