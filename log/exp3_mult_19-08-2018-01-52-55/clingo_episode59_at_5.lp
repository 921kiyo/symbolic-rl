1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..18, 0..7)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

wall((4, 4)).

wall((3, 7)).

wall((2, 7)).

wall((4, 7)).

wall((0, 5)).

wall((0, 4)).

wall((1, 7)).

wall((0, 6)).

wall((5, 4)).

wall((7, 3)).

wall((6, 4)).

wall((6, 0)).

wall((7, 0)).

wall((8, 4)).

wall((9, 0)).

wall((8, 0)).

wall((9, 7)).

wall((8, 7)).

wall((7, 7)).

wall((7, 4)).

wall((11, 5)).

wall((11, 6)).

wall((10, 7)).

wall((13, 3)).

wall((13, 2)).

wall((13, 1)).

wall((12, 0)).

wall((11, 0)).

wall((10, 0)).

wall((6, 7)).

wall((5, 7)).

wall((0, 3)).

wall((5, 0)).

wall((4, 0)).

wall((3, 0)).

wall((2, 0)).

wall((0, 2)).

wall((0, 1)).

wall((1, 0)).

wall((15, 4)).

wall((14, 2)).

wall((15, 2)).

wall((16, 4)).

wall((16, 2)).

wall((18, 3)).

wall((17, 4)).

wall((18, 2)).
%START
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), wall(V0).

%END
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((17, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.
%AAA
state_at((6, 5), 5).
%BBB
%CCC
time(5..250).
%DDD
%ANSWER SETS

%state_at((6,5),5)
%state_at((7,5),6)
%action(right,5)
%action(right,6)
%state_at((8,5),7)
%action(right,7)
%state_at((9,5),8)
%action(right,8)
%state_at((10,5),9)
%action(up,9)
%state_at((10,4),10)
%action(right,10)
%state_at((11,4),11)
%action(right,11)
%state_at((12,4),12)
%action(right,12)
%state_at((13,4),13)
%action(right,13)
%state_at((14,4),14)
%action(up,14)
%state_at((14,3),15)
%action(right,15)
%state_at((15,3),16)
%action(right,16)
%state_at((16,3),17)
%action(right,17)
%state_at((17,3),18)
%action(up,18)
%state_at((17,2),19)
%action(up,19)
%state_at((17,1),20)
