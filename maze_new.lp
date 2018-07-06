cell((0..6, 0..5)).
% Adjacent definition is given
% adjacent(right,(X,Y),(X+1,Y)):- cell((X,Y)), cell((X+1,Y)). % (X+1,Y) is right next to (X,Y)
% adjacent(left,(X+1,Y), (X,Y)):- cell((X,Y)), cell((X+1,Y)).
% adjacent(up,(X,Y),(X,Y+1)):- cell((X,Y)), cell((X,Y+1)). % (X,Y+1) is above next to (X,Y)
% adjacent(down,(X,Y+1),(X,Y)):- cell((X,Y)), cell((X,Y+1)).

% (X+1,Y) is right next to (X,Y)
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
% (X,Y+1) is above next to (X,Y)
adjacent(up, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(down,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).


% Starting point
state_at((1,1),1).

% Learnt Hypothesis
% state_at(V1, T+1):- adjacent(up, V0, V1), state_at(V0, T), time(T), action(up, T).
% state_at(V1, T+1):- adjacent(down, V0, V1), state_at(V0, T), time(T), action(down, T).
% state_at(V1, T+1):- adjacent(right, V0, V1), state_at(V0, T), time(T), action(right, T).
% state_at(V1, T+1):- adjacent(left, V0, V1), state_at(V0, T), time(T), action(left, T).

% ILASP H
% state_after(V1) :- adjacent(up, V0, V1), action(up), wall(V0).
% state_after(V0) :- adjacent(up, V0, V1), action(down), wall(V1).
% state_after(V0) :- state_before(V0), action(non).
% state_after(V1) :- adjacent(right, V0, V1), action(right), wall(V0).
% state_after(V0) :- adjacent(right, V0, V1), action(left), wall(V1).
% state_after(V0) :- adjacent(right, V0, V1), state_before(V1), action(right), not wall(V0).
% state_after(V0) :- adjacent(left, V0, V1), state_before(V1), action(left), not wall(V0).
% state_after(V0) :- adjacent(down, V0, V1), state_before(V1), action(down), not wall(V0).
% state_after(V0) :- adjacent(up, V0, V1), state_before(V1), action(up), not wall(V0).

% Conversion from ILASP to state_at((X,Y), T).
% state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), action(up, T), wall(V0).
% state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), action(down, T), wall(V1).
% state_at(V0, T+1) :- time(T), state_at(V0, T), action(non, T).
% state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), action(right, T), wall(V0).
% state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), action(left, T), wall(V1).

% These are the basic notions of actions
% state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
% state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), not wall(V0).
% state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).

state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), not wall(V0).

% state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), action(up, T), wall(V0).

% TODO WALLS
% TODO Shortest Path
% TODO Update H and B
% Reduce unnecessary path


time(1..4).
% #minimize[goal=1].

% The agent cannot be in two different places at the same time.
:- state_at(V1, T), state_at(V2, T), V1 != V2.

% Specify the goal of the planning
finished(T):- goal(T2), time(T), T >= T2.
goal(T):- state_at((1,3), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

% Take only one action at a time
1{action(down, T); action(up, T); action(right, T); action(left, T); action(non, T)}1 :- time(T).

#show state_at/2. 
#show action/2.

% #minimize{1 : goal(T)=time(T)}.
#minimize{1, X, T: action(X,T); 1, X, T: state_at(X,T)}.

% Collected wall information (Refundant so far)
% wall((1, 5)). wall((0, 4)).
wall((2, 3)). wall((0, 3)).
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


