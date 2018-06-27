#pos({state_after((1,2), 2)}, {}, {}).

cell((1..6, 1..6)).
time(1..5).

#modeh(state_after(var(cell), var(time))).
#modeb(1, cell(var(cell))).
#modeb(1, time(var(time))).
