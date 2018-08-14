1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..11, 0..7)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

wall((1, 7)).

wall((0, 6)).

wall((2, 5)).

wall((0, 5)).

wall((2, 4)).

wall((0, 4)).

wall((2, 3)).

wall((0, 3)).

wall((2, 2)).

wall((0, 2)).

wall((0, 1)).

wall((1, 0)).

wall((2, 0)).

wall((3, 0)).

wall((4, 2)).

wall((4, 0)).

wall((5, 2)).

wall((5, 0)).

wall((6, 2)).

wall((6, 0)).

wall((7, 0)).

wall((8, 2)).

wall((8, 0)).

wall((8, 3)).

wall((6, 3)).

wall((8, 4)).

wall((6, 4)).

wall((8, 5)).

wall((6, 5)).

wall((7, 7)).

wall((6, 7)).

wall((8, 7)).

wall((9, 7)).

wall((9, 5)).

wall((11, 6)).

wall((10, 7)).

wall((10, 5)).

wall((5, 7)).

wall((2, 7)).

wall((3, 7)).

wall((4, 7)).

wall((4, 5)).

wall((4, 4)).
link_start((5,3)). link_dest((10,3)). 

wall((11, 3)).

wall((10, 4)).

wall((9, 3)).

wall((11, 2)).

wall((9, 2)).
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
 goal(T):- state_at((10, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

wall((9, 0)).
%AAA
state_at((4, 1), 15).
%BBB
%CCC
time(15..250).
%DDD
%ANSWER SETS

%state_at((4,1),15)
%state_at((10,3),16)
%state_at((10,3),17)
%state_at((10,3),18)
%state_at((10,3),19)
%state_at((10,3),20)
%state_at((10,3),21)
%state_at((10,3),22)
%state_at((10,3),23)
%state_at((10,3),24)
%state_at((10,3),25)
%state_at((10,3),26)
%state_at((10,3),27)
%state_at((10,3),28)
%state_at((10,3),29)
%state_at((10,3),30)
%state_at((10,3),31)
%state_at((10,3),32)
%state_at((10,3),33)
%state_at((10,3),34)
%state_at((10,3),35)
%state_at((10,3),36)
%state_at((10,3),37)
%state_at((10,3),38)
%state_at((10,3),39)
%state_at((10,3),40)
%state_at((10,3),41)
%state_at((10,3),42)
%state_at((10,3),43)
%state_at((10,3),44)
%state_at((10,3),45)
%state_at((10,3),46)
%state_at((10,3),47)
%state_at((10,3),48)
%state_at((10,3),49)
%state_at((10,3),50)
%state_at((10,3),51)
%state_at((10,3),52)
%state_at((10,3),53)
%state_at((10,3),54)
%state_at((10,3),55)
%state_at((10,3),56)
%state_at((10,3),57)
%state_at((10,3),58)
%state_at((10,3),59)
%state_at((10,3),60)
%state_at((10,3),61)
%state_at((10,3),62)
%state_at((10,3),63)
%state_at((10,3),64)
%state_at((10,3),65)
%state_at((10,3),66)
%state_at((10,3),67)
%state_at((10,3),68)
%state_at((10,3),69)
%state_at((10,3),70)
%state_at((10,3),71)
%state_at((10,3),72)
%state_at((10,3),73)
%state_at((10,3),74)
%state_at((10,3),75)
%state_at((10,3),76)
%state_at((10,3),77)
%state_at((10,3),78)
%state_at((10,3),79)
%state_at((10,3),80)
%state_at((10,3),81)
%state_at((10,3),82)
%state_at((10,3),83)
%state_at((10,3),84)
%state_at((10,3),85)
%state_at((10,3),86)
%state_at((10,3),87)
%state_at((10,3),88)
%state_at((10,3),89)
%state_at((10,3),90)
%state_at((10,3),91)
%state_at((10,3),92)
%state_at((10,3),93)
%state_at((10,3),94)
%state_at((10,3),95)
%state_at((10,3),96)
%state_at((10,3),97)
%state_at((10,3),98)
%state_at((10,3),99)
%state_at((10,3),100)
%state_at((10,3),101)
%state_at((10,3),102)
%state_at((10,3),103)
%state_at((10,3),104)
%state_at((10,3),105)
%state_at((10,3),106)
%state_at((10,3),107)
%state_at((10,3),108)
%state_at((10,3),109)
%state_at((10,3),110)
%state_at((10,3),111)
%state_at((10,3),112)
%state_at((10,3),113)
%state_at((10,3),114)
%state_at((10,3),115)
%state_at((10,3),116)
%state_at((10,3),117)
%state_at((10,3),118)
%state_at((10,3),119)
%state_at((10,3),120)
%state_at((10,3),121)
%state_at((10,3),122)
%state_at((10,3),123)
%state_at((10,3),124)
%state_at((10,3),125)
%state_at((10,3),126)
%state_at((10,3),127)
%state_at((10,3),128)
%state_at((10,3),129)
%state_at((10,3),130)
%state_at((10,3),131)
%state_at((10,3),132)
%state_at((10,3),133)
%state_at((10,3),134)
%state_at((10,3),135)
%state_at((10,3),136)
%state_at((10,3),137)
%state_at((10,3),138)
%state_at((10,3),139)
%state_at((10,3),140)
%state_at((10,3),141)
%state_at((10,3),142)
%state_at((10,3),143)
%state_at((10,3),144)
%state_at((10,3),145)
%state_at((10,3),146)
%state_at((10,3),147)
%state_at((10,3),148)
%state_at((10,3),149)
%state_at((10,3),150)
%state_at((10,3),151)
%state_at((10,3),152)
%state_at((10,3),153)
%state_at((10,3),154)
%state_at((10,3),155)
%state_at((10,3),156)
%state_at((10,3),157)
%state_at((10,3),158)
%state_at((10,3),159)
%state_at((10,3),160)
%state_at((10,3),161)
%state_at((10,3),162)
%state_at((10,3),163)
%state_at((10,3),164)
%state_at((10,3),165)
%state_at((10,3),166)
%state_at((10,3),167)
%state_at((10,3),168)
%state_at((10,3),169)
%state_at((10,3),170)
%state_at((10,3),171)
%state_at((10,3),172)
%state_at((10,3),173)
%state_at((10,3),174)
%state_at((10,3),175)
%state_at((10,3),176)
%state_at((10,3),177)
%state_at((10,3),178)
%state_at((10,3),179)
%state_at((10,3),180)
%state_at((10,3),181)
%state_at((10,3),182)
%state_at((10,3),183)
%state_at((10,3),184)
%state_at((10,3),185)
%state_at((10,3),186)
%state_at((10,3),187)
%state_at((10,3),188)
%state_at((10,3),189)
%state_at((10,3),190)
%state_at((10,3),191)
%state_at((10,3),192)
%state_at((10,3),193)
%state_at((10,3),194)
%state_at((10,3),195)
%state_at((10,3),196)
%state_at((10,3),197)
%state_at((10,3),198)
%state_at((10,3),199)
%state_at((10,3),200)
%state_at((10,3),201)
%state_at((10,3),202)
%state_at((10,3),203)
%state_at((10,3),204)
%state_at((10,3),205)
%state_at((10,3),206)
%state_at((10,3),207)
%state_at((10,3),208)
%state_at((10,3),209)
%state_at((10,3),210)
%state_at((10,3),211)
%state_at((10,3),212)
%state_at((10,3),213)
%state_at((10,3),214)
%state_at((10,3),215)
%state_at((10,3),216)
%state_at((10,3),217)
%state_at((10,3),218)
%state_at((10,3),219)
%state_at((10,3),220)
%state_at((10,3),221)
%state_at((10,3),222)
%state_at((10,3),223)
%state_at((10,3),224)
%state_at((10,3),225)
%state_at((10,3),226)
%state_at((10,3),227)
%state_at((10,3),228)
%state_at((10,3),229)
%state_at((10,3),230)
%state_at((10,3),231)
%state_at((10,3),232)
%state_at((10,3),233)
%state_at((10,3),234)
%state_at((10,3),235)
%state_at((10,3),236)
%state_at((10,3),237)
%state_at((10,3),238)
%state_at((10,3),239)
%state_at((10,3),240)
%state_at((10,3),241)
%state_at((10,3),242)
%state_at((10,3),243)
%state_at((10,3),244)
%state_at((10,3),245)
%state_at((10,3),246)
%state_at((10,3),247)
%state_at((10,3),248)
%state_at((10,3),249)
%state_at((10,3),250)
%state_at((10,3),251)
%state_at((10,2),18)
%action(up,17)
%state_at((10,2),17)
%action(up,16)
%state_at((5,1),16)
%action(right,15)
%state_at((5,1),17)
%state_at((10,1),18)
%state_at((5,1),18)
