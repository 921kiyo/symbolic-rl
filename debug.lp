
:- not state_after((1,2), 2).

state_after(X, T) :- cell(X), time(T).

cell((1..6, 1..6)).
time(1..20).
