#pos({state_after((4,4))},  % Inclusion
     {state_after((4,3)),state_after((3,4)),% Exclusion
     state_after((5,4)),state_after((4,5))},
    {state_before((4,4)).action(right). % Context
    wall((5,4)).wall((4,5)).}).
