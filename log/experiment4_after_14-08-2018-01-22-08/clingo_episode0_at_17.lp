1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..18, 0..10)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).
%START
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), not wall(V0).state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), wall(V0).state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), wall(V1).state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).
%END
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((17, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((1, 10)).

wall((0, 9)).

wall((1, 8)).

wall((2, 10)).

wall((2, 8)).

wall((3, 10)).

wall((3, 8)).

wall((4, 10)).

wall((5, 10)).

wall((5, 8)).

wall((6, 10)).

wall((7, 10)).

wall((7, 8)).
%AAA
state_at((6, 9), 17).
%BBB
%CCC
time(17..250).
%DDD
%ANSWER SETS

%state_at((6,9),17)
%state_at((6,8),18)
%action(up,17)
%action(up,18)
%state_at((6,7),19)
%action(up,19)
%state_at((6,6),20)
%action(up,20)
%state_at((6,5),21)
%action(up,21)
%state_at((6,4),22)
%action(up,22)
%state_at((6,3),23)
%action(up,23)
%state_at((6,2),24)
%action(up,24)
%state_at((6,1),25)
%action(right,25)
%state_at((7,1),26)
%action(right,26)
%state_at((8,1),27)
%action(right,27)
%state_at((9,1),28)
%action(right,28)
%state_at((10,1),29)
%action(right,29)
%state_at((11,1),30)
%action(right,30)
%state_at((12,1),31)
%action(right,31)
%state_at((13,1),32)
%action(right,32)
%state_at((14,1),33)
%action(right,33)
%state_at((15,1),34)
%action(right,34)
%state_at((16,1),35)
%action(right,35)
%state_at((17,1),36)
