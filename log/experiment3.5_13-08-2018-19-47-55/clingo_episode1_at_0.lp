1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..11, 0..7)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

wall((1, 7)).

wall((0, 6)).

wall((1, 5)).

wall((2, 7)).

wall((2, 5)).

wall((3, 7)).

wall((4, 5)).

wall((4, 4)).

wall((2, 4)).

wall((4, 3)).

wall((2, 3)).

wall((4, 2)).

wall((2, 2)).

wall((2, 1)).

wall((3, 0)).

wall((4, 0)).

wall((5, 2)).

wall((5, 0)).

wall((6, 2)).

wall((6, 0)).

wall((7, 0)).

wall((8, 2)).

wall((8, 0)).

wall((9, 2)).

wall((9, 0)).

wall((8, 3)).

wall((6, 3)).

wall((8, 4)).

wall((6, 4)).
%START
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(right, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), wall(V0).

%END
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((10, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.
%AAA
state_at((1, 6), 0).
%BBB
%CCC
time(0..250).
%DDD
%ANSWER SETS

%state_at((1,6),0)
%state_at((2,6),1)
%action(right,0)
%state_at((3,6),2)
%action(right,1)
%state_at((3,6),3)
%action(right,2)
%state_at((4,6),3)
%state_at((3,6),4)
%state_at((4,6),4)
%action(right,3)
%state_at((5,6),4)
%state_at((3,6),5)
%state_at((4,6),5)
%state_at((5,6),5)
%action(right,4)
%state_at((6,6),5)
%state_at((3,6),6)
%state_at((4,6),6)
%state_at((5,6),6)
%state_at((6,6),6)
%action(right,5)
%state_at((7,6),6)
%state_at((3,6),7)
%state_at((4,6),7)
%state_at((5,6),7)
%state_at((6,6),7)
%state_at((7,6),7)
%action(right,6)
%state_at((8,6),7)
%state_at((3,6),8)
%state_at((4,6),8)
%state_at((5,6),8)
%state_at((6,6),8)
%state_at((7,6),8)
%state_at((8,6),8)
%action(right,7)
%state_at((9,6),8)
%state_at((3,6),9)
%state_at((4,6),9)
%state_at((5,6),9)
%state_at((6,6),9)
%state_at((7,6),9)
%state_at((8,6),9)
%state_at((9,6),9)
%action(right,8)
%state_at((10,6),9)
%action(up,9)
%state_at((4,6),10)
%state_at((6,5),10)
%state_at((8,5),10)
%state_at((10,5),10)
%state_at((9,5),10)
%state_at((7,5),10)
%state_at((5,5),10)
%state_at((3,5),10)
%action(up,10)
%state_at((8,5),11)
%state_at((6,5),11)
%state_at((4,6),11)
%state_at((3,4),11)
%state_at((5,4),11)
%state_at((7,4),11)
%state_at((9,4),11)
%state_at((10,4),11)
%action(up,11)
%state_at((9,3),12)
%state_at((5,3),12)
%state_at((4,6),12)
%state_at((6,5),12)
%state_at((8,5),12)
%state_at((10,3),12)
%state_at((7,3),12)
%state_at((3,3),12)
%action(up,12)
%state_at((8,5),13)
%state_at((6,5),13)
%state_at((4,6),13)
%state_at((5,3),13)
%state_at((9,3),13)
%state_at((3,2),13)
%state_at((7,2),13)
%state_at((10,2),13)
%action(up,13)
%state_at((7,1),14)
%state_at((9,3),14)
%state_at((3,1),14)
%state_at((5,3),14)
%state_at((4,6),14)
%state_at((6,5),14)
%state_at((8,5),14)
%state_at((10,1),14)
