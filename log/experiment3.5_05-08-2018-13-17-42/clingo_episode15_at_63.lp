1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((17, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.

cell((0..18, 0..7)).
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

wall((2, 7)).

wall((2, 2)).

wall((0, 2)).

wall((0, 1)).

wall((1, 0)).

wall((2, 0)).

wall((3, 2)).

wall((3, 0)).

wall((4, 2)).

wall((4, 0)).

wall((5, 0)).

wall((6, 2)).

wall((6, 0)).

wall((7, 0)).

wall((8, 2)).

wall((8, 3)).

wall((6, 3)).

wall((8, 4)).

wall((6, 4)).

wall((8, 0)).

wall((3, 7)).

wall((3, 5)).

wall((4, 7)).

wall((4, 5)).

wall((5, 7)).

wall((6, 7)).

wall((6, 5)).

wall((7, 7)).

wall((8, 5)).

wall((8, 7)).

wall((9, 7)).

wall((10, 5)).

wall((10, 7)).

wall((11, 7)).

wall((11, 5)).

wall((12, 7)).

wall((12, 5)).

wall((13, 7)).

wall((13, 5)).

wall((14, 7)).

wall((14, 5)).

wall((4, 3)).

wall((4, 4)).

wall((10, 4)).

wall((9, 2)).

wall((9, 0)).

wall((10, 2)).

wall((10, 0)).
is_link((9,3)). is_link((17,3)). 

wall((18, 3)).

wall((17, 4)).

wall((16, 3)).

wall((18, 2)).

wall((16, 2)).
%START
state_at(V0, T+1) :- time(T), is_link(V0), not adjacent(down, V1, V0), state_at(V1, T).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(left, V0, V1), state_at(V0, T), action(right, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(left, V0, V1), state_at(V1, T), action(left, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).
state_at(V1, T+1) :- time(T), not is_link(V1), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).

%END
%AAA
state_at((2, 1), 63).
%BBB
%CCC
time(63..150).
%DDD
%ANSWER SETS

%state_at((2,1),63)
%state_at((9,3),64)
%state_at((17,3),64)
%state_at((9,3),65)
%state_at((17,3),65)
%state_at((9,3),66)
%state_at((17,3),66)
%state_at((9,3),67)
%state_at((17,3),67)
%state_at((9,3),68)
%state_at((17,3),68)
%state_at((9,3),69)
%state_at((17,3),69)
%state_at((9,3),70)
%state_at((17,3),70)
%state_at((9,3),71)
%state_at((17,3),71)
%state_at((9,3),72)
%state_at((17,3),72)
%state_at((9,3),73)
%state_at((17,3),73)
%state_at((9,3),74)
%state_at((17,3),74)
%state_at((9,3),75)
%state_at((17,3),75)
%state_at((9,3),76)
%state_at((17,3),76)
%state_at((9,3),77)
%state_at((17,3),77)
%state_at((9,3),78)
%state_at((17,3),78)
%state_at((9,3),79)
%state_at((17,3),79)
%state_at((9,3),80)
%state_at((17,3),80)
%state_at((9,3),81)
%state_at((17,3),81)
%state_at((9,3),82)
%state_at((17,3),82)
%state_at((9,3),83)
%state_at((17,3),83)
%state_at((9,3),84)
%state_at((17,3),84)
%state_at((9,3),85)
%state_at((17,3),85)
%state_at((9,3),86)
%state_at((17,3),86)
%state_at((9,3),87)
%state_at((17,3),87)
%state_at((9,3),88)
%state_at((17,3),88)
%state_at((9,3),89)
%state_at((17,3),89)
%state_at((9,3),90)
%state_at((17,3),90)
%state_at((9,3),91)
%state_at((17,3),91)
%state_at((9,3),92)
%state_at((17,3),92)
%state_at((9,3),93)
%state_at((17,3),93)
%state_at((9,3),94)
%state_at((17,3),94)
%state_at((9,3),95)
%state_at((17,3),95)
%state_at((9,3),96)
%state_at((17,3),96)
%state_at((9,3),97)
%state_at((17,3),97)
%state_at((9,3),98)
%state_at((17,3),98)
%state_at((9,3),99)
%state_at((17,3),99)
%state_at((9,3),100)
%state_at((17,3),100)
%state_at((9,3),101)
%state_at((17,3),101)
%state_at((9,3),102)
%state_at((17,3),102)
%state_at((9,3),103)
%state_at((17,3),103)
%state_at((9,3),104)
%state_at((17,3),104)
%state_at((9,3),105)
%state_at((17,3),105)
%state_at((9,3),106)
%state_at((17,3),106)
%state_at((9,3),107)
%state_at((17,3),107)
%state_at((9,3),108)
%state_at((17,3),108)
%state_at((9,3),109)
%state_at((17,3),109)
%state_at((9,3),110)
%state_at((17,3),110)
%state_at((9,3),111)
%state_at((17,3),111)
%state_at((9,3),112)
%state_at((17,3),112)
%state_at((9,3),113)
%state_at((17,3),113)
%state_at((9,3),114)
%state_at((17,3),114)
%state_at((9,3),115)
%state_at((17,3),115)
%state_at((9,3),116)
%state_at((17,3),116)
%state_at((9,3),117)
%state_at((17,3),117)
%state_at((9,3),118)
%state_at((17,3),118)
%state_at((9,3),119)
%state_at((17,3),119)
%state_at((9,3),120)
%state_at((17,3),120)
%state_at((9,3),121)
%state_at((17,3),121)
%state_at((9,3),122)
%state_at((17,3),122)
%state_at((9,3),123)
%state_at((17,3),123)
%state_at((9,3),124)
%state_at((17,3),124)
%state_at((9,3),125)
%state_at((17,3),125)
%state_at((9,3),126)
%state_at((17,3),126)
%state_at((9,3),127)
%state_at((17,3),127)
%state_at((9,3),128)
%state_at((17,3),128)
%state_at((9,3),129)
%state_at((17,3),129)
%state_at((9,3),130)
%state_at((17,3),130)
%state_at((9,3),131)
%state_at((17,3),131)
%state_at((9,3),132)
%state_at((17,3),132)
%state_at((9,3),133)
%state_at((17,3),133)
%state_at((9,3),134)
%state_at((17,3),134)
%state_at((9,3),135)
%state_at((17,3),135)
%state_at((9,3),136)
%state_at((17,3),136)
%state_at((9,3),137)
%state_at((17,3),137)
%state_at((9,3),138)
%state_at((17,3),138)
%state_at((9,3),139)
%state_at((17,3),139)
%state_at((9,3),140)
%state_at((17,3),140)
%state_at((9,3),141)
%state_at((17,3),141)
%state_at((9,3),142)
%state_at((17,3),142)
%state_at((9,3),143)
%state_at((17,3),143)
%state_at((9,3),144)
%state_at((17,3),144)
%state_at((9,3),145)
%state_at((17,3),145)
%state_at((9,3),146)
%state_at((17,3),146)
%state_at((9,3),147)
%state_at((17,3),147)
%state_at((9,3),148)
%state_at((17,3),148)
%state_at((9,3),149)
%state_at((17,3),149)
%state_at((9,3),150)
%state_at((17,3),150)
%state_at((9,3),151)
%state_at((17,3),151)
%state_at((1,1),64)
%action(left,63)
%action(up,64)
%state_at((1,1),65)
%state_at((17,2),65)
%action(up,65)
%state_at((1,1),66)
%state_at((17,2),66)
%state_at((17,1),66)
