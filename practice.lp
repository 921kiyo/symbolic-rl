state_at((1,1),1).
state_at((1,2),2).
state_at((1,1),2).

:- state_at(V1, T), state_at(V2, T), V1 != V2.
