% #pos({state_after((1,2), 2)}, {}, {}).

:- not state_after((1,2), 2).

state_after((X,Y), T).

cell((1..6, 1..6)).
time(1..20).

% #modeh(state_after(var(cell), var(time))).
