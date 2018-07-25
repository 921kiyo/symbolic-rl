1{action(down, T); action(up, T); action(right, T); action(left, T); action(non, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((5, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.
time(1..20).

cell((0..6, 0..5)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
    adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
    adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
    adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

wall((1, 5)).

wall((0, 4)).

wall((2, 3)).

wall((0, 3)).

wall((1, 2)).

wall((2, 5)).

wall((3, 5)).

wall((4, 3)).

wall((3, 2)).

wall((4, 5)).

wall((6, 4)).

wall((5, 5)).
link((5,3), (1,1)). 

wall((0, 1)).

wall((1, 0)).

wall((2, 2)).

wall((2, 0)).

wall((3, 0)).

wall((4, 2)).

wall((4, 0)).
%START
state_at(V0, T+1) :- time(T), state_at(V0, T), action(non, T).
state_at(V1, T+1) :- time(T), link(V0, V1), adjacent(up, V0, V2), state_before(V2).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).

%END
%AAA
state_at((3, 3), 1).
%BBB
%ANSWER SETS

%state_at((3,3),1)
%state_at((3,4),2)
%action(down,1)
%action(right,2)
%state_at((4,4),3)
%action(right,3)
%state_at((5,4),4)
%action(up,4)
%state_at((5,3),5)
%state_at((5,2),6)
%action(up,5)
%action(up,6)
%state_at((5,1),7)
