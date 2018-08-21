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

wall((2, 4)).

wall((3, 4)).

wall((5, 5)).

wall((4, 4)).

wall((5, 6)).
%AAA
state_at((4, 5), 16).
%BBB
%CCC
time(16..250).
%DDD
%ANSWER SETS

%state_at((4,5),16)
%state_at((4,6),17)
%action(down,16)
%action(down,17)
%state_at((4,7),18)
%action(right,18)
%state_at((5,7),19)
%action(right,19)
%state_at((6,7),20)
%action(right,20)
%state_at((7,7),21)
%action(right,21)
%state_at((8,7),22)
%action(right,22)
%state_at((9,7),23)
%action(right,23)
%state_at((10,7),24)
%action(right,24)
%state_at((11,7),25)
%action(right,25)
%state_at((12,7),26)
%action(right,26)
%state_at((13,7),27)
%action(right,27)
%state_at((14,7),28)
%action(right,28)
%state_at((15,7),29)
%action(right,29)
%state_at((16,7),30)
%action(up,30)
%state_at((16,6),31)
%action(up,31)
%state_at((16,5),32)
%action(up,32)
%state_at((16,4),33)
%action(up,33)
%state_at((16,3),34)
%action(up,34)
%state_at((16,2),35)
%action(up,35)
%state_at((16,1),36)
