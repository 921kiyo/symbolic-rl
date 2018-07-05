cell((0..6, 0..5)).
% Adjacent definition is given
% adjacent(right,(X+1,Y),(X,Y)):- cell((X,Y)), cell((X+1,Y)). % (X+1,Y) is right next to (X,Y)
% adjacent(left,(X,Y), (X+1,Y)):- cell((X,Y)), cell((X+1,Y)).
adjacent(up,(X,Y+1),(X,Y)):- cell((X,Y)), cell((X,Y+1)). % (X,Y+1) is above next to (X,Y)
adjacent(down,(X,Y),(X,Y+1)):- cell((X,Y)), cell((X,Y+1)).

% Let's say the goal is at X=1,Y=3
goal:- state_at((1,2), 2).
:- not goal.

% Starting point
state_at((1,1),1).

% Learnt Hypothesis
% THIS IS ONE OF NEW HYPOTHESIS (proposed, not sure is ILASP can return this kind of H)
state_at(V1, T+1):- adjacent(up, V0, V1), state_at(V0, T), action(up, T), time(T).
time(1..10).

% TODO The agent cannot be in two different places at the same time.
% TODO Action at a time

action(down, T):- time(T).
action(up, T):- time(T).
action(right, T):- time(T).
action(left, T):- time(T).
action(non, T):- time(T).

% Collected wall information (Refundant so far)
wall((1, 5)). wall((0, 4)).
wall((2, 3)). wall((0, 3)).
wall((2, 2)). wall((0, 2)).
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
wall((2, 3)). wall((0, 3)).
wall((2, 3)). wall((0, 3)).
wall((2, 3)). wall((0, 3)).
wall((2, 3)). wall((0, 3)).
wall((2, 2)). wall((0, 2)).
wall((2, 2)). wall((0, 2)).
wall((1, 5)). wall((0, 4)).
wall((1, 5)). wall((0, 4)).
wall((1, 5)). wall((0, 4)).
wall((1, 5)). wall((0, 4)).
wall((2, 5)). wall((2, 3)).
