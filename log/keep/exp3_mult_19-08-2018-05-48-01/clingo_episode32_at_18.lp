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

wall((4, 7)).

wall((5, 7)).

wall((5, 4)).

wall((6, 4)).

wall((6, 7)).

wall((7, 7)).

wall((7, 4)).

wall((8, 7)).

wall((9, 7)).

wall((8, 4)).

wall((11, 5)).

wall((11, 6)).

wall((10, 7)).

wall((13, 3)).

wall((13, 2)).

wall((13, 1)).

wall((12, 0)).

wall((11, 0)).

wall((10, 0)).

wall((9, 0)).
link_start((12,6)). link_dest((14,1)). 

wall((14, 2)).

wall((14, 0)).

wall((15, 2)).

wall((15, 0)).

wall((16, 2)).

wall((16, 0)).
%START
state_at(V1, T+1) :- time(T), link_start(V0), link_dest(V1), state_at(V0, T).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).

%END
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((17, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((7, 3)).
%AAA
state_at((6, 3), 18).
%BBB
%CCC
time(18..250).
%DDD
%ANSWER SETS

%state_at((6,3),18)
%state_at((6,2),19)
%action(up,18)
%action(right,19)
%state_at((7,2),20)
%action(right,20)
%state_at((8,2),21)
%action(right,21)
%state_at((9,2),22)
%action(right,22)
%state_at((10,2),23)
%action(right,23)
%state_at((11,2),24)
%action(right,24)
%state_at((12,2),25)
%action(down,25)
%state_at((12,3),26)
%action(down,26)
%state_at((12,4),27)
%action(down,27)
%state_at((12,5),28)
%action(down,28)
%state_at((12,6),29)
%action(down,29)
%state_at((12,7),30)
%state_at((14,1),30)
%action(right,30)
%state_at((13,7),31)
%state_at((15,1),31)
%action(right,31)
%state_at((14,7),32)
%state_at((16,1),32)
%action(right,32)
%state_at((15,7),33)
%state_at((17,1),33)
