p :- not q.
q :- not p.
% At least one answer set should contain but not
% contain r.
#pos(p1, {q}, {r}).
% At least one answer set should contain both q
% and r.
#pos(p2, {q, r}, {}).
% At least one answer set should contain p.
#pos(p3, {p}, {}).
% No answer set should contain both p and r.
#neg(n1, {p, r}, {}).
1
 ~
 r.
1
 ~
 s.
2
 ~
 r :- not p.
2
 ~
 r :- p.
2
 ~
 s :- not p.
2
 ~
 s :- p.
1
 ~
 :- not p.
1
 ~
 :- p.
2
 ~
 s :- not r.
2
 ~
 s :- r.
1
 ~
 :- not r.
1
 ~
 :- r.
2
 ~
 r :- not s.
2
 ~
 r :- s.
1
 ~
 :- not s.
1
 ~
 :- s.
3
 ~
 s :- not p, not r.
3
 ~
 s :- p, not r.
3
 ~
 s :- not p, r.
3
 ~
 s :- p, r.
2
 ~
 :- not p, not r.
2
 ~
 :- p, not r.
2
 ~
 :- not p, r.
2
 ~
 :- p, r.
3
 ~
 r :- not p, not s.
3
 ~
 r :- p, not s.
3
 ~
 r :- not p, s.
3
 ~
 r :- p, s.
2
 ~
 :- not p, not s.
2
 ~
 :- p, not s.
2
 ~
 :- not p, s.
2
 ~
 :- p, s.
2
 ~
 :- not r, not s.
2
 ~
 :- r, not s.
2
 ~
 :- not r, s.

 2
  ~
  :-
  r, s.
 3
  ~
  :-
  not p, not r, not s.
 3
  ~
  :-
  p, not r, not s.
 3
  ~
  :-
  not p, r, not s.
 3
  ~
  :-
  p, r, not s.
 3
  ~
  :-
  not p, not r, s.
 3
  ~
  :-
  p, not r, s.
 3
  ~
  :-
  not p, r, s.
 3
  ~
  :-
  p, r, s.
