1{action(down,T); action(up,T); action(right,T); action(left,T)}1}
 :- time(T), not finished(T).
time(Ttextsubscript{t}..Ttextsubscript{max})}
finished(T):- goal(T2), time(T), T} geq textsf{T2.
goal(T):- state_at((Xtextsubscript{goal}, Ytextsubscript{goal}), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.
wall((X,Y))}
textsf{state_at((Xtextsubscript{start}, Ytextsubscript{start}), T)}
#minimize{1, X, T: action(X,T)}}.
#show state_at/2.
#show action/2.
