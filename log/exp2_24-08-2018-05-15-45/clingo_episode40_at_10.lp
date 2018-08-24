1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..17, 0..7)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

wall((3, 4)).

wall((0, 3)).

wall((0, 4)).

wall((0, 5)).

wall((1, 7)).

wall((0, 6)).

wall((2, 7)).

wall((3, 7)).

wall((4, 7)).

wall((4, 4)).

wall((5, 7)).

wall((6, 7)).

wall((7, 7)).

wall((9, 6)).

wall((8, 7)).

wall((6, 4)).

wall((3, 0)).

wall((2, 0)).

wall((0, 2)).

wall((0, 1)).

wall((1, 0)).

wall((6, 3)).

wall((5, 4)).

wall((4, 0)).

wall((6, 0)).

wall((5, 0)).

wall((7, 0)).

wall((8, 0)).

wall((9, 0)).

wall((10, 0)).

wall((12, 2)).

wall((12, 1)).

wall((11, 0)).

wall((12, 3)).

wall((11, 7)).

wall((12, 7)).

wall((13, 7)).

wall((15, 4)).

wall((13, 2)).

wall((14, 2)).

wall((15, 2)).

wall((17, 3)).

wall((16, 4)).

wall((17, 2)).
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((16, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.
link_start((10,6)). link_dest((13,1)). 
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

wall((13, 0)).
%AAA
state_at((13, 1), 10).
%BBB
%CCC
time(10..250).
%DDD
%ANSWER SETS

%state_at((13,1),10)
%state_at((13,1),11)
%state_at((13,1),12)
%state_at((13,1),13)
%state_at((13,1),14)
%state_at((13,1),15)
%state_at((13,1),16)
%state_at((13,1),17)
%state_at((13,1),18)
%state_at((13,1),19)
%state_at((13,1),20)
%state_at((13,1),21)
%state_at((13,1),22)
%state_at((13,1),23)
%state_at((13,1),24)
%state_at((13,1),25)
%state_at((13,1),26)
%state_at((13,1),27)
%state_at((13,1),28)
%state_at((13,1),29)
%state_at((13,1),30)
%state_at((13,1),31)
%state_at((13,1),32)
%state_at((13,1),33)
%state_at((13,1),34)
%state_at((13,1),35)
%state_at((13,1),36)
%state_at((13,1),37)
%state_at((13,1),38)
%state_at((13,1),39)
%state_at((13,1),40)
%state_at((13,1),41)
%state_at((13,1),42)
%state_at((13,1),43)
%state_at((13,1),44)
%state_at((13,1),45)
%state_at((13,1),46)
%state_at((13,1),47)
%state_at((13,1),48)
%state_at((13,1),49)
%state_at((13,1),50)
%state_at((13,1),51)
%state_at((13,1),52)
%state_at((13,1),53)
%state_at((13,1),54)
%state_at((13,1),55)
%state_at((13,1),56)
%state_at((13,1),57)
%state_at((13,1),58)
%state_at((13,1),59)
%state_at((13,1),60)
%state_at((13,1),61)
%state_at((13,1),62)
%state_at((13,1),63)
%state_at((13,1),64)
%state_at((13,1),65)
%state_at((13,1),66)
%state_at((13,1),67)
%state_at((13,1),68)
%state_at((13,1),69)
%state_at((13,1),70)
%state_at((13,1),71)
%state_at((13,1),72)
%state_at((13,1),73)
%state_at((13,1),74)
%state_at((13,1),75)
%state_at((13,1),76)
%state_at((13,1),77)
%state_at((13,1),78)
%state_at((13,1),79)
%state_at((13,1),80)
%state_at((13,1),81)
%state_at((13,1),82)
%state_at((13,1),83)
%state_at((13,1),84)
%state_at((13,1),85)
%state_at((13,1),86)
%state_at((13,1),87)
%state_at((13,1),88)
%state_at((13,1),89)
%state_at((13,1),90)
%state_at((13,1),91)
%state_at((13,1),92)
%state_at((13,1),93)
%state_at((13,1),94)
%state_at((13,1),95)
%state_at((13,1),96)
%state_at((13,1),97)
%state_at((13,1),98)
%state_at((13,1),99)
%state_at((13,1),100)
%state_at((13,1),101)
%state_at((13,1),102)
%state_at((13,1),103)
%state_at((13,1),104)
%state_at((13,1),105)
%state_at((13,1),106)
%state_at((13,1),107)
%state_at((13,1),108)
%state_at((13,1),109)
%state_at((13,1),110)
%state_at((13,1),111)
%state_at((13,1),112)
%state_at((13,1),113)
%state_at((13,1),114)
%state_at((13,1),115)
%state_at((13,1),116)
%state_at((13,1),117)
%state_at((13,1),118)
%state_at((13,1),119)
%state_at((13,1),120)
%state_at((13,1),121)
%state_at((13,1),122)
%state_at((13,1),123)
%state_at((13,1),124)
%state_at((13,1),125)
%state_at((13,1),126)
%state_at((13,1),127)
%state_at((13,1),128)
%state_at((13,1),129)
%state_at((13,1),130)
%state_at((13,1),131)
%state_at((13,1),132)
%state_at((13,1),133)
%state_at((13,1),134)
%state_at((13,1),135)
%state_at((13,1),136)
%state_at((13,1),137)
%state_at((13,1),138)
%state_at((13,1),139)
%state_at((13,1),140)
%state_at((13,1),141)
%state_at((13,1),142)
%state_at((13,1),143)
%state_at((13,1),144)
%state_at((13,1),145)
%state_at((13,1),146)
%state_at((13,1),147)
%state_at((13,1),148)
%state_at((13,1),149)
%state_at((13,1),150)
%state_at((13,1),151)
%state_at((13,1),152)
%state_at((13,1),153)
%state_at((13,1),154)
%state_at((13,1),155)
%state_at((13,1),156)
%state_at((13,1),157)
%state_at((13,1),158)
%state_at((13,1),159)
%state_at((13,1),160)
%state_at((13,1),161)
%state_at((13,1),162)
%state_at((13,1),163)
%state_at((13,1),164)
%state_at((13,1),165)
%state_at((13,1),166)
%state_at((13,1),167)
%state_at((13,1),168)
%state_at((13,1),169)
%state_at((13,1),170)
%state_at((13,1),171)
%state_at((13,1),172)
%state_at((13,1),173)
%state_at((13,1),174)
%state_at((13,1),175)
%state_at((13,1),176)
%state_at((13,1),177)
%state_at((13,1),178)
%state_at((13,1),179)
%state_at((13,1),180)
%state_at((13,1),181)
%state_at((13,1),182)
%state_at((13,1),183)
%state_at((13,1),184)
%state_at((13,1),185)
%state_at((13,1),186)
%state_at((13,1),187)
%state_at((13,1),188)
%state_at((13,1),189)
%state_at((13,1),190)
%state_at((13,1),191)
%state_at((13,1),192)
%state_at((13,1),193)
%state_at((13,1),194)
%state_at((13,1),195)
%state_at((13,1),196)
%state_at((13,1),197)
%state_at((13,1),198)
%state_at((13,1),199)
%state_at((13,1),200)
%state_at((13,1),201)
%state_at((13,1),202)
%state_at((13,1),203)
%state_at((13,1),204)
%state_at((13,1),205)
%state_at((13,1),206)
%state_at((13,1),207)
%state_at((13,1),208)
%state_at((13,1),209)
%state_at((13,1),210)
%state_at((13,1),211)
%state_at((13,1),212)
%state_at((13,1),213)
%state_at((13,1),214)
%state_at((13,1),215)
%state_at((13,1),216)
%state_at((13,1),217)
%state_at((13,1),218)
%state_at((13,1),219)
%state_at((13,1),220)
%state_at((13,1),221)
%state_at((13,1),222)
%state_at((13,1),223)
%state_at((13,1),224)
%state_at((13,1),225)
%state_at((13,1),226)
%state_at((13,1),227)
%state_at((13,1),228)
%state_at((13,1),229)
%state_at((13,1),230)
%state_at((13,1),231)
%state_at((13,1),232)
%state_at((13,1),233)
%state_at((13,1),234)
%state_at((13,1),235)
%state_at((13,1),236)
%state_at((13,1),237)
%state_at((13,1),238)
%state_at((13,1),239)
%state_at((13,1),240)
%state_at((13,1),241)
%state_at((13,1),242)
%state_at((13,1),243)
%state_at((13,1),244)
%state_at((13,1),245)
%state_at((13,1),246)
%state_at((13,1),247)
%state_at((13,1),248)
%state_at((13,1),249)
%state_at((13,1),250)
%state_at((13,1),251)
%state_at((14,1),13)
%action(right,12)
%state_at((14,1),12)
%action(right,11)
%state_at((14,1),11)
%action(right,10)
%state_at((15,1),12)
%state_at((15,1),13)
%state_at((16,1),13)
