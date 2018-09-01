  state_after(V1):-adjacent(right, V0, V1), state_before(V1),
                     action(right), wall(V0).
