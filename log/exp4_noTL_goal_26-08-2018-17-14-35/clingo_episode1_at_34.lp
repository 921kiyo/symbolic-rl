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

wall((3, 8)).

wall((4, 8)).

wall((5, 8)).

wall((5, 6)).

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

wall((15, 3)).

wall((14, 4)).

wall((13, 3)).

wall((15, 2)).

wall((13, 2)).
%START
state_at(V0, T+1) :- time(T), link_dest(V0), action(right, T).
state_at(V1, T+1) :- time(T), link_start(V0), adjacent(left, V1, V0), state_at(V1, T).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), action(left, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), action(down, T), wall(V0).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), wall(V1).

%END
%AAA
state_at((14, 2), 34).
%BBB
%CCC
time(34..250).
%DDD
%ANSWER SETS

%state_at((14,2),34)
%state_at((14,3),35)
%state_at((14,3),36)
%state_at((14,2),35)
%action(left,34)
%state_at((14,2),36)
%state_at((16,2),35)
%state_at((16,2),36)
%state_at((16,3),35)
%state_at((14,4),35)
%state_at((15,4),35)
%state_at((13,5),35)
%state_at((13,5),36)
%state_at((13,5),37)
%state_at((13,5),38)
%state_at((13,5),39)
%state_at((13,5),40)
%state_at((13,5),41)
%state_at((13,5),42)
%state_at((13,5),43)
%state_at((13,5),44)
%state_at((13,5),45)
%state_at((13,5),46)
%state_at((13,5),47)
%state_at((13,5),48)
%state_at((13,5),49)
%state_at((13,5),50)
%state_at((13,5),51)
%state_at((13,5),52)
%state_at((13,5),53)
%state_at((13,5),54)
%state_at((13,5),55)
%state_at((13,5),56)
%state_at((13,5),57)
%state_at((13,5),58)
%state_at((13,5),59)
%state_at((13,5),60)
%state_at((13,5),61)
%state_at((13,5),62)
%state_at((13,5),63)
%state_at((13,5),64)
%state_at((13,5),65)
%state_at((13,5),66)
%state_at((13,5),67)
%state_at((13,5),68)
%state_at((13,5),69)
%state_at((13,5),70)
%state_at((13,5),71)
%state_at((13,5),72)
%state_at((13,5),73)
%state_at((13,5),74)
%state_at((13,5),75)
%state_at((13,5),76)
%state_at((13,5),77)
%state_at((13,5),78)
%state_at((13,5),79)
%state_at((13,5),80)
%state_at((13,5),81)
%state_at((13,5),82)
%state_at((13,5),83)
%state_at((13,5),84)
%state_at((13,5),85)
%state_at((13,5),86)
%state_at((13,5),87)
%state_at((13,5),88)
%state_at((13,5),89)
%state_at((13,5),90)
%state_at((13,5),91)
%state_at((13,5),92)
%state_at((13,5),93)
%state_at((13,5),94)
%state_at((13,5),95)
%state_at((13,5),96)
%state_at((13,5),97)
%state_at((13,5),98)
%state_at((13,5),99)
%state_at((13,5),100)
%state_at((13,5),101)
%state_at((13,5),102)
%state_at((13,5),103)
%state_at((13,5),104)
%state_at((13,5),105)
%state_at((13,5),106)
%state_at((13,5),107)
%state_at((13,5),108)
%state_at((13,5),109)
%state_at((13,5),110)
%state_at((13,5),111)
%state_at((13,5),112)
%state_at((13,5),113)
%state_at((13,5),114)
%state_at((13,5),115)
%state_at((13,5),116)
%state_at((13,5),117)
%state_at((13,5),118)
%state_at((13,5),119)
%state_at((13,5),120)
%state_at((13,5),121)
%state_at((13,5),122)
%state_at((13,5),123)
%state_at((13,5),124)
%state_at((13,5),125)
%state_at((13,5),126)
%state_at((13,5),127)
%state_at((13,5),128)
%state_at((13,5),129)
%state_at((13,5),130)
%state_at((13,5),131)
%state_at((13,5),132)
%state_at((13,5),133)
%state_at((13,5),134)
%state_at((13,5),135)
%state_at((13,5),136)
%state_at((13,5),137)
%state_at((13,5),138)
%state_at((13,5),139)
%state_at((13,5),140)
%state_at((13,5),141)
%state_at((13,5),142)
%state_at((13,5),143)
%state_at((13,5),144)
%state_at((13,5),145)
%state_at((13,5),146)
%state_at((13,5),147)
%state_at((13,5),148)
%state_at((13,5),149)
%state_at((13,5),150)
%state_at((13,5),151)
%state_at((13,5),152)
%state_at((13,5),153)
%state_at((13,5),154)
%state_at((13,5),155)
%state_at((13,5),156)
%state_at((13,5),157)
%state_at((13,5),158)
%state_at((13,5),159)
%state_at((13,5),160)
%state_at((13,5),161)
%state_at((13,5),162)
%state_at((13,5),163)
%state_at((13,5),164)
%state_at((13,5),165)
%state_at((13,5),166)
%state_at((13,5),167)
%state_at((13,5),168)
%state_at((13,5),169)
%state_at((13,5),170)
%state_at((13,5),171)
%state_at((13,5),172)
%state_at((13,5),173)
%state_at((13,5),174)
%state_at((13,5),175)
%state_at((13,5),176)
%state_at((13,5),177)
%state_at((13,5),178)
%state_at((13,5),179)
%state_at((13,5),180)
%state_at((13,5),181)
%state_at((13,5),182)
%state_at((13,5),183)
%state_at((13,5),184)
%state_at((13,5),185)
%state_at((13,5),186)
%state_at((13,5),187)
%state_at((13,5),188)
%state_at((13,5),189)
%state_at((13,5),190)
%state_at((13,5),191)
%state_at((13,5),192)
%state_at((13,5),193)
%state_at((13,5),194)
%state_at((13,5),195)
%state_at((13,5),196)
%state_at((13,5),197)
%state_at((13,5),198)
%state_at((13,5),199)
%state_at((13,5),200)
%state_at((13,5),201)
%state_at((13,5),202)
%state_at((13,5),203)
%state_at((13,5),204)
%state_at((13,5),205)
%state_at((13,5),206)
%state_at((13,5),207)
%state_at((13,5),208)
%state_at((13,5),209)
%state_at((13,5),210)
%state_at((13,5),211)
%state_at((13,5),212)
%state_at((13,5),213)
%state_at((13,5),214)
%state_at((13,5),215)
%state_at((13,5),216)
%state_at((13,5),217)
%state_at((13,5),218)
%state_at((13,5),219)
%state_at((13,5),220)
%state_at((13,5),221)
%state_at((13,5),222)
%state_at((13,5),223)
%state_at((13,5),224)
%state_at((13,5),225)
%state_at((13,5),226)
%state_at((13,5),227)
%state_at((13,5),228)
%state_at((13,5),229)
%state_at((13,5),230)
%state_at((13,5),231)
%state_at((13,5),232)
%state_at((13,5),233)
%state_at((13,5),234)
%state_at((13,5),235)
%state_at((13,5),236)
%state_at((13,5),237)
%state_at((13,5),238)
%state_at((13,5),239)
%state_at((13,5),240)
%state_at((13,5),241)
%state_at((13,5),242)
%state_at((13,5),243)
%state_at((13,5),244)
%state_at((13,5),245)
%state_at((13,5),246)
%state_at((13,5),247)
%state_at((13,5),248)
%state_at((13,5),249)
%state_at((13,5),250)
%state_at((13,5),251)
%state_at((2,6),35)
%state_at((4,6),35)
%state_at((6,6),35)
%state_at((8,6),35)
%state_at((9,6),35)
%state_at((10,6),35)
%state_at((12,6),35)
%state_at((13,6),35)
%state_at((15,6),35)
%state_at((15,6),36)
%state_at((1,7),35)
%state_at((15,7),35)
%state_at((2,8),35)
%state_at((3,8),35)
%state_at((4,8),35)
%state_at((5,8),35)
%state_at((6,8),35)
%state_at((7,8),35)
%state_at((8,8),35)
%state_at((9,8),35)
%state_at((10,8),35)
%state_at((11,8),35)
%state_at((12,8),35)
%state_at((13,8),35)
%state_at((14,8),35)
%state_at((3,7),36)
%state_at((5,7),36)
%state_at((7,7),36)
%state_at((8,7),36)
%state_at((9,7),36)
%state_at((11,7),36)
%state_at((12,7),36)
%state_at((13,7),36)
%action(up,35)
%state_at((10,7),36)
%state_at((6,7),36)
%state_at((4,7),36)
%state_at((2,7),36)
%state_at((15,5),36)
%state_at((10,5),36)
%state_at((9,5),36)
%state_at((8,5),36)
%state_at((6,5),36)
%state_at((4,5),36)
%state_at((2,5),36)
%state_at((16,1),36)
%state_at((14,1),36)
