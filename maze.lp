cell((0..6, 0..5)).
% Adjacent definition is given
adjacent(right,(X+1,Y),(X,Y)):- cell((X,Y)), cell((X+1,Y)). % (X+1,Y) is right next to (X,Y)
adjacent(left,(X,Y), (X+1,Y)):- cell((X,Y)), cell((X+1,Y)).
adjacent(up,(X,Y+1),(X,Y)):- cell((X,Y)), cell((X,Y+1)). % (X,Y+1) is above next to (X,Y)
adjacent(down,(X,Y),(X,Y+1)):- cell((X,Y)), cell((X,Y+1)).

% Let's say the goal is at X=1,Y=3
goal:- state_after((1,3)).
:- not goal.

% Starting point
state_before((1,5)).
state_after((1,2)):- state_before((1,3)), action(down).
state_after((1,1)):- state_before((1,2)), action(down).
state_after((1,1)):- state_before((1,1)), action(non).

% Learnt Hypothesis
state_after(V1) :- adjacent(up, V0, V1), action(up), wall(V0).
state_after(V0) :- adjacent(up, V0, V1), action(down), wall(V1).
state_after(V0) :- state_before(V0), action(non).
state_after(V1) :- adjacent(right, V0, V1), action(right), wall(V0).
state_after(V0) :- adjacent(right, V0, V1), action(left), wall(V1).
state_after(V0) :- adjacent(right, V0, V1), state_before(V1), action(right), not wall(V0).
state_after(V0) :- adjacent(left, V0, V1), state_before(V1), action(left), not wall(V0).
state_after(V0) :- adjacent(down, V0, V1), state_before(V1), action(down), not wall(V0).
state_after(V0) :- adjacent(up, V0, V1), state_before(V1), action(up), not wall(V0).

% TODO The agent cannot be at the same time.
% TODO The agent can only take an action at a time

action(down).
action(up).
action(right).
action(left).
action(non).

state_before((X,Y)):- int(X), int(Y), not wall((X,Y)).
int(1). int(2). int(3). int(4). int(5).

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
