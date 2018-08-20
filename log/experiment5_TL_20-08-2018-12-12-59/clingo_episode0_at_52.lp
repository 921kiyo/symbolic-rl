1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..17, 0..8)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((16, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((1, 8)).

wall((0, 7)).

wall((1, 6)).

wall((2, 8)).

wall((3, 6)).

wall((2, 4)).

wall((3, 4)).

wall((5, 5)).

wall((4, 4)).

wall((5, 6)).

wall((4, 8)).

wall((5, 8)).

wall((6, 8)).

wall((7, 8)).

wall((7, 6)).

wall((8, 8)).

wall((8, 6)).

wall((9, 8)).

wall((9, 6)).

wall((10, 8)).

wall((11, 8)).

wall((11, 6)).

wall((12, 8)).

wall((12, 6)).

wall((14, 7)).

wall((13, 8)).

wall((14, 6)).

wall((12, 5)).

wall((13, 4)).
link_start((14,5)). link_dest((14,3)). 
%START
state_at(V0, T+1) :- time(T), link_dest(V0).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).

%END

wall((15, 3)).

wall((14, 4)).

wall((13, 3)).
%AAA
state_at((14, 3), 52).
%BBB
%CCC
time(52..250).
%DDD
%ANSWER SETS

%state_at((14,3),52)
%state_at((14,3),53)
%state_at((14,3),54)
%state_at((14,3),55)
%state_at((14,3),56)
%state_at((14,3),57)
%state_at((14,3),58)
%state_at((14,3),59)
%state_at((14,3),60)
%state_at((14,3),61)
%state_at((14,3),62)
%state_at((14,3),63)
%state_at((14,3),64)
%state_at((14,3),65)
%state_at((14,3),66)
%state_at((14,3),67)
%state_at((14,3),68)
%state_at((14,3),69)
%state_at((14,3),70)
%state_at((14,3),71)
%state_at((14,3),72)
%state_at((14,3),73)
%state_at((14,3),74)
%state_at((14,3),75)
%state_at((14,3),76)
%state_at((14,3),77)
%state_at((14,3),78)
%state_at((14,3),79)
%state_at((14,3),80)
%state_at((14,3),81)
%state_at((14,3),82)
%state_at((14,3),83)
%state_at((14,3),84)
%state_at((14,3),85)
%state_at((14,3),86)
%state_at((14,3),87)
%state_at((14,3),88)
%state_at((14,3),89)
%state_at((14,3),90)
%state_at((14,3),91)
%state_at((14,3),92)
%state_at((14,3),93)
%state_at((14,3),94)
%state_at((14,3),95)
%state_at((14,3),96)
%state_at((14,3),97)
%state_at((14,3),98)
%state_at((14,3),99)
%state_at((14,3),100)
%state_at((14,3),101)
%state_at((14,3),102)
%state_at((14,3),103)
%state_at((14,3),104)
%state_at((14,3),105)
%state_at((14,3),106)
%state_at((14,3),107)
%state_at((14,3),108)
%state_at((14,3),109)
%state_at((14,3),110)
%state_at((14,3),111)
%state_at((14,3),112)
%state_at((14,3),113)
%state_at((14,3),114)
%state_at((14,3),115)
%state_at((14,3),116)
%state_at((14,3),117)
%state_at((14,3),118)
%state_at((14,3),119)
%state_at((14,3),120)
%state_at((14,3),121)
%state_at((14,3),122)
%state_at((14,3),123)
%state_at((14,3),124)
%state_at((14,3),125)
%state_at((14,3),126)
%state_at((14,3),127)
%state_at((14,3),128)
%state_at((14,3),129)
%state_at((14,3),130)
%state_at((14,3),131)
%state_at((14,3),132)
%state_at((14,3),133)
%state_at((14,3),134)
%state_at((14,3),135)
%state_at((14,3),136)
%state_at((14,3),137)
%state_at((14,3),138)
%state_at((14,3),139)
%state_at((14,3),140)
%state_at((14,3),141)
%state_at((14,3),142)
%state_at((14,3),143)
%state_at((14,3),144)
%state_at((14,3),145)
%state_at((14,3),146)
%state_at((14,3),147)
%state_at((14,3),148)
%state_at((14,3),149)
%state_at((14,3),150)
%state_at((14,3),151)
%state_at((14,3),152)
%state_at((14,3),153)
%state_at((14,3),154)
%state_at((14,3),155)
%state_at((14,3),156)
%state_at((14,3),157)
%state_at((14,3),158)
%state_at((14,3),159)
%state_at((14,3),160)
%state_at((14,3),161)
%state_at((14,3),162)
%state_at((14,3),163)
%state_at((14,3),164)
%state_at((14,3),165)
%state_at((14,3),166)
%state_at((14,3),167)
%state_at((14,3),168)
%state_at((14,3),169)
%state_at((14,3),170)
%state_at((14,3),171)
%state_at((14,3),172)
%state_at((14,3),173)
%state_at((14,3),174)
%state_at((14,3),175)
%state_at((14,3),176)
%state_at((14,3),177)
%state_at((14,3),178)
%state_at((14,3),179)
%state_at((14,3),180)
%state_at((14,3),181)
%state_at((14,3),182)
%state_at((14,3),183)
%state_at((14,3),184)
%state_at((14,3),185)
%state_at((14,3),186)
%state_at((14,3),187)
%state_at((14,3),188)
%state_at((14,3),189)
%state_at((14,3),190)
%state_at((14,3),191)
%state_at((14,3),192)
%state_at((14,3),193)
%state_at((14,3),194)
%state_at((14,3),195)
%state_at((14,3),196)
%state_at((14,3),197)
%state_at((14,3),198)
%state_at((14,3),199)
%state_at((14,3),200)
%state_at((14,3),201)
%state_at((14,3),202)
%state_at((14,3),203)
%state_at((14,3),204)
%state_at((14,3),205)
%state_at((14,3),206)
%state_at((14,3),207)
%state_at((14,3),208)
%state_at((14,3),209)
%state_at((14,3),210)
%state_at((14,3),211)
%state_at((14,3),212)
%state_at((14,3),213)
%state_at((14,3),214)
%state_at((14,3),215)
%state_at((14,3),216)
%state_at((14,3),217)
%state_at((14,3),218)
%state_at((14,3),219)
%state_at((14,3),220)
%state_at((14,3),221)
%state_at((14,3),222)
%state_at((14,3),223)
%state_at((14,3),224)
%state_at((14,3),225)
%state_at((14,3),226)
%state_at((14,3),227)
%state_at((14,3),228)
%state_at((14,3),229)
%state_at((14,3),230)
%state_at((14,3),231)
%state_at((14,3),232)
%state_at((14,3),233)
%state_at((14,3),234)
%state_at((14,3),235)
%state_at((14,3),236)
%state_at((14,3),237)
%state_at((14,3),238)
%state_at((14,3),239)
%state_at((14,3),240)
%state_at((14,3),241)
%state_at((14,3),242)
%state_at((14,3),243)
%state_at((14,3),244)
%state_at((14,3),245)
%state_at((14,3),246)
%state_at((14,3),247)
%state_at((14,3),248)
%state_at((14,3),249)
%state_at((14,3),250)
%state_at((14,3),251)
%state_at((14,2),55)
%action(up,54)
%state_at((14,2),53)
%action(up,52)
%state_at((15,2),54)
%action(right,53)
%state_at((15,2),56)
%action(right,55)
%state_at((15,1),55)
%state_at((16,1),56)
