1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..17, 0..8)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).
%START
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), wall(V1).state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).
%END
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((16, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((1, 8)).

wall((0, 7)).

wall((1, 6)).

wall((2, 8)).

wall((3, 6)).
%AAA
state_at((2, 6), 4).
%BBB
%CCC
time(4..250).
%DDD
%ANSWER SETS

%state_at((2,6),4)
%state_at((2,5),5)
%action(up,4)
%action(right,5)
%state_at((3,5),6)
%action(right,6)
%state_at((4,5),7)
%action(right,7)
%state_at((5,5),8)
%action(right,8)
%state_at((6,5),9)
%action(right,9)
%state_at((7,5),10)
%action(right,10)
%state_at((8,5),11)
%action(right,11)
%state_at((9,5),12)
%action(right,12)
%state_at((10,5),13)
%action(right,13)
%state_at((11,5),14)
%action(right,14)
%state_at((12,5),15)
%action(right,15)
%state_at((13,5),16)
%action(right,16)
%state_at((14,5),17)
%action(right,17)
%state_at((15,5),18)
%action(right,18)
%state_at((16,5),19)
%action(up,19)
%state_at((16,4),20)
%action(up,20)
%state_at((16,3),21)
%action(up,21)
%state_at((16,2),22)
%action(up,22)
%state_at((16,1),23)
