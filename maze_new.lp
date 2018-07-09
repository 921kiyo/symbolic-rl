% TODO should this be given? Or set an arbitorary large number??
cell((0..6, 0..5)).

% Adjacent definition is given
% (X+1,Y) is right next to (X,Y)
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
% (X,Y+1) is above next to (X,Y)
adjacent(up, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(down,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

% Starting point
state_at((1,1),1).

% ILASP H before syntax conversion
% state_after(V1) :- adjacent(up, V0, V1), action(up), wall(V0).
% state_after(V0) :- adjacent(up, V0, V1), action(down), wall(V1).
% state_after(V0) :- state_before(V0), action(non).
% state_after(V1) :- adjacent(right, V0, V1), action(right), wall(V0).
% state_after(V0) :- adjacent(right, V0, V1), action(left), wall(V1).
% state_after(V0) :- adjacent(right, V0, V1), state_before(V1), action(right), not wall(V0).
% state_after(V0) :- adjacent(left, V0, V1), state_before(V1), action(left), not wall(V0).
% state_after(V0) :- adjacent(down, V0, V1), state_before(V1), action(down), not wall(V0).
% state_after(V0) :- adjacent(up, V0, V1), state_before(V1), action(up), not wall(V0).

% ILASP learnt H after syntax conversion from state_before/after to state_at + time stamp.
% Below learnt Hs are useless
% state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), action(up, T), wall(V0).
% state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), action(down, T), wall(V1).
% state_at(V0, T+1) :- time(T), state_at(V0, T), action(non, T).
% state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), action(right, T), wall(V0).
% state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), action(left, T), wall(V1).

% Below 4 Hs are useful
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), not wall(V0).

% Time stamp should be the same as the maximum number of actions an agent can take, which is defined in RL Q-learning
time(1..10).

% The agent cannot be in two different places at the same time.
:- state_at(V1, T), state_at(V2, T), V1 != V2.

% Specify the goal, which can be found in RL exploration.
finished(T):- goal(T2), time(T), T >= T2.
goal(T):- state_at((2,2), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

% Take only one action at a time
1{action(down, T); action(up, T); action(right, T); action(left, T); action(non, T)}1 :- time(T), not finished(T).

% These #show restrict what will appear in the answer sets. I am only interested in state and action
#show state_at/2.
#show action/2.

% Find the shortest path using optimization statement
% TODO This optimisation statement may not be quite right, but works fine for now.
% #minimize{1, X, T: action(X,T); 1, X, T: state_at(X,T)}.
#minimize{1, X, T: action(X,T)}.

% Collected wall information (Refundant so far)
% wall((1, 5)). wall((0, 4)).
% wall((2, 3)). wall((0, 3)).
% wall((2, 2)). wall((0, 2)).
% wall((0, 1)). wall((1, 0)).
% wall((0, 1)). wall((1, 0)).
% wall((2, 2)). wall((0, 2)).
% wall((2, 3)). wall((0, 3)).
% wall((1, 5)). wall((0, 4)).
% wall((1, 5)). wall((0, 4)).
% wall((1, 5)). wall((0, 4)).
% wall((2, 5)). wall((2, 3)).
% wall((2, 5)). wall((2, 3)).
% wall((2, 5)). wall((2, 3)).
% wall((1, 5)). wall((0, 4)).
% wall((2, 3)). wall((0, 3)).
% wall((2, 3)). wall((0, 3)).
% wall((2, 3)). wall((0, 3)).
% wall((2, 3)). wall((0, 3)).
% wall((2, 2)). wall((0, 2)).
% wall((2, 2)). wall((0, 2)).
% wall((1, 5)). wall((0, 4)).
% wall((1, 5)). wall((0, 4)).
% wall((1, 5)). wall((0, 4)).
% wall((1, 5)). wall((0, 4)).
% wall((2, 5)). wall((2, 3)).
