state_at((1, 4), 1).
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
:- state_at(V1, T), state_at(V2, T), V1 != V2.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
    adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
    adjacent(up, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
    adjacent(down,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), not wall(V0).
wall((1, 5)). wall((0, 4)). 
wall((2, 3)). wall((0, 3)). 
wall((2, 2)). wall((0, 2)). 
wall((0, 1)). wall((1, 0)). 
wall((0, 1)). wall((1, 0)). 
wall((0, 1)). wall((1, 0)). 
wall((2, 2)). wall((0, 2)). 
wall((2, 3)). wall((0, 3)). 
wall((1, 5)). wall((0, 4)). 
wall((1, 5)). wall((0, 4)). 
wall((1, 5)). wall((0, 4)). 
wall((2, 5)). wall((2, 3)). 
wall((2, 5)). wall((2, 3)). 
wall((2, 5)). wall((2, 3)). 
wall((1, 5)). wall((0, 4)). 
wall((1, 5)). wall((0, 4)). 
wall((2, 3)). wall((0, 3)). 
wall((1, 5)). wall((0, 4)). 
wall((1, 5)). wall((0, 4)). 
wall((1, 5)). wall((0, 4)). 
wall((1, 5)). wall((0, 4)). 
wall((2, 5)). wall((2, 3)). 
wall((3, 5)). 
wall((4, 3)). wall((2, 3)). wall((3, 2)). 
wall((4, 3)). wall((2, 3)). wall((3, 2)). 
wall((3, 5)). 
wall((3, 5)). 
wall((2, 5)). wall((2, 3)). 
wall((2, 5)). wall((2, 3)). 
wall((2, 5)). wall((2, 3)). 
wall((2, 5)). wall((2, 3)). 
wall((1, 5)). wall((0, 4)). 
wall((1, 5)). wall((0, 4)). 
wall((2, 3)). wall((0, 3)). 
wall((2, 3)). wall((0, 3)). 
wall((2, 3)). wall((0, 3)). 
wall((2, 3)). wall((0, 3)). 
wall((2, 2)). wall((0, 2)). 
wall((2, 2)). wall((0, 2)). 
wall((2, 2)). wall((0, 2)). 
wall((1, 5)). wall((0, 4)). 
wall((2, 5)). wall((2, 3)). 
wall((3, 5)). 
wall((4, 5)). wall((4, 3)). 
wall((4, 5)). wall((4, 3)). 
wall((4, 5)). wall((4, 3)). 
wall((4, 5)). wall((4, 3)). 
wall((3, 5)). 
wall((3, 5)). 
wall((4, 3)). wall((2, 3)). wall((3, 2)). 
wall((4, 3)). wall((2, 3)). wall((3, 2)). 
wall((4, 3)). wall((2, 3)). wall((3, 2)). 
wall((4, 3)). wall((2, 3)). wall((3, 2)). 
wall((4, 3)). wall((2, 3)). wall((3, 2)). 
wall((3, 5)). 
wall((3, 5)). 
wall((2, 5)). wall((2, 3)). 
wall((2, 5)). wall((2, 3)). 
wall((3, 5)). 
wall((4, 5)). wall((4, 3)). 
wall((1, 5)). wall((0, 4)). 
wall((2, 3)). wall((0, 3)). 
wall((2, 3)). wall((0, 3)). 
wall((2, 3)). wall((0, 3)). 
wall((2, 3)). wall((0, 3)). 
wall((2, 2)). wall((0, 2)). 
wall((0, 1)). wall((1, 0)). 
wall((2, 2)). wall((2, 0)). 
wall((2, 2)). wall((2, 0)). 
wall((2, 2)). wall((2, 0)). 
wall((0, 1)). wall((1, 0)). 
wall((0, 1)). wall((1, 0)). 
wall((0, 1)). wall((1, 0)). 
wall((2, 2)). wall((0, 2)). 
wall((2, 3)). wall((0, 3)). 
wall((1, 5)). wall((0, 4)). 
wall((1, 5)). wall((0, 4)). 
wall((1, 5)). wall((0, 4)). 
wall((2, 5)). wall((2, 3)). 
wall((2, 5)). wall((2, 3)). 
wall((1, 5)). wall((0, 4)). 
wall((2, 3)). wall((0, 3)). 
wall((2, 3)). wall((0, 3)). 
wall((2, 3)). wall((0, 3)). 
wall((2, 3)). wall((0, 3)). 
wall((2, 2)). wall((0, 2)). 
wall((2, 2)). wall((0, 2)). 
wall((2, 2)). wall((0, 2)). 
wall((2, 2)). wall((0, 2)). 
wall((0, 1)). wall((1, 0)). 
wall((0, 1)). wall((1, 0)). 
wall((0, 1)). wall((1, 0)). 
wall((2, 2)). wall((2, 0)). 
wall((3, 2)). wall((3, 0)). 
wall((3, 2)). wall((3, 0)). 
wall((3, 2)). wall((3, 0)). 
wall((2, 2)). wall((2, 0)). 
wall((2, 2)). wall((2, 0)). 
wall((2, 2)). wall((2, 0)). 
wall((2, 2)). wall((2, 0)). 
wall((1, 5)). wall((0, 4)). 
wall((1, 5)). wall((0, 4)). 
wall((1, 5)). wall((0, 4)). 
wall((1, 5)). wall((0, 4)). 
wall((2, 5)). wall((2, 3)). 
wall((1, 5)). wall((0, 4)). 
wall((2, 3)). wall((0, 3)). 
wall((2, 2)). wall((0, 2)). 
wall((2, 2)). wall((0, 2)). 
wall((2, 2)). wall((0, 2)). 
wall((2, 2)). wall((0, 2)). 
wall((0, 1)). wall((1, 0)). 
wall((2, 2)). wall((2, 0)). 
wall((3, 2)). wall((3, 0)). 
wall((4, 2)). wall((4, 0)). 
wall((4, 2)). wall((4, 0)). 
wall((4, 2)). wall((4, 0)). 
wall((3, 2)). wall((3, 0)). 
wall((3, 2)). wall((3, 0)). 
wall((3, 2)). wall((3, 0)). 
wall((1, 5)). wall((0, 4)). 
wall((1, 5)). wall((0, 4)). 
wall((2, 5)). wall((2, 3)). 
wall((2, 5)). wall((2, 3)). 
wall((3, 5)). 
wall((3, 5)). 
wall((4, 3)). wall((2, 3)). wall((3, 2)). 
wall((4, 3)). wall((2, 3)). wall((3, 2)). 
wall((4, 3)). wall((2, 3)). wall((3, 2)). 
wall((4, 3)). wall((2, 3)). wall((3, 2)). 
wall((4, 3)). wall((2, 3)). wall((3, 2)). 
wall((3, 5)). 
wall((4, 5)). wall((4, 3)). 
wall((4, 5)). wall((4, 3)). 
wall((4, 5)). wall((4, 3)). 
wall((3, 5)). 
wall((3, 5)). 
wall((2, 5)). wall((2, 3)). 
wall((3, 5)). 
wall((3, 5)). 
wall((1, 5)). wall((0, 4)). 
wall((2, 5)). wall((2, 3)). 
wall((2, 5)). wall((2, 3)). 
wall((2, 5)). wall((2, 3)). 
wall((2, 5)). wall((2, 3)). 
wall((3, 5)). 
wall((4, 5)). wall((4, 3)). 
wall((6, 4)). wall((5, 5)). 
wall((6, 3)). wall((4, 3)). wall((5, 2)). 
wall((6, 3)). wall((4, 3)). wall((5, 2)). 
wall((6, 4)). wall((5, 5)). 
wall((6, 4)). wall((5, 5)). 
wall((4, 5)). wall((4, 3)). 
wall((4, 5)). wall((4, 3)). 
wall((6, 4)). wall((5, 5)). 
wall((6, 4)). wall((5, 5)). 
wall((6, 4)). wall((5, 5)). 
wall((6, 3)). wall((4, 3)). wall((5, 2)). 
wall((6, 3)). wall((4, 3)). wall((5, 2)). 
wall((6, 3)). wall((4, 3)). wall((5, 2)). 
wall((1, 5)). wall((0, 4)). 
wall((2, 3)). wall((0, 3)). 
wall((1, 5)). wall((0, 4)). 
wall((1, 5)). wall((0, 4)). 
wall((1, 5)). wall((0, 4)). 
wall((2, 5)). wall((2, 3)). 
wall((1, 5)). wall((0, 4)). 
wall((2, 3)). wall((0, 3)). 
wall((2, 3)). wall((0, 3)). 
wall((2, 3)). wall((0, 3)). 
wall((2, 3)). wall((0, 3)). 
wall((2, 2)). wall((0, 2)). 
wall((2, 3)). wall((0, 3)). 
wall((2, 2)). wall((0, 2)). 
wall((0, 1)). wall((1, 0)). 
wall((0, 1)). wall((1, 0)). 
wall((2, 2)). wall((0, 2)). 
wall((2, 2)). wall((0, 2)). 
wall((2, 2)). wall((0, 2)). 
wall((2, 2)). wall((0, 2)). 
wall((1, 5)). wall((0, 4)). 
wall((1, 5)). wall((0, 4)). 
wall((2, 3)). wall((0, 3)). 
wall((2, 3)). wall((0, 3)). 
wall((2, 3)). wall((0, 3)). 
wall((2, 3)). wall((0, 3)). 
wall((2, 2)). wall((0, 2)). 
wall((0, 1)). wall((1, 0)). 
wall((0, 1)). wall((1, 0)). 
wall((0, 1)). wall((1, 0)). 
wall((2, 2)). wall((2, 0)). 
wall((2, 2)). wall((2, 0)). 
wall((3, 2)). wall((3, 0)). 
wall((2, 2)). wall((2, 0)). 
wall((2, 2)). wall((2, 0)). 
wall((2, 2)). wall((2, 0)). 
wall((2, 2)). wall((2, 0)). 
wall((0, 1)). wall((1, 0)). 
wall((2, 2)). wall((2, 0)). 
wall((3, 2)). wall((3, 0)). 
wall((1, 5)). wall((0, 4)). 
wall((1, 5)). wall((0, 4)). 
wall((1, 5)). wall((0, 4)). 
wall((2, 5)). wall((2, 3)). 
wall((3, 5)). 
wall((4, 5)). wall((4, 3)). 
wall((6, 4)). wall((5, 5)). 
wall((6, 4)). wall((5, 5)). 
wall((6, 4)). wall((5, 5)). 
wall((6, 4)). wall((5, 5)). 
wall((4, 5)). wall((4, 3)). 
wall((4, 5)). wall((4, 3)). 
wall((4, 5)). wall((4, 3)). 
wall((4, 5)). wall((4, 3)). 
wall((6, 4)). wall((5, 5)). 
wall((6, 3)). wall((4, 3)). wall((5, 2)). 
wall((6, 3)). wall((4, 3)). wall((5, 2)). 
wall((6, 4)). wall((5, 5)). 
wall((6, 4)). wall((5, 5)). 
wall((4, 5)). wall((4, 3)). 
wall((1, 5)). wall((0, 4)). 
wall((2, 3)). wall((0, 3)). 
wall((1, 5)). wall((0, 4)). 
wall((2, 5)). wall((2, 3)). 
wall((2, 5)). wall((2, 3)). 
wall((2, 5)). wall((2, 3)). 
wall((2, 5)). wall((2, 3)). 
wall((3, 5)). 
wall((3, 5)). 
wall((3, 5)). 
wall((4, 3)). wall((2, 3)). wall((3, 2)). 
wall((4, 3)). wall((2, 3)). wall((3, 2)). 
wall((4, 3)). wall((2, 3)). wall((3, 2)). 
wall((4, 3)). wall((2, 3)). wall((3, 2)). 
wall((3, 5)). 
wall((4, 5)). wall((4, 3)). 
wall((6, 4)). wall((5, 5)). 
wall((6, 4)). wall((5, 5)). 
wall((6, 4)). wall((5, 5)). 
wall((6, 3)). wall((4, 3)). wall((5, 2)). 
wall((1, 5)). wall((0, 4)). 
wall((1, 5)). wall((0, 4)). 
wall((2, 5)). wall((2, 3)). 
wall((3, 5)). 
wall((2, 5)). wall((2, 3)). 
wall((1, 5)). wall((0, 4)). 
wall((2, 3)). wall((0, 3)). 
wall((2, 3)). wall((0, 3)). 
wall((2, 3)). wall((0, 3)). 
wall((2, 3)). wall((0, 3)). 
wall((2, 2)). wall((0, 2)). 
wall((0, 1)). wall((1, 0)). 
wall((0, 1)). wall((1, 0)). 
wall((0, 1)). wall((1, 0)). 
wall((0, 1)). wall((1, 0)). 
wall((2, 2)). wall((0, 2)). 
wall((2, 2)). wall((0, 2)). 
wall((2, 2)). wall((0, 2)). 
wall((2, 2)). wall((0, 2)). 
wall((2, 3)). wall((0, 3)). 
wall((1, 5)). wall((0, 4)). 
wall((1, 5)). wall((0, 4)). 
wall((1, 5)). wall((0, 4)). 
wall((2, 5)). wall((2, 3)). 
wall((2, 5)). wall((2, 3)). 
wall((2, 5)). wall((2, 3)). 
wall((2, 5)). wall((2, 3)). 
wall((3, 5)). 
wall((4, 3)). wall((2, 3)). wall((3, 2)). 
wall((4, 3)). wall((2, 3)). wall((3, 2)). 
wall((4, 3)). wall((2, 3)). wall((3, 2)). 
wall((4, 3)). wall((2, 3)). wall((3, 2)). 
wall((4, 3)). wall((2, 3)). wall((3, 2)). 
wall((3, 5)). 
wall((3, 5)). 
wall((3, 5)). 
wall((4, 5)). wall((4, 3)). 
wall((4, 5)). wall((4, 3)). 
wall((4, 5)). wall((4, 3)). 
wall((4, 5)). wall((4, 3)). 
wall((1, 5)). wall((0, 4)). 
wall((2, 3)). wall((0, 3)). 
wall((1, 5)). wall((0, 4)). 
wall((1, 5)). wall((0, 4)). 
wall((2, 5)). wall((2, 3)). 
wall((3, 5)). 
wall((4, 3)). wall((2, 3)). wall((3, 2)). 
wall((4, 3)). wall((2, 3)). wall((3, 2)). 
wall((4, 3)). wall((2, 3)). wall((3, 2)). 
wall((4, 3)). wall((2, 3)). wall((3, 2)). 
wall((4, 3)). wall((2, 3)). wall((3, 2)). 
wall((3, 5)). 
wall((4, 5)). wall((4, 3)). 
wall((3, 5)). 
wall((3, 5)). 
wall((3, 5)). 
wall((2, 5)). wall((2, 3)). 
wall((3, 5)). 
wall((4, 3)). wall((2, 3)). wall((3, 2)). 
wall((4, 3)). wall((2, 3)). wall((3, 2)). 
wall((1, 5)). wall((0, 4)). 
wall((1, 5)). wall((0, 4)). 
wall((1, 5)). wall((0, 4)). 
wall((2, 5)). wall((2, 3)). 
wall((2, 5)). wall((2, 3)). 
wall((2, 5)). wall((2, 3)). 
wall((2, 5)). wall((2, 3)). 
wall((1, 5)). wall((0, 4)). 
wall((2, 3)). wall((0, 3)). 
wall((2, 3)). wall((0, 3)). 
wall((2, 3)). wall((0, 3)). 
wall((2, 3)). wall((0, 3)). 
wall((2, 2)). wall((0, 2)). 
wall((0, 1)). wall((1, 0)). 
wall((2, 2)). wall((2, 0)). 
wall((3, 2)). wall((3, 0)). 
wall((3, 2)). wall((3, 0)). 
wall((4, 2)). wall((4, 0)). 
