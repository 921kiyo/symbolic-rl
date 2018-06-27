cell((1..4,1..4)).

block((X, Y), tl) :- cell((X, Y)), X < 3, Y < 3.
block((X, Y), tr) :- cell((X, Y)), X > 2, Y < 3.
block((X, Y), bl) :- cell((X, Y)), X < 3, Y > 2.
block((X, Y), br) :- cell((X, Y)), X > 2, Y > 2.

same_row((X1,Y),(X2,Y)) :- X1 != X2, cell((X1,Y)), cell((X2, Y)).
same_col((X,Y1),(X,Y2)) :- Y1 != Y2, cell((X,Y1)), cell((X, Y2)).
same_block(C1,C2) :- block(C1, B), block(C2, B), C1 != C2.

#pos({
value((1, 1), 1),
value((1, 2), 2),
value((1, 3), 3),
value((1, 4), 4),
value((2, 3), 2)
}, {
value((1, 1), 2),
value((1, 1), 3),
value((1, 1), 4)
}).

#neg({ value((1, 1), 1), value((1, 3), 1) },{}).
#neg({ value((1, 1), 1), value((3, 1), 1) },{}).
#neg({ value((1, 1), 1), value((2, 2), 1) },{}).

#modeha(value(var(cell),const(number))). % modeha indicates that we can use aggregates

#modeb(2,value(var(cell),var(val))).
#modeb(1,same_row(var(cell), var(cell)), (anti_reflexive)).
#modeb(1,same_block(var(cell), var(cell)), (anti_reflexive)).
#modeb(1,same_col(var(cell), var(cell)), (anti_reflexive)).
#modeb(1,cell(var(cell))).

#constant(number, 1).
#constant(number, 2).
#constant(number, 3).
#constant(number, 4).

#minhl(4).
#maxhl(4).
#disallow_multiple_head_variables.
#max_penalty(30).
