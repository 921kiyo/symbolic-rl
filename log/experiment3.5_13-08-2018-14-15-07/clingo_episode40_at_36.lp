1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..18, 0..7)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

wall((1, 7)).

wall((0, 6)).

wall((1, 5)).

wall((2, 7)).

wall((2, 5)).

wall((3, 7)).

wall((3, 5)).

wall((4, 7)).

wall((4, 5)).

wall((5, 7)).

wall((6, 5)).

wall((6, 4)).

wall((4, 4)).

wall((6, 3)).

wall((4, 3)).

wall((6, 2)).

wall((4, 2)).

wall((6, 7)).

wall((7, 7)).

wall((8, 5)).

wall((8, 4)).

wall((8, 3)).

wall((8, 2)).

wall((7, 0)).

wall((6, 0)).

wall((8, 0)).

wall((9, 2)).

wall((9, 0)).

wall((10, 2)).

wall((10, 0)).

wall((11, 2)).

wall((11, 0)).

wall((4, 1)).

wall((5, 0)).

wall((8, 7)).

wall((9, 7)).

wall((10, 7)).

wall((10, 5)).

wall((11, 7)).

wall((11, 5)).

wall((12, 7)).

wall((12, 5)).

wall((10, 4)).
link_start((9,3)). link_dest((17,3)). 

wall((18, 3)).

wall((17, 4)).

wall((16, 3)).

wall((18, 2)).

wall((16, 2)).
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
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((17, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((12, 2)).

wall((12, 0)).

wall((13, 2)).

wall((13, 0)).

wall((14, 2)).

wall((14, 0)).

wall((15, 2)).

wall((15, 0)).

wall((16, 0)).
%AAA
state_at((3, 6), 36).
%BBB
%CCC
time(36..250).
%DDD
%ANSWER SETS

%state_at((3,6),36)
%state_at((17,3),37)
%state_at((17,3),38)
%state_at((17,3),39)
%state_at((17,3),40)
%state_at((17,3),41)
%state_at((17,3),42)
%state_at((17,3),43)
%state_at((17,3),44)
%state_at((17,3),45)
%state_at((17,3),46)
%state_at((17,3),47)
%state_at((17,3),48)
%state_at((17,3),49)
%state_at((17,3),50)
%state_at((17,3),51)
%state_at((17,3),52)
%state_at((17,3),53)
%state_at((17,3),54)
%state_at((17,3),55)
%state_at((17,3),56)
%state_at((17,3),57)
%state_at((17,3),58)
%state_at((17,3),59)
%state_at((17,3),60)
%state_at((17,3),61)
%state_at((17,3),62)
%state_at((17,3),63)
%state_at((17,3),64)
%state_at((17,3),65)
%state_at((17,3),66)
%state_at((17,3),67)
%state_at((17,3),68)
%state_at((17,3),69)
%state_at((17,3),70)
%state_at((17,3),71)
%state_at((17,3),72)
%state_at((17,3),73)
%state_at((17,3),74)
%state_at((17,3),75)
%state_at((17,3),76)
%state_at((17,3),77)
%state_at((17,3),78)
%state_at((17,3),79)
%state_at((17,3),80)
%state_at((17,3),81)
%state_at((17,3),82)
%state_at((17,3),83)
%state_at((17,3),84)
%state_at((17,3),85)
%state_at((17,3),86)
%state_at((17,3),87)
%state_at((17,3),88)
%state_at((17,3),89)
%state_at((17,3),90)
%state_at((17,3),91)
%state_at((17,3),92)
%state_at((17,3),93)
%state_at((17,3),94)
%state_at((17,3),95)
%state_at((17,3),96)
%state_at((17,3),97)
%state_at((17,3),98)
%state_at((17,3),99)
%state_at((17,3),100)
%state_at((17,3),101)
%state_at((17,3),102)
%state_at((17,3),103)
%state_at((17,3),104)
%state_at((17,3),105)
%state_at((17,3),106)
%state_at((17,3),107)
%state_at((17,3),108)
%state_at((17,3),109)
%state_at((17,3),110)
%state_at((17,3),111)
%state_at((17,3),112)
%state_at((17,3),113)
%state_at((17,3),114)
%state_at((17,3),115)
%state_at((17,3),116)
%state_at((17,3),117)
%state_at((17,3),118)
%state_at((17,3),119)
%state_at((17,3),120)
%state_at((17,3),121)
%state_at((17,3),122)
%state_at((17,3),123)
%state_at((17,3),124)
%state_at((17,3),125)
%state_at((17,3),126)
%state_at((17,3),127)
%state_at((17,3),128)
%state_at((17,3),129)
%state_at((17,3),130)
%state_at((17,3),131)
%state_at((17,3),132)
%state_at((17,3),133)
%state_at((17,3),134)
%state_at((17,3),135)
%state_at((17,3),136)
%state_at((17,3),137)
%state_at((17,3),138)
%state_at((17,3),139)
%state_at((17,3),140)
%state_at((17,3),141)
%state_at((17,3),142)
%state_at((17,3),143)
%state_at((17,3),144)
%state_at((17,3),145)
%state_at((17,3),146)
%state_at((17,3),147)
%state_at((17,3),148)
%state_at((17,3),149)
%state_at((17,3),150)
%state_at((17,3),151)
%state_at((17,3),152)
%state_at((17,3),153)
%state_at((17,3),154)
%state_at((17,3),155)
%state_at((17,3),156)
%state_at((17,3),157)
%state_at((17,3),158)
%state_at((17,3),159)
%state_at((17,3),160)
%state_at((17,3),161)
%state_at((17,3),162)
%state_at((17,3),163)
%state_at((17,3),164)
%state_at((17,3),165)
%state_at((17,3),166)
%state_at((17,3),167)
%state_at((17,3),168)
%state_at((17,3),169)
%state_at((17,3),170)
%state_at((17,3),171)
%state_at((17,3),172)
%state_at((17,3),173)
%state_at((17,3),174)
%state_at((17,3),175)
%state_at((17,3),176)
%state_at((17,3),177)
%state_at((17,3),178)
%state_at((17,3),179)
%state_at((17,3),180)
%state_at((17,3),181)
%state_at((17,3),182)
%state_at((17,3),183)
%state_at((17,3),184)
%state_at((17,3),185)
%state_at((17,3),186)
%state_at((17,3),187)
%state_at((17,3),188)
%state_at((17,3),189)
%state_at((17,3),190)
%state_at((17,3),191)
%state_at((17,3),192)
%state_at((17,3),193)
%state_at((17,3),194)
%state_at((17,3),195)
%state_at((17,3),196)
%state_at((17,3),197)
%state_at((17,3),198)
%state_at((17,3),199)
%state_at((17,3),200)
%state_at((17,3),201)
%state_at((17,3),202)
%state_at((17,3),203)
%state_at((17,3),204)
%state_at((17,3),205)
%state_at((17,3),206)
%state_at((17,3),207)
%state_at((17,3),208)
%state_at((17,3),209)
%state_at((17,3),210)
%state_at((17,3),211)
%state_at((17,3),212)
%state_at((17,3),213)
%state_at((17,3),214)
%state_at((17,3),215)
%state_at((17,3),216)
%state_at((17,3),217)
%state_at((17,3),218)
%state_at((17,3),219)
%state_at((17,3),220)
%state_at((17,3),221)
%state_at((17,3),222)
%state_at((17,3),223)
%state_at((17,3),224)
%state_at((17,3),225)
%state_at((17,3),226)
%state_at((17,3),227)
%state_at((17,3),228)
%state_at((17,3),229)
%state_at((17,3),230)
%state_at((17,3),231)
%state_at((17,3),232)
%state_at((17,3),233)
%state_at((17,3),234)
%state_at((17,3),235)
%state_at((17,3),236)
%state_at((17,3),237)
%state_at((17,3),238)
%state_at((17,3),239)
%state_at((17,3),240)
%state_at((17,3),241)
%state_at((17,3),242)
%state_at((17,3),243)
%state_at((17,3),244)
%state_at((17,3),245)
%state_at((17,3),246)
%state_at((17,3),247)
%state_at((17,3),248)
%state_at((17,3),249)
%state_at((17,3),250)
%state_at((17,3),251)
%state_at((17,2),39)
%action(up,38)
%state_at((17,2),38)
%action(up,37)
%state_at((4,6),37)
%action(right,36)
%state_at((4,6),38)
%state_at((17,1),39)
%state_at((4,6),39)
