% &\textsf{state\_after(V0) :- adjacent(right, V0, V1), state\_before(V1), action(right), not wall(V0).}\\
% &\textsf{state\_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state\_at(V1, T), action(right, T), not wall(V0).}\\
% &\textsf{1\{action(down,T); action(up,T); action(right,T); action(left,T)\}1} \\
% &\textsf{ :- time(T), not finished(T).}\\
% &\textsf{time(T\textsubscript{t}..T\textsubscript{max})}
% &\textsf{finished(T):- goal(T2), time(T), T} \geq \textsf{T2.}\\
% &\textsf{goal(T):- state\_at((X\textsubscript{goal}, Y\textsubscript{goal}), T), not finished(T-1).}\\
% &\textsf{goalMet:- goal(T).}\\
% &\textsf{:- not goalMet.}
% &\textsf{wall((X,Y))}\\
% \textsf{state\_at((X\textsubscript{start}, Y\textsubscript{start}), T)}
% &\textsf{\#minimize\{1, X, T: action(X,T)\}}.
% &\textsf{\#show state\_at/2.} \\
% &\textsf{\#show action/2.}
