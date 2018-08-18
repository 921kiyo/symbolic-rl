1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..18, 0..7)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

wall((0, 4)).

wall((0, 5)).

wall((0, 3)).

wall((0, 2)).

wall((0, 1)).

wall((1, 0)).

wall((2, 0)).

wall((3, 0)).

wall((4, 4)).

wall((5, 4)).

wall((6, 4)).

wall((7, 4)).

wall((9, 3)).

wall((8, 4)).

wall((8, 0)).

wall((7, 0)).

wall((6, 0)).

wall((4, 0)).

wall((5, 0)).

wall((9, 0)).

wall((10, 0)).

wall((11, 0)).

wall((12, 0)).

wall((10, 4)).

wall((11, 4)).

wall((13, 4)).

wall((14, 4)).

wall((15, 4)).

wall((15, 2)).

wall((16, 4)).

wall((18, 2)).

wall((18, 3)).

wall((17, 4)).
%START
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), action(right, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).

%END
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((17, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.
%AAA
state_at((3, 5), 0).
%BBB
%CCC
time(0..250).
%DDD
%ANSWER SETS

%state_at((3,5),0)
%state_at((0,0),1)
%action(right,0)
%state_at((1,0),1)
%state_at((2,0),1)
%state_at((3,0),1)
%state_at((4,0),1)
%state_at((5,0),1)
%state_at((6,0),1)
%state_at((7,0),1)
%state_at((8,0),1)
%state_at((9,0),1)
%state_at((10,0),1)
%state_at((11,0),1)
%state_at((14,2),1)
%state_at((17,2),1)
%state_at((17,2),2)
%state_at((8,3),1)
%state_at((17,3),1)
%state_at((3,4),1)
%state_at((4,4),1)
%state_at((5,4),1)
%state_at((6,4),1)
%state_at((7,4),1)
%state_at((9,4),1)
%state_at((9,4),2)
%state_at((10,4),1)
%state_at((12,4),1)
%state_at((13,4),1)
%state_at((14,4),1)
%state_at((15,4),1)
%state_at((16,4),1)
%action(up,1)
%state_at((4,5),2)
%state_at((14,3),2)
%state_at((16,3),2)
%state_at((15,3),2)
%state_at((13,3),2)
%state_at((12,3),2)
%state_at((10,3),2)
%state_at((7,3),2)
%state_at((6,3),2)
%state_at((5,3),2)
%state_at((4,3),2)
%state_at((3,3),2)
%state_at((8,2),2)
%state_at((17,1),2)
%state_at((14,1),2)
%state_at((4,5),1)
