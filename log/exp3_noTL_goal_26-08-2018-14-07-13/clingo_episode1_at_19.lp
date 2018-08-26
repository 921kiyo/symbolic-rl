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
%START
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), action(down, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), wall(V1).

%END
%AAA
state_at((4, 6), 19).
%BBB
%CCC
time(19..250).
%DDD
%ANSWER SETS

%state_at((4,6),19)
%state_at((4,3),20)
%action(down,19)
%state_at((5,4),20)
%state_at((1,5),20)
%state_at((2,5),20)
%state_at((2,5),21)
%state_at((3,5),20)
%state_at((3,5),21)
%state_at((3,5),22)
%state_at((5,5),20)
%state_at((0,6),20)
%state_at((0,6),21)
%state_at((0,6),22)
%state_at((0,6),23)
%state_at((0,6),24)
%state_at((0,6),25)
%state_at((0,6),26)
%state_at((0,6),27)
%state_at((0,6),28)
%state_at((0,6),29)
%state_at((0,6),30)
%state_at((0,6),31)
%state_at((0,6),32)
%state_at((1,7),20)
%state_at((2,7),20)
%state_at((2,7),21)
%state_at((3,7),20)
%state_at((3,7),21)
%state_at((3,7),22)
%state_at((4,7),20)
%state_at((4,7),21)
%state_at((4,7),22)
%state_at((4,7),23)
%state_at((5,7),20)
%state_at((5,7),21)
%state_at((5,7),22)
%state_at((5,7),23)
%state_at((5,7),24)
%action(right,31)
%action(right,30)
%action(right,29)
%action(right,28)
%action(right,27)
%action(right,26)
%action(right,25)
%action(right,24)
%action(right,23)
%action(right,22)
%action(right,21)
%action(right,20)
%action(up,33)
%action(up,32)
%state_at((0,5),33)
%state_at((5,3),21)
%state_at((6,7),25)
%state_at((6,7),24)
%state_at((6,7),23)
%state_at((6,7),22)
%state_at((6,7),21)
%state_at((6,5),21)
%state_at((4,5),34)
%state_at((4,5),33)
%state_at((4,5),32)
%state_at((4,5),31)
%state_at((4,5),30)
%state_at((4,5),29)
%state_at((4,5),28)
%state_at((4,5),27)
%state_at((4,5),26)
%state_at((4,5),25)
%state_at((4,5),24)
%state_at((4,5),23)
%state_at((4,5),22)
%state_at((4,5),21)
%state_at((6,4),21)
%state_at((6,3),22)
%state_at((0,4),34)
%state_at((7,4),22)
%state_at((7,5),22)
%state_at((7,7),22)
%state_at((7,7),23)
%state_at((7,7),24)
%state_at((7,7),25)
%state_at((7,7),26)
%state_at((7,3),23)
%state_at((8,7),27)
%state_at((8,7),26)
%state_at((8,7),25)
%state_at((8,7),24)
%state_at((8,7),23)
%state_at((8,5),23)
%state_at((8,4),23)
%state_at((8,3),24)
%state_at((9,4),24)
%state_at((9,5),24)
%state_at((9,7),24)
%state_at((9,7),25)
%state_at((9,7),26)
%state_at((9,7),27)
%state_at((9,7),28)
%state_at((9,3),25)
%state_at((10,7),29)
%state_at((10,7),28)
%state_at((10,7),27)
%state_at((10,7),26)
%state_at((10,7),25)
%state_at((10,5),25)
%state_at((10,4),25)
%state_at((10,3),26)
%state_at((11,4),26)
%state_at((11,5),26)
%state_at((11,7),26)
%state_at((11,7),27)
%state_at((11,7),28)
%state_at((11,7),29)
%state_at((11,7),30)
%state_at((11,3),27)
%state_at((12,7),31)
%state_at((12,7),30)
%state_at((12,7),29)
%state_at((12,7),28)
%state_at((12,7),27)
%state_at((12,5),27)
%state_at((12,4),27)
%state_at((12,3),28)
%state_at((13,4),28)
%state_at((13,5),28)
%state_at((13,5),34)
%state_at((13,7),28)
%state_at((13,7),29)
%state_at((13,7),30)
%state_at((13,7),31)
%state_at((13,7),32)
%state_at((13,6),33)
%state_at((13,3),29)
%state_at((14,7),32)
%state_at((14,7),31)
%state_at((14,7),30)
%state_at((14,7),29)
%state_at((14,5),34)
%state_at((14,5),29)
%state_at((14,4),29)
%state_at((14,6),33)
%state_at((14,3),30)
%state_at((15,4),30)
%state_at((15,5),30)
%state_at((15,5),34)
%state_at((15,7),30)
%state_at((15,7),31)
%state_at((15,7),32)
%state_at((15,6),33)
%state_at((15,3),31)
%state_at((16,7),32)
%state_at((16,7),31)
%state_at((16,5),34)
%state_at((16,5),31)
%state_at((16,4),31)
%state_at((16,6),33)
%state_at((16,3),32)
%state_at((17,4),32)
%state_at((17,4),33)
%state_at((17,5),32)
%state_at((17,5),34)
%state_at((17,7),32)
%state_at((17,6),33)
%state_at((17,3),34)
%state_at((17,3),33)
%state_at((16,2),33)
%state_at((16,1),34)
%state_at((17,2),34)
