1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..17, 0..7)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

wall((3, 4)).

wall((3, 7)).

wall((4, 7)).

wall((4, 4)).

wall((5, 7)).

wall((6, 7)).

wall((6, 4)).

wall((5, 4)).

wall((2, 7)).

wall((6, 3)).

wall((8, 0)).

wall((12, 3)).

wall((14, 7)).

wall((15, 7)).

wall((13, 7)).

wall((12, 7)).

wall((15, 4)).

wall((17, 2)).

wall((15, 0)).
%START
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), action(left, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), not wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).

%END
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((16, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((0, 5)).
%AAA
state_at((1, 6), 2).
%BBB
%CCC
time(2..250).
%DDD
%ANSWER SETS

%state_at((1,6),2)
%state_at((9,0),3)
%action(left,2)
%state_at((16,0),3)
%state_at((7,3),3)
%state_at((13,3),3)
%state_at((4,4),3)
%state_at((5,4),3)
%state_at((6,4),3)
%state_at((7,4),3)
%state_at((7,4),4)
%state_at((16,4),3)
%state_at((1,5),3)
%state_at((3,7),3)
%state_at((4,7),3)
%state_at((5,7),3)
%state_at((6,7),3)
%state_at((7,7),3)
%state_at((13,7),3)
%state_at((14,7),3)
%state_at((15,7),3)
%state_at((16,7),3)
%state_at((1,6),4)
%action(down,3)
%state_at((16,5),4)
%state_at((7,5),4)
%state_at((6,5),4)
%state_at((5,5),4)
%state_at((4,5),4)
%state_at((13,4),4)
%state_at((16,1),4)
%state_at((9,1),4)
%state_at((0,6),3)
%state_at((0,7),4)
