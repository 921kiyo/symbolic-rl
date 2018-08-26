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
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), action(up, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), wall(V0).

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
%AAA
state_at((11, 7), 12).
%BBB
%CCC
time(12..250).
%DDD
%ANSWER SETS

%state_at((11,7),12)
%state_at((1,7),13)
%action(up,12)
%state_at((1,7),14)
%action(up,13)
%state_at((1,7),15)
%action(up,14)
%state_at((1,7),16)
%action(up,15)
%state_at((1,7),17)
%action(up,16)
%state_at((1,7),18)
%action(up,17)
%state_at((2,7),13)
%state_at((2,7),14)
%state_at((2,7),15)
%state_at((2,7),16)
%state_at((2,7),17)
%state_at((2,7),18)
%state_at((2,7),19)
%state_at((3,7),13)
%state_at((3,7),14)
%state_at((3,7),15)
%state_at((3,7),16)
%state_at((3,7),17)
%state_at((3,7),18)
%state_at((3,7),19)
%state_at((3,7),20)
%state_at((5,7),13)
%state_at((5,7),14)
%state_at((5,7),15)
%state_at((5,7),16)
%state_at((5,7),17)
%state_at((5,7),18)
%state_at((5,7),20)
%state_at((5,7),21)
%state_at((5,7),22)
%state_at((7,7),13)
%state_at((7,7),14)
%state_at((7,7),15)
%state_at((7,7),16)
%state_at((7,7),17)
%state_at((7,7),18)
%state_at((7,7),20)
%state_at((7,7),22)
%state_at((7,7),23)
%state_at((8,7),13)
%state_at((8,7),14)
%state_at((8,7),15)
%state_at((8,7),16)
%state_at((8,7),17)
%state_at((8,7),18)
%state_at((8,7),19)
%state_at((8,7),21)
%state_at((8,7),23)
%state_at((9,7),13)
%state_at((9,7),14)
%state_at((9,7),15)
%state_at((9,7),16)
%state_at((9,7),17)
%state_at((9,7),18)
%state_at((9,7),19)
%state_at((9,7),20)
%state_at((9,7),22)
%state_at((10,7),13)
%state_at((10,7),14)
%state_at((10,7),15)
%state_at((10,7),16)
%state_at((10,7),17)
%state_at((10,7),18)
%state_at((10,7),19)
%state_at((10,7),20)
%state_at((10,7),21)
%state_at((10,7),23)
%state_at((0,8),13)
%state_at((0,8),14)
%state_at((0,8),15)
%state_at((0,8),16)
%state_at((0,8),17)
%state_at((0,8),18)
%state_at((11,6),13)
%state_at((6,7),23)
%state_at((6,7),22)
%state_at((6,7),21)
%state_at((6,7),19)
%state_at((4,7),21)
%state_at((4,7),20)
%state_at((4,7),19)
%action(right,22)
%action(right,21)
%action(right,20)
%action(right,19)
%state_at((1,8),19)
%action(right,18)
%state_at((11,7),22)
%state_at((11,7),21)
%state_at((11,7),20)
%state_at((11,7),19)
%state_at((11,5),14)
%state_at((12,7),20)
%state_at((12,7),21)
%state_at((12,7),22)
%state_at((12,7),23)
%state_at((2,8),20)
%state_at((11,4),15)
%state_at((3,8),21)
%state_at((13,7),23)
%state_at((13,7),22)
%state_at((13,7),21)
%state_at((11,3),16)
%state_at((14,7),22)
%state_at((14,7),23)
%state_at((4,8),22)
%state_at((11,2),17)
%state_at((5,8),23)
%state_at((15,7),23)
%state_at((11,1),18)
%state_at((12,1),19)
%state_at((13,1),20)
%state_at((14,1),21)
%state_at((15,1),22)
%state_at((16,1),23)
