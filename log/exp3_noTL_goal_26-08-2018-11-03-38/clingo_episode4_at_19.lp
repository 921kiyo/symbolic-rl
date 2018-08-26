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

wall((14, 6)).

wall((14, 5)).

wall((12, 5)).

wall((14, 4)).

wall((12, 4)).

wall((14, 3)).

wall((12, 3)).

wall((14, 2)).

wall((12, 2)).

wall((13, 0)).

wall((14, 0)).

wall((15, 2)).

wall((15, 0)).
%START
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), wall(V1).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).

%END

wall((5, 5)).

wall((4, 4)).

wall((3, 4)).

wall((2, 4)).

wall((0, 5)).
%AAA
state_at((2, 5), 19).
%BBB
%CCC
time(19..250).
%DDD
%ANSWER SETS

%state_at((2,5),19)
%state_at((1,5),20)
%action(left,19)
%state_at((1,4),21)
%action(up,20)
%state_at((1,3),22)
%action(up,21)
%action(right,22)
%state_at((2,3),23)
%action(right,23)
%state_at((3,3),24)
%action(right,24)
%state_at((4,3),25)
%action(right,25)
%state_at((5,3),26)
%action(right,26)
%state_at((6,3),27)
%action(right,27)
%state_at((7,3),28)
%action(right,28)
%state_at((8,3),29)
%action(right,29)
%state_at((9,3),30)
%action(right,30)
%state_at((10,3),31)
%action(right,31)
%state_at((11,3),32)
%action(up,32)
%state_at((11,2),33)
%action(up,33)
%state_at((11,1),34)
%action(right,34)
%state_at((12,1),35)
%action(right,35)
%state_at((13,1),36)
%action(right,36)
%state_at((14,1),37)
%action(right,37)
%state_at((15,1),38)
%action(right,38)
%state_at((16,1),39)
