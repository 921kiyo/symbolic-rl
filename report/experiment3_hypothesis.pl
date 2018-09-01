state_after(V0):-adjacent(right, V0, V1), state_before(V1),
                 action(right), not wall(V0).
state_after(V0):-adjacent(left, V0, V1), state_before(V1),
                 action(left), not wall(V0).
state_after(V1):-adjacent(down, V0, V1), state_before(V0),
                 action(up), not wall(V1).
state_after(V0):-adjacent(down, V0, V1), state_before(V1),
                 action(down), not wall(V0).
state_after(V1):-adjacent(right, V0, V1), state_before(V1),
                 action(right), wall(V0).
state_after(V1):-adjacent(left, V0, V1), state_before(V1),
                 action(left), wall(V0).
state_after(V0):-adjacent(up, V0, V1), state_before(V0),
                 action(down), wall(V1).
state_after(V1):-adjacent(up, V0, V1), state_before(V1),
                 action(up), wall(V0).
 
