1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..18, 0..7)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

wall((3, 7)).

wall((4, 7)).

wall((4, 4)).

wall((5, 4)).

wall((6, 4)).

wall((6, 7)).

wall((5, 7)).

wall((7, 7)).

wall((7, 4)).

wall((8, 4)).

wall((9, 4)).

wall((10, 4)).

wall((11, 4)).

wall((13, 4)).

wall((9, 3)).

wall((11, 0)).

wall((12, 0)).

wall((15, 2)).

wall((15, 1)).

wall((14, 0)).

wall((14, 4)).

wall((15, 4)).

wall((16, 4)).

wall((16, 0)).

wall((18, 3)).

wall((17, 4)).
%START
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), not wall(V1).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), wall(V0).

%END
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((17, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((8, 7)).

wall((9, 7)).

wall((10, 7)).

wall((11, 7)).

wall((12, 7)).

wall((18, 2)).
%AAA
state_at((9, 6), 8).
%BBB
%CCC
time(8..250).
%DDD
%ANSWER SETS

%state_at((9,6),8)
%state_at((10,6),9)
%action(right,8)
%action(right,9)
%state_at((11,6),10)
%action(right,10)
%state_at((12,6),11)
%action(up,11)
%state_at((12,5),12)
%action(up,12)
%state_at((12,4),13)
%action(up,13)
%state_at((12,3),14)
%action(right,14)
%state_at((13,3),15)
%action(right,15)
%state_at((14,3),16)
%action(right,16)
%state_at((15,3),17)
%action(right,17)
%state_at((16,3),18)
%action(up,18)
%state_at((16,2),19)
%action(up,19)
%state_at((16,1),20)
%action(right,20)
%state_at((17,1),21)
