action(down).
action(up).

state_after((1,3)):- state_before((1,4)), action(down).
state_after((1,2)):- state_before((1,3)), action(down).
state_after((1,1)):- state_before((1,2)), action(down).
state_after((1,1)):- state_before((1,1)), action(down).
state_after((1,2)):- state_before((1,1)), action(up).
state_after((1,3)):- state_before((1,2)), action(up).
state_after((1,4)):- state_before((1,3)), action(up).
state_after((1,4)):- state_before((1,4)), action(up).

% Where the agent can be from state_after and state_before.

% start(1,4).

% goal :- (9,9).

% :- not goal.

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

% (X+1,Y) is right next to (X,Y)
adjacent(right,(X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).

adjacent(left,(X,Y), (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
% (X,Y+1) is above next to (X,Y)
adjacent(up,(X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).

adjacent(down,(X,Y),(X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

% Wall information
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
