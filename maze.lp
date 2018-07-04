wall((1,5)).

% (X+1,Y) is right next to (X,Y)
% adjacent(right,(X+1,Y),(X,Y)):- cell((X,Y)), cell((X+1,Y)).
%
% adjacent(left,(X,Y), (X+1,Y)):- cell((X,Y)), cell((X+1,Y)).
% % (X,Y+1) is above next to (X,Y)
% adjacent(up,(X,Y+1),(X,Y)):- cell((X,Y)), cell((X,Y+1)).
%
% adjacent(down,(X,Y),(X,Y+1)):- cell((X,Y)), cell((X,Y+1)).

state_after((1,3)):- state_before((1,4)), action(down).
state_after((1,2)):- state_before((1,3)), action(down).
state_after((1,1)):- state_before((1,2)), action(down).

state_after((X,Y)):- state_before((X+1,Y)).
action(down).
action(up).

% state_before((X,Y)):- possible_states((X,Y)).
state_before((X,Y)):- int(X), int(Y), not wall((X,Y)).

% state_before(1,4).
% possible_states((X,Y)):- int(X), int(Y), not wall((X,Y)).
% possible_states((X,Y)):- int(X), int(Y), X < 5, Y < 6, not wall((X,Y)).

int(1). int(2). int(3). int(4). int(5).

% state_after(X):- state_before(X).
