state_after(V1):-link_start(V0), link_dest(V1),
                 state_before(V0).
state_after(V1):-adjacent(left, V0, V1), state_before(V0),
                 action(right), not wall(V1).
state_after(V0):-adjacent(left, V0, V1), state_before(V1),
                 action(left), not wall(V0).
state_after(V1):-adjacent(up, V0, V1), state_before(V0),
                 action(down), not wall(V1).
state_after(V0):-adjacent(up, V0, V1), state_before(V1),
                 action(up), not wall(V0).
state_after(V0):-adjacent(left, V0, V1), state_before(V0),
                 action(right), wall(V1).
state_after(V1):-adjacent(left, V0, V1), state_before(V1),
                 action(left), wall(V0).
state_after(V0):-adjacent(up, V0, V1), state_before(V0),
                 action(down), wall(V1).
state_after(V1):-adjacent(up, V0, V1), state_before(V1),
                 action(up), wall(V0).
