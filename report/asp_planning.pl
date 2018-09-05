% Hypotheses are given from ILASP.

% Choice rule for choosing an action at each time T.
1{action(down,T);
  action(up,T);
  action(right,T);
  action(left,T)}1 :-time(T), not finished(T).

% T is the current time step, T_max is the maximum time steps.
% The agent can do a planning between these time steps.
time(T..T_max).

% Check whether the agent reaches a terminal state.
finished(T):- goal(T2), time(T), T >= T2.
goal(T):- state_at((X_terminal, Y_terminal), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

% walls are cumulatively collected from
% context dependent examples
wall((X_1, Y_1)).
wall((X_2, Y_2)).
...

% Current state of the agent at time T,
% which is the start of the planning
state_at((X_start, Y_start), T).

% The output of ASP should include only state_at and action
#show state_at/2.
#show action/2.

% Find a shortest path to a terminal state, thus
% minimise the number of actions to reach the terminal state.
#minimize{1, X, T: action(X,T)}.

% The size of the maze
cell((0..X_width, 0..Y_height)).

adjacent(right,(X+1,Y),(X,Y)):-cell((X,Y)),cell((X+1,Y)).
adjacent(left,(X,Y),(X+1,Y)):-cell((X,Y)),cell((X+1,Y)).
adjacent(down,(X,Y+1),(X,Y)):-cell((X,Y)),cell((X,Y+1)).
adjacent(up,(X,Y),(X,Y+1)):-cell((X,Y)),cell((X,Y+1)).

