# Individual_project
Imperial College London MSc Individual Project

## ToDo
- Update Background report
- Check References
- Make a benchmarks (Q-learning and DRL)
- Berkeley DRL
- Math for ML


##


Requirements 

Clingo5

ILASP 2i

the manual can be found in here

## ILASP Tips

- "#max_penalty(50).” allows ILASP to learn a longer hypothesis.

- The point is that you need to check that the target hypothesis is indeed a solution of the task. So for each example, you can add the context, background and target hypothesis to a file and run clingo.

- If you run ILASP —version=2i -d on the task you will see the set of examples that ILASP2i uses. If you add the target hypothesis to the background knowledge and comment out the hypothesis space then the first example it picks is not covered by the target hypothesis (ILASP will terminate after processing this example as the task in UNSATISFIABLE).

- You can “convert” your negative examples into positive examples by moving the single inclusion into the exclusions. As your program is guaranteed to only have a single answer set, this is equivalent.

- The only cause of an infinite loop in ILASP (other than a bug of course) is that the grounding of the meta-level program is infinite (in which case, clingo will be killed due to a lack of memory, and hence ILASP will terminate anyway). If you pipe the hypothesis space to wc -l, you will see how many lines are in the hypothesis space. In this case there are over 100000, which is quite large.

- When debugging ILASP, there are two things you need to check: 1) that it works in clingo, and 2) that the desired hypothesis is actually in the hypothesis space. If you run ILASP -s --version=2 file, then this will output the hypothesis space.

- Is every rule you wish to learn in the hypothesis space? This is the first thing to check. If the hypothesis is not contained in the space, then you need to fix the node declarations. Otherwise, the problem is in either the background knowledge or the examples.

- In the second case, the first thing to try is to add the intended hypothesis to the background, and run ILASP version 2i with debug node on. The first example that it adds is not covered by the intended hypothesis. At this point you have enough information to debug this outside of ILASP (in clingo). You can copy the context of the example, the background knowledge and the intended hypothesis to a new ASP program. If you have inclusions and exclusions then these can be written as constraints. You then need to work out why the program is unsatisfiable (or satisfiable in the case of a negative example). 
