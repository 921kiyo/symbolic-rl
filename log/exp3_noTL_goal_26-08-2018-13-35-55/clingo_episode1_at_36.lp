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
%START
state_at(V0, T+1) :- time(T), state_at(V0, T), action(down, T).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), action(right, T), wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), wall(V1).

%END
%AAA
state_at((13, 7), 36).
%BBB
%CCC
time(36..250).
%DDD
%ANSWER SETS

%state_at((13,7),36)
%state_at((0,6),38)
%action(right,37)
%state_at((0,6),39)
%action(right,38)
%state_at((0,6),40)
%action(right,39)
%state_at((1,6),38)
%state_at((1,6),39)
%state_at((1,6),40)
%state_at((2,6),38)
%state_at((2,6),39)
%state_at((2,6),40)
%state_at((4,6),38)
%state_at((4,6),39)
%state_at((4,6),40)
%state_at((4,6),42)
%state_at((6,6),38)
%state_at((6,6),39)
%state_at((6,6),40)
%state_at((6,6),42)
%state_at((7,6),38)
%state_at((7,6),39)
%state_at((7,6),40)
%state_at((8,6),38)
%state_at((8,6),39)
%state_at((8,6),40)
%state_at((9,6),38)
%state_at((9,6),39)
%state_at((9,6),40)
%state_at((10,6),38)
%state_at((10,6),39)
%state_at((10,6),40)
%state_at((11,6),38)
%state_at((11,6),39)
%state_at((11,6),40)
%state_at((13,7),38)
%state_at((13,7),39)
%state_at((13,7),40)
%state_at((0,8),38)
%state_at((0,8),39)
%state_at((0,8),40)
%state_at((0,8),41)
%state_at((0,8),42)
%state_at((0,8),43)
%state_at((0,8),44)
%state_at((0,8),45)
%state_at((1,8),38)
%state_at((1,8),39)
%state_at((1,8),40)
%state_at((2,8),38)
%state_at((2,8),39)
%state_at((2,8),40)
%state_at((3,8),38)
%state_at((3,8),39)
%state_at((3,8),40)
%state_at((4,8),38)
%state_at((4,8),39)
%state_at((4,8),40)
%state_at((5,8),38)
%state_at((5,8),39)
%state_at((5,8),40)
%state_at((6,8),38)
%state_at((6,8),39)
%state_at((6,8),40)
%state_at((7,8),38)
%state_at((7,8),39)
%state_at((7,8),40)
%state_at((8,8),38)
%state_at((8,8),39)
%state_at((8,8),40)
%state_at((9,8),38)
%state_at((9,8),39)
%state_at((9,8),40)
%state_at((10,8),38)
%state_at((10,8),39)
%state_at((10,8),40)
%state_at((11,8),38)
%state_at((11,8),39)
%state_at((11,8),40)
%state_at((12,8),38)
%state_at((12,8),39)
%state_at((12,8),40)
%state_at((12,7),45)
%action(up,44)
%state_at((12,7),44)
%action(up,43)
%state_at((12,7),43)
%action(up,42)
%state_at((12,7),42)
%action(up,41)
%state_at((12,7),41)
%action(up,40)
%state_at((11,7),45)
%state_at((11,7),44)
%state_at((11,7),43)
%state_at((11,7),42)
%state_at((11,7),41)
%state_at((10,7),45)
%state_at((10,7),44)
%state_at((10,7),43)
%state_at((10,7),42)
%state_at((10,7),41)
%state_at((9,7),45)
%state_at((9,7),44)
%state_at((9,7),43)
%state_at((9,7),42)
%state_at((9,7),41)
%state_at((8,7),45)
%state_at((8,7),44)
%state_at((8,7),43)
%state_at((8,7),42)
%state_at((8,7),41)
%state_at((7,7),45)
%state_at((7,7),44)
%state_at((7,7),43)
%state_at((7,7),42)
%state_at((7,7),41)
%state_at((6,7),41)
%state_at((5,7),45)
%state_at((5,7),44)
%state_at((5,7),43)
%state_at((5,7),42)
%state_at((5,7),41)
%state_at((4,7),41)
%state_at((3,7),45)
%state_at((3,7),44)
%state_at((3,7),43)
%state_at((3,7),42)
%state_at((3,7),41)
%state_at((2,7),45)
%state_at((2,7),44)
%state_at((2,7),43)
%state_at((2,7),42)
%state_at((2,7),41)
%state_at((1,7),45)
%state_at((1,7),44)
%state_at((1,7),43)
%state_at((1,7),42)
%state_at((1,7),41)
%state_at((13,6),41)
%state_at((11,5),41)
%state_at((10,5),41)
%state_at((9,5),41)
%state_at((8,5),41)
%state_at((7,5),41)
%state_at((6,5),43)
%state_at((6,5),41)
%state_at((4,5),43)
%state_at((4,5),41)
%state_at((2,5),41)
%state_at((1,5),41)
%state_at((0,5),41)
%state_at((13,6),37)
%action(up,36)
%state_at((0,4),42)
%state_at((1,4),42)
%state_at((2,4),42)
%state_at((4,4),42)
%state_at((4,4),44)
%state_at((6,4),42)
%state_at((6,4),44)
%state_at((7,4),42)
%state_at((8,4),42)
%state_at((9,4),42)
%state_at((10,4),42)
%state_at((11,4),42)
%state_at((13,5),42)
%state_at((14,6),38)
%state_at((13,4),43)
%state_at((11,3),43)
%state_at((10,3),43)
%state_at((9,3),43)
%state_at((8,3),43)
%state_at((7,3),43)
%state_at((6,3),45)
%state_at((6,3),43)
%state_at((4,3),45)
%state_at((4,3),43)
%state_at((2,3),43)
%state_at((1,3),43)
%state_at((0,3),43)
%state_at((15,6),39)
%state_at((0,2),44)
%state_at((1,2),44)
%state_at((2,2),44)
%state_at((4,2),44)
%state_at((6,2),44)
%state_at((7,2),44)
%state_at((8,2),44)
%state_at((9,2),44)
%state_at((10,2),44)
%state_at((11,2),44)
%state_at((13,3),44)
%state_at((16,6),40)
%state_at((16,5),41)
%state_at((13,2),45)
%state_at((11,1),45)
%state_at((10,1),45)
%state_at((9,1),45)
%state_at((8,1),45)
%state_at((7,1),45)
%state_at((6,1),45)
%state_at((4,1),45)
%state_at((2,1),45)
%state_at((1,1),45)
%state_at((0,1),45)
%state_at((16,4),42)
%state_at((16,3),43)
%state_at((16,2),44)
%state_at((16,1),45)
