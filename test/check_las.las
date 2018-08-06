h
cell((0..6, 0..5)).

% (X+1,Y) is right next to (X,Y)
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).

adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).

% (X,Y+1) is above next to (X,Y)
adjacent(up, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).

adjacent(down,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).



#max_penalty(100).

#constant(action, right).
#constant(action, left).
#constant(action, down).
#constant(action, up).
#constant(action, non).

#pos({state_after((1,3))}, {state_after((2,4)),state_after((1,5)),state_after((0,4)),state_after((1,4))}, {state_before((1,4)). action(down). wall((1, 5)). wall((0, 4)). }).
#pos({state_after((1,2))}, {state_after((2,3)),state_after((1,4)),state_after((0,3)),state_after((1,3))}, {state_before((1,3)). action(down). wall((2, 3)). wall((0, 3)). }).
h
cell((0..6, 0..5)).

% (X+1,Y) is right next to (X,Y)
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).

adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).

% (X,Y+1) is above next to (X,Y)
adjacent(up, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).

adjacent(down,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).



#max_penalty(100).

#constant(action, right).
#constant(action, left).
#constant(action, down).
#constant(action, up).
#constant(action, non).

#pos({state_after((1,3))}, {state_after((2,4)),state_after((1,5)),state_after((0,4)),state_after((1,4))}, {state_before((1,4)). action(down). wall((1, 5)). wall((0, 4)). }).
#pos({state_after((1,2))}, {state_after((2,3)),state_after((1,4)),state_after((0,3)),state_after((1,3))}, {state_before((1,3)). action(down). wall((2, 3)). wall((0, 3)). }).
h
cell((0..6, 0..5)).

% (X+1,Y) is right next to (X,Y)
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).

adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).

% (X,Y+1) is above next to (X,Y)
adjacent(up, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).

adjacent(down,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).



#max_penalty(100).

#constant(action, right).
#constant(action, left).
#constant(action, down).
#constant(action, up).
#constant(action, non).

#pos({state_after((1,3))}, {state_after((2,4)),state_after((1,5)),state_after((0,4)),state_after((1,4))}, {state_before((1,4)). action(down). wall((1, 5)). wall((0, 4)). }).
#pos({state_after((1,2))}, {state_after((2,3)),state_after((1,4)),state_after((0,3)),state_after((1,3))}, {state_before((1,3)). action(down). wall((2, 3)). wall((0, 3)). }).
