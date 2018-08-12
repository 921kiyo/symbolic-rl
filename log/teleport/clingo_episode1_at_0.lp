1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..18, 0..10)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

wall((1, 10)).

wall((0, 9)).

wall((1, 8)).

wall((2, 10)).

wall((2, 8)).
link_start((3,9)). link_dest((17,8)). 

wall((18, 8)).

wall((16, 8)).

wall((17, 7)).

wall((18, 9)).

wall((17, 10)).

wall((16, 10)).

wall((15, 10)).

wall((15, 8)).

wall((14, 10)).

wall((14, 8)).

wall((13, 10)).

wall((12, 8)).

wall((13, 7)).

wall((12, 10)).
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
 goal(T):- state_at((11, 9), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.
%AAA
state_at((1, 9), 0).
%BBB
%CCC
time(0..250).
%DDD
%ANSWER SETS

%state_at((1,9),0)
%state_at((2,9),1)
%action(right,0)
%state_at((3,9),2)
%action(right,1)
%state_at((4,9),3)
%action(right,2)
%state_at((17,8),3)
%action(down,3)
%state_at((17,9),4)
%state_at((4,10),4)
%action(left,4)
%state_at((3,10),5)
%state_at((16,9),5)
%state_at((3,10),6)
%action(left,5)
%state_at((15,9),6)
%action(left,6)
%state_at((3,10),7)
%state_at((14,9),7)
%state_at((3,10),8)
%action(left,7)
%state_at((13,9),8)
%action(left,8)
%state_at((3,10),9)
%state_at((12,9),9)
%action(left,9)
%state_at((3,10),10)
%state_at((11,9),10)
