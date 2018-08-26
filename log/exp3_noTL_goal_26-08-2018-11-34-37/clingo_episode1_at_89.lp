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
%START
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), action(down, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), wall(V1).

%END

wall((9, 2)).
%AAA
state_at((8, 2), 89).
%BBB
%CCC
time(89..250).
%DDD
%ANSWER SETS

%state_at((8,2),89)
%state_at((0,0),90)
%action(down,89)
%state_at((0,0),91)
%state_at((0,0),92)
%state_at((0,0),93)
%state_at((0,0),94)
%state_at((0,0),95)
%state_at((0,0),96)
%state_at((0,0),97)
%state_at((0,1),90)
%state_at((2,1),90)
%state_at((2,1),92)
%state_at((3,1),90)
%state_at((3,1),91)
%state_at((3,1),93)
%state_at((4,1),90)
%state_at((4,1),91)
%state_at((4,1),92)
%state_at((4,1),94)
%state_at((5,1),90)
%state_at((5,1),91)
%state_at((5,1),92)
%state_at((5,1),93)
%state_at((5,1),95)
%state_at((6,1),90)
%state_at((6,1),91)
%state_at((6,1),92)
%state_at((6,1),93)
%state_at((6,1),94)
%state_at((6,1),96)
%state_at((7,1),90)
%state_at((7,1),91)
%state_at((7,1),92)
%state_at((7,1),93)
%state_at((7,1),94)
%state_at((7,1),95)
%state_at((7,1),97)
%state_at((9,1),90)
%state_at((9,1),92)
%state_at((9,1),93)
%state_at((9,1),94)
%state_at((9,1),95)
%state_at((9,1),96)
%state_at((9,1),97)
%state_at((0,2),90)
%state_at((2,2),90)
%state_at((2,2),91)
%state_at((2,2),92)
%state_at((2,2),93)
%state_at((2,2),94)
%state_at((2,2),95)
%state_at((2,2),96)
%state_at((2,2),97)
%state_at((0,3),90)
%state_at((2,3),90)
%state_at((3,3),90)
%state_at((3,3),91)
%state_at((4,3),90)
%state_at((4,3),91)
%state_at((4,3),92)
%state_at((0,4),90)
%state_at((5,4),90)
%state_at((1,5),90)
%state_at((2,5),90)
%state_at((2,5),91)
%state_at((3,5),90)
%state_at((3,5),91)
%state_at((3,5),92)
%state_at((5,5),90)
%state_at((0,6),90)
%state_at((0,6),91)
%state_at((0,6),92)
%state_at((0,6),93)
%state_at((0,6),94)
%state_at((0,6),95)
%state_at((0,6),96)
%state_at((0,6),97)
%state_at((1,7),90)
%state_at((2,7),90)
%state_at((2,7),91)
%state_at((3,7),90)
%state_at((3,7),91)
%state_at((3,7),92)
%state_at((4,7),90)
%state_at((4,7),91)
%state_at((4,7),92)
%state_at((4,7),93)
%state_at((5,7),90)
%state_at((5,7),91)
%state_at((5,7),92)
%state_at((5,7),93)
%state_at((5,7),94)
%action(right,96)
%action(right,95)
%action(right,94)
%action(right,93)
%action(right,92)
%action(right,91)
%action(right,90)
%state_at((8,3),90)
%state_at((1,4),97)
%state_at((1,4),96)
%state_at((1,4),95)
%state_at((1,4),94)
%state_at((1,4),93)
%state_at((1,4),92)
%state_at((1,4),91)
%state_at((5,3),93)
%state_at((5,3),92)
%state_at((5,3),91)
%state_at((6,7),95)
%state_at((6,7),94)
%state_at((6,7),93)
%state_at((6,7),92)
%state_at((6,7),91)
%state_at((6,5),91)
%state_at((4,5),97)
%state_at((4,5),96)
%state_at((4,5),95)
%state_at((4,5),94)
%state_at((4,5),93)
%state_at((4,5),92)
%state_at((4,5),91)
%state_at((6,4),91)
%state_at((1,3),97)
%state_at((1,3),96)
%state_at((1,3),95)
%state_at((1,3),94)
%state_at((1,3),93)
%state_at((1,3),92)
%state_at((1,3),91)
%state_at((1,2),97)
%state_at((1,2),96)
%state_at((1,2),95)
%state_at((1,2),94)
%state_at((1,2),93)
%state_at((1,2),92)
%state_at((1,2),91)
%state_at((10,1),97)
%state_at((10,1),96)
%state_at((10,1),95)
%state_at((10,1),94)
%state_at((10,1),93)
%state_at((10,1),91)
%state_at((8,1),96)
%state_at((8,1),95)
%state_at((8,1),94)
%state_at((8,1),93)
%state_at((8,1),92)
%state_at((8,1),91)
%state_at((1,1),91)
%state_at((6,3),92)
%state_at((6,3),93)
%state_at((6,3),94)
%state_at((11,1),92)
%state_at((11,1),94)
%state_at((11,1),95)
%state_at((11,1),96)
%state_at((11,1),97)
%state_at((7,4),92)
%state_at((7,5),92)
%state_at((7,7),92)
%state_at((7,7),93)
%state_at((7,7),94)
%state_at((7,7),95)
%state_at((7,7),96)
%state_at((9,3),91)
%state_at((10,3),97)
%state_at((10,3),96)
%state_at((8,3),96)
%state_at((8,3),95)
%state_at((8,3),94)
%state_at((7,3),95)
%state_at((7,3),94)
%state_at((7,3),93)
%state_at((10,3),92)
%state_at((8,7),97)
%state_at((8,7),96)
%state_at((8,7),95)
%state_at((8,7),94)
%state_at((8,7),93)
%state_at((8,5),93)
%state_at((8,4),93)
%state_at((12,1),97)
%state_at((12,1),96)
%state_at((12,1),95)
%state_at((12,1),93)
%state_at((10,4),95)
%state_at((11,3),97)
%state_at((13,1),94)
%state_at((13,1),96)
%state_at((13,1),97)
%state_at((9,4),94)
%state_at((9,5),94)
%state_at((9,7),94)
%state_at((9,7),95)
%state_at((9,7),96)
%state_at((9,7),97)
%state_at((11,3),93)
%state_at((9,3),95)
%state_at((9,3),96)
%state_at((9,3),97)
%state_at((11,4),96)
%state_at((10,5),95)
%state_at((12,3),94)
%state_at((10,7),97)
%state_at((10,7),96)
%state_at((10,7),95)
%state_at((14,1),97)
%state_at((14,1),95)
%state_at((12,4),97)
%state_at((11,5),96)
%state_at((15,1),96)
%state_at((11,7),96)
%state_at((11,7),97)
%state_at((13,3),95)
%state_at((12,5),97)
%state_at((14,3),96)
%state_at((12,7),97)
%state_at((16,1),97)
%state_at((15,3),97)
