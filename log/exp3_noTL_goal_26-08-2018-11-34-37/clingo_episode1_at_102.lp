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

wall((5, 5)).

wall((4, 4)).

wall((3, 4)).

wall((2, 4)).

wall((0, 5)).

wall((0, 4)).

wall((2, 3)).

wall((0, 3)).

wall((2, 2)).

wall((0, 2)).

wall((0, 1)).

wall((1, 0)).

wall((2, 0)).

wall((3, 2)).

wall((3, 0)).

wall((4, 2)).

wall((4, 0)).

wall((5, 2)).

wall((5, 0)).

wall((6, 2)).

wall((6, 0)).

wall((7, 2)).

wall((7, 0)).

wall((8, 0)).

wall((9, 2)).
%START
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), wall(V0).

%END

wall((8, 4)).

wall((7, 3)).

wall((9, 4)).

wall((11, 3)).

wall((10, 2)).

wall((11, 4)).
%AAA
state_at((10, 3), 102).
%BBB
%CCC
time(102..250).
%DDD
%ANSWER SETS

%state_at((10,3),102)
%state_at((10,4),103)
%action(down,102)
%state_at((10,5),104)
%action(down,103)
%action(right,104)
%state_at((11,5),105)
%action(right,105)
%state_at((12,5),106)
%action(right,106)
%state_at((13,5),107)
%action(right,107)
%state_at((14,5),108)
%action(right,108)
%state_at((15,5),109)
%action(right,109)
%state_at((16,5),110)
%action(up,110)
%state_at((16,4),111)
%action(up,111)
%state_at((16,3),112)
%action(up,112)
%state_at((16,2),113)
%action(up,113)
%state_at((16,1),114)
