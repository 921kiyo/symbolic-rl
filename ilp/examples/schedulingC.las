slot(1..5,1..3).

neq(1, 2).
neq(1, 3).
neq(1, 4).
neq(1, 5).
neq(2, 1).
neq(2, 3).
neq(2, 4).
neq(2, 5).
neq(3, 1).
neq(3, 2).
neq(3, 4).
neq(3, 5).
neq(4, 1).
neq(4, 2).
neq(4, 3).
neq(4, 5).
neq(5, 1).
neq(5, 2).
neq(5, 3).
neq(5, 4).

type(1,1,jmc).
type(1,2,ccc).
type(1,3,jmc).
type(2,1,ccc).
type(2,2,ccc).
type(2,3,ccc).
type(3,1,ccc).
type(3,2,jmc).
type(3,3,ccc).
type(4,1,ccc).
type(4,2,jmc).
type(4,3,ccc).
type(5,1,ccc).
type(5,2,ccc).
type(5,3,ccc).

0 { assigned(X, Y) } 1 :- slot(X,Y).


%2, 10
#pos(e_1, { assigned(5,3), assigned(4,2), assigned(3,1), assigned(1,1), assigned(4,3), assigned(5,1), assigned(1,2) }, { assigned(1,3), assigned(2,2), assigned(3,3), assigned(2,1), assigned(2,3), assigned(3,2) }).

%3, 38
#pos(e_2, { assigned(5,2), assigned(1,2), assigned(3,3), assigned(1,1), assigned(4,3), assigned(1,3), assigned(3,2), assigned(2,3), assigned(3,1), assigned(5,3), assigned(5,1) }, { assigned(2,2) }).

%1, 14
#pos(e_3, { assigned(1,3), assigned(4,1), assigned(2,3), assigned(3,3), assigned(2,1) }, { assigned(3,1), assigned(2,2), assigned(3,2), assigned(1,1) }).

%1, 12
#pos(e_4, { assigned(3,3), assigned(1,2), assigned(4,3), assigned(2,1), assigned(1,3) }, { assigned(1,1), assigned(2,2), assigned(3,2), assigned(3,1) }).

%1, 2
#pos(e_5, { assigned(2,1), assigned(3,3), assigned(1,3), assigned(1,2) }, { assigned(3,2), assigned(2,2), assigned(2,3), assigned(3,1), assigned(1,1) }).

%2, 6
#pos(e_6, { assigned(1,3), assigned(2,1), assigned(2,2), assigned(1,1), assigned(5,1) }, { assigned(2,3), assigned(3,1), assigned(3,3), assigned(3,2), assigned(1,2) }).

%3, 28
#pos(e_7, { assigned(2,1), assigned(5,2), assigned(1,2), assigned(1,3), assigned(3,1), assigned(4,3), assigned(3,3), assigned(2,2), assigned(4,2) }, { assigned(2,3) }).

%3, 24
#pos(e_8, { assigned(1,2), assigned(1,1), assigned(2,3), assigned(4,3), assigned(3,1), assigned(1,3), assigned(4,1), assigned(5,2), assigned(2,1), assigned(3,2) }, { assigned(2,2), assigned(3,3) }).

%4, 12
#pos(e_9, { assigned(4,3), assigned(1,1), assigned(5,3), assigned(4,2), assigned(5,2), assigned(3,2), assigned(1,3) }, { assigned(2,3), assigned(2,1), assigned(3,1), assigned(1,2), assigned(2,2) }).

%3, 8
#pos(e_10, { assigned(5,3), assigned(1,3), assigned(4,2), assigned(5,2), assigned(2,3), assigned(1,1) }, { assigned(1,2), assigned(3,1), assigned(2,2), assigned(3,2), assigned(2,1), assigned(3,3) }).

%3, 10
#pos(e_11, { assigned(3,3), assigned(3,2), assigned(1,2), assigned(1,3), assigned(1,1) }, { assigned(3,1), assigned(2,1), assigned(2,3), assigned(2,2) }).

%3, 24
#pos(e_12, { assigned(5,2), assigned(3,3), assigned(5,3), assigned(3,1), assigned(2,2), assigned(2,1), assigned(1,3), assigned(4,2), assigned(4,3), assigned(1,1) }, { assigned(1,2), assigned(3,2), assigned(2,3) }).

%2, 38
#pos(e_13, { assigned(4,2), assigned(3,3), assigned(2,3), assigned(5,3), assigned(1,2), assigned(4,1), assigned(4,3) }, { assigned(3,2), assigned(2,2) }).

%2, 30
#pos(e_14, { assigned(3,2), assigned(5,2), assigned(1,2), assigned(4,3), assigned(2,3), assigned(5,1), assigned(4,2), assigned(3,1), assigned(3,3), assigned(4,1), assigned(5,3) }, { assigned(1,3), assigned(1,1), assigned(2,2), assigned(2,1) }).

%2, 8
#pos(e_15, { assigned(5,2), assigned(1,1), assigned(2,3), assigned(3,2), assigned(3,3), assigned(5,3) }, { assigned(2,2), assigned(1,3), assigned(3,1), assigned(2,1), assigned(1,2) }).

%3, 26
#pos(e_16, { assigned(1,1), assigned(4,3), assigned(1,3), assigned(2,1), assigned(4,2), assigned(5,2), assigned(5,3), assigned(1,2), assigned(2,2) }, { assigned(2,3), assigned(3,1), assigned(3,2) }).

%3, 26
#pos(e_17, { assigned(4,2), assigned(3,3), assigned(5,3), assigned(2,3), assigned(4,3), assigned(3,1), assigned(2,2), assigned(1,1), assigned(3,2) }, { assigned(1,3), assigned(2,1), assigned(1,2) }).

%0, 6
#pos(e_18, { assigned(3,1), assigned(5,1), assigned(2,1), assigned(1,2), assigned(2,3) }, { assigned(1,1), assigned(3,2), assigned(2,2), assigned(1,3), assigned(3,3) }).

%3, 10
#pos(e_19, { assigned(4,2), assigned(2,2), assigned(3,2), assigned(2,1), assigned(4,3), assigned(4,1), assigned(1,3) }, { assigned(1,1), assigned(3,1), assigned(2,3), assigned(1,2), assigned(3,3) }).

%4, 38
#pos(e_20, { assigned(5,2), assigned(3,2), assigned(4,1), assigned(5,1), assigned(2,3), assigned(4,2), assigned(2,1), assigned(3,3), assigned(3,1), assigned(4,3) }, { assigned(2,2), assigned(1,2) }).

%2, 20
#pos(e_21, { assigned(1,1), assigned(1,3), assigned(3,1), assigned(5,2), assigned(4,3), assigned(3,3), assigned(1,2), assigned(4,1), assigned(5,1) }, { assigned(2,3), assigned(2,1), assigned(2,2), assigned(3,2) }).

%3, 18
#pos(e_22, { assigned(5,3), assigned(4,3), assigned(4,1), assigned(4,2), assigned(5,1), assigned(1,1), assigned(3,1), assigned(1,3) }, { assigned(3,3), assigned(2,3), assigned(3,2), assigned(2,2), assigned(2,1) }).

%3, 10
#pos(e_23, { assigned(2,3), assigned(4,2), assigned(2,1), assigned(1,1), assigned(4,3), assigned(5,2) }, { assigned(3,3), assigned(2,2), assigned(3,1), assigned(1,3), assigned(1,2) }).

%3, 24
#pos(e_24, { assigned(4,1), assigned(1,3), assigned(3,3), assigned(1,1), assigned(3,1), assigned(5,2), assigned(2,1), assigned(3,2) }, { assigned(1,2) }).

%2, 18
#pos(e_25, { assigned(2,3), assigned(2,1), assigned(5,1), assigned(4,2), assigned(3,3), assigned(5,3), assigned(3,1) }, { assigned(1,3), assigned(1,1), assigned(1,2) }).

%3, 18
#pos(e_26, { assigned(1,2), assigned(5,1), assigned(1,1), assigned(5,2), assigned(3,2), assigned(3,1), assigned(4,3), assigned(4,2) }, { assigned(2,3), assigned(2,1), assigned(1,3), assigned(2,2) }).

%1, 10
#pos(e_27, { assigned(4,2), assigned(2,2), assigned(3,1), assigned(2,3), assigned(5,1), assigned(5,3) }, { assigned(1,3), assigned(3,3), assigned(2,1), assigned(1,2) }).

%3, 10
#pos(e_28, { assigned(4,3), assigned(5,2), assigned(1,3), assigned(1,1), assigned(4,2) }, { assigned(2,3), assigned(2,2), assigned(3,2), assigned(2,1) }).

%2, 24
#pos(e_29, { assigned(3,1), assigned(2,1), assigned(3,3), assigned(2,3), assigned(1,3), assigned(5,1), assigned(5,3) }, { assigned(3,2), assigned(2,2), assigned(1,2) }).

%2, 14
#pos(e_30, { assigned(3,2), assigned(5,2), assigned(1,2), assigned(4,3), assigned(3,3), assigned(5,1) }, { assigned(3,1), assigned(2,2), assigned(1,1), assigned(2,3) }).

%2, 24
#pos(e_31, { assigned(4,1), assigned(4,2), assigned(2,1), assigned(2,2), assigned(3,3), assigned(4,3), assigned(3,1), assigned(5,3), assigned(5,2), assigned(1,1) }, { assigned(3,2), assigned(2,3), assigned(1,2), assigned(1,3) }).

%2, 10
#pos(e_32, { assigned(1,1), assigned(3,3), assigned(3,2), assigned(2,2), assigned(5,1), assigned(5,3), assigned(4,1) }, { assigned(1,3), assigned(2,1), assigned(1,2), assigned(3,1) }).

%2, 14
#pos(e_33, { assigned(5,3), assigned(2,2), assigned(4,2), assigned(5,1), assigned(5,2), assigned(4,1) }, { assigned(3,2), assigned(3,1), assigned(2,3), assigned(1,1), assigned(1,2), assigned(3,3) }).

%0, 8
#pos(e_34, { assigned(2,1), assigned(2,3), assigned(5,2), assigned(4,1), assigned(3,1), assigned(5,3) }, { assigned(1,1), assigned(2,2), assigned(1,2), assigned(3,2), assigned(3,3), assigned(1,3) }).

%4, 20
#pos(e_35, { assigned(4,2), assigned(1,3), assigned(1,2), assigned(3,2), assigned(1,1), assigned(2,2), assigned(2,1), assigned(4,3), assigned(4,1) }, { assigned(3,1), assigned(2,3) }).

%2, 8
#pos(e_36, { assigned(1,3), assigned(4,3), assigned(1,1), assigned(2,1), assigned(3,1), assigned(1,2) }, { assigned(3,3), assigned(3,2), assigned(2,3), assigned(2,2) }).

%3, 26
#pos(e_37, { assigned(4,3), assigned(4,2), assigned(3,3), assigned(1,1), assigned(1,3), assigned(1,2), assigned(2,1), assigned(2,3), assigned(4,1), assigned(5,1) }, { assigned(3,2), assigned(3,1), assigned(2,2) }).

%1, 14
#pos(e_38, { assigned(2,1), assigned(2,3), assigned(5,3), assigned(3,3), assigned(4,3) }, { assigned(2,2), assigned(3,2), assigned(1,3), assigned(3,1) }).

%3, 38
#pos(e_39, { assigned(1,1), assigned(2,3), assigned(2,2), assigned(2,1), assigned(4,3), assigned(5,3), assigned(5,1), assigned(5,2) }, { assigned(1,2) }).

%2, 20
#pos(e_40, { assigned(4,1), assigned(5,1), assigned(4,2), assigned(3,3), assigned(4,3), assigned(2,3) }, { assigned(3,1), assigned(3,2), assigned(1,1), assigned(2,1), assigned(1,2) }).

%4, 42
#pos(e_41, { assigned(1,3), assigned(5,3), assigned(3,1), assigned(1,1), assigned(1,2), assigned(4,2), assigned(2,2), assigned(5,2), assigned(2,3), assigned(3,3) }, { assigned(2,1) }).

%2, 28
#pos(e_42, { assigned(3,1), assigned(5,1), assigned(1,1), assigned(1,2), assigned(4,3), assigned(2,2), assigned(4,1), assigned(2,3), assigned(2,1) }, { assigned(1,3) }).

%2, 4
#pos(e_43, { assigned(4,1), assigned(4,3), assigned(1,2), assigned(1,3), assigned(1,1) }, { assigned(2,1), assigned(3,2), assigned(3,1), assigned(2,3), assigned(2,2), assigned(3,3) }).

%1, 8
#pos(e_44, { assigned(5,1), assigned(1,3), assigned(4,1), assigned(1,2), assigned(2,1), assigned(3,3) }, { assigned(3,1), assigned(2,3), assigned(1,1), assigned(2,2), assigned(3,2) }).

%2, 10
#pos(e_45, { assigned(5,3), assigned(3,3), assigned(5,1), assigned(4,2), assigned(1,1), assigned(3,1), assigned(2,2) }, { assigned(2,1), assigned(2,3), assigned(1,3), assigned(3,2), assigned(1,2) }).

%3, 14
#pos(e_46, { assigned(5,1), assigned(2,2), assigned(3,2), assigned(5,3), assigned(1,3), assigned(4,2), assigned(1,2) }, { assigned(3,3), assigned(2,3), assigned(2,1), assigned(1,1), assigned(3,1) }).

%1, 6
#pos(e_47, { assigned(2,3), assigned(5,2), assigned(5,1), assigned(4,2) }, { assigned(3,3), assigned(1,2), assigned(3,2), assigned(3,1), assigned(1,3), assigned(2,1), assigned(1,1) }).

%1, 8
#pos(e_48, { assigned(4,1), assigned(5,2), assigned(3,2), assigned(5,1), assigned(5,3) }, { assigned(2,1), assigned(3,1), assigned(1,3), assigned(1,1) }).

%1, 10
#pos(e_49, { assigned(1,1), assigned(1,2), assigned(4,1), assigned(4,3), assigned(2,1), assigned(5,3), assigned(5,2) }, { assigned(2,3), assigned(3,2), assigned(1,3), assigned(2,2), assigned(3,3), assigned(3,1) }).

%2, 24
#pos(e_50, { assigned(3,3), assigned(1,1), assigned(4,1), assigned(5,1), assigned(2,1), assigned(4,3), assigned(1,2), assigned(5,3), assigned(1,3) }, { assigned(2,2), assigned(3,2), assigned(3,1), assigned(2,3) }).

%2, 20
#pos(e_51, { assigned(2,1), assigned(5,1), assigned(1,1), assigned(3,3), assigned(5,3), assigned(4,1), assigned(4,2), assigned(5,2), assigned(2,2) }, { assigned(1,3), assigned(3,2), assigned(2,3), assigned(1,2), assigned(3,1) }).

%3, 18
#pos(e_52, { assigned(4,1), assigned(3,1), assigned(2,1), assigned(1,3), assigned(3,3), assigned(5,2), assigned(4,3) }, { assigned(1,1), assigned(2,2), assigned(1,2), assigned(2,3) }).

%3, 6
#pos(e_53, { assigned(3,3), assigned(5,3), assigned(4,1), assigned(3,2), assigned(1,1), assigned(4,2) }, { assigned(3,1), assigned(1,2), assigned(1,3), assigned(2,1), assigned(2,3), assigned(2,2) }).

%4, 18
#pos(e_54, { assigned(2,1), assigned(4,2), assigned(2,2), assigned(1,3), assigned(5,1), assigned(1,2), assigned(1,1), assigned(3,2) }, { assigned(3,1), assigned(2,3), assigned(3,3) }).

%0, 6
#pos(e_55, { assigned(5,2), assigned(4,3), assigned(2,2), assigned(3,1), assigned(5,3), assigned(2,1) }, { assigned(1,3), assigned(1,2), assigned(3,2), assigned(3,3), assigned(2,3), assigned(1,1) }).

%1, 8
#pos(e_56, { assigned(2,2), assigned(3,1), assigned(5,3), assigned(4,2), assigned(3,3), assigned(5,2) }, { assigned(2,3), assigned(1,3), assigned(3,2), assigned(2,1), assigned(1,1), assigned(1,2) }).

%1, 24
#pos(e_57, { assigned(3,1), assigned(1,1), assigned(3,3), assigned(4,3), assigned(4,1), assigned(5,3), assigned(5,2), assigned(2,2), assigned(1,2), assigned(5,1) }, { assigned(2,1), assigned(1,3), assigned(2,3), assigned(3,2) }).

%2, 8
#pos(e_58, { assigned(5,2), assigned(1,3), assigned(4,3), assigned(3,3), assigned(3,2) }, { assigned(1,2), assigned(3,1), assigned(2,3), assigned(1,1), assigned(2,1) }).

%2, 16
#pos(e_59, { assigned(2,2), assigned(3,3), assigned(1,1), assigned(5,1), assigned(1,2), assigned(2,3), assigned(3,2), assigned(5,2) }, { assigned(2,1), assigned(3,1), assigned(1,3) }).

%3, 46
#pos(e_60, { assigned(1,2), assigned(3,1), assigned(1,3), assigned(5,1), assigned(3,2), assigned(2,3), assigned(4,2), assigned(5,2), assigned(5,3), assigned(4,1), assigned(2,2) }, {  }).

%1, 14
#pos(e_61, { assigned(1,3), assigned(2,1), assigned(3,3), assigned(5,1), assigned(4,3), assigned(5,3) }, { assigned(2,2), assigned(1,2), assigned(3,2), assigned(2,3) }).

%2, 20
#pos(e_62, { assigned(4,3), assigned(3,3), assigned(5,2), assigned(5,1), assigned(3,1), assigned(2,3), assigned(2,2) }, { assigned(2,1), assigned(1,2), assigned(3,2) }).

%1, 8
#pos(e_63, { assigned(1,2), assigned(5,2), assigned(1,1), assigned(3,3), assigned(5,3) }, { assigned(2,1), assigned(3,1), assigned(3,2), assigned(1,3) }).

%2, 14
#pos(e_64, { assigned(2,1), assigned(3,1), assigned(4,3), assigned(5,2), assigned(4,2), assigned(3,2) }, { assigned(1,3), assigned(2,3), assigned(1,1), assigned(1,2), assigned(2,2) }).

%2, 6
#pos(e_65, { assigned(1,3), assigned(1,1), assigned(1,2), assigned(4,1), assigned(2,1) }, { assigned(3,1), assigned(2,3), assigned(3,3), assigned(2,2), assigned(3,2) }).

%2, 20
#pos(e_66, { assigned(2,3), assigned(2,2), assigned(1,1), assigned(4,2), assigned(3,1), assigned(4,1), assigned(3,3), assigned(1,2), assigned(5,2) }, { assigned(3,2), assigned(1,3), assigned(2,1) }).

%1, 14
#pos(e_67, { assigned(4,3), assigned(2,3), assigned(3,2), assigned(4,1), assigned(5,2), assigned(2,1), assigned(3,1), assigned(1,2) }, { assigned(2,2), assigned(3,3), assigned(1,3), assigned(1,1) }).

%1, 12
#pos(e_68, { assigned(5,1), assigned(3,1), assigned(2,3), assigned(4,1), assigned(5,3) }, { assigned(2,1), assigned(3,3), assigned(3,2), assigned(1,1) }).

%0, 2
#pos(e_69, { assigned(3,1), assigned(2,2), assigned(2,1), assigned(2,3) }, { assigned(3,3), assigned(1,2), assigned(3,2), assigned(1,3), assigned(1,1) }).

%1, 6
#pos(e_70, { assigned(2,1), assigned(4,3), assigned(3,2), assigned(3,1), assigned(1,2), assigned(5,3) }, { assigned(1,3), assigned(2,3), assigned(1,1), assigned(2,2), assigned(3,3) }).

%4, 24
#pos(e_71, { assigned(3,2), assigned(2,2), assigned(4,2), assigned(5,3), assigned(5,1), assigned(1,1), assigned(2,3), assigned(4,1), assigned(3,3) }, { assigned(2,1), assigned(1,2), assigned(3,1) }).

%3, 12
#pos(e_72, { assigned(1,2), assigned(4,2), assigned(3,3), assigned(3,2), assigned(2,3), assigned(4,3) }, { assigned(1,3), assigned(2,1), assigned(3,1) }).

%3, 24
#pos(e_73, { assigned(5,2), assigned(1,2), assigned(1,1), assigned(2,1), assigned(3,2), assigned(4,2), assigned(4,3), assigned(5,1) }, { assigned(1,3), assigned(3,1), assigned(2,2), assigned(3,3), assigned(2,3) }).

%2, 14
#pos(e_74, { assigned(5,3), assigned(3,3), assigned(1,3), assigned(2,1), assigned(3,2), assigned(5,2) }, { assigned(1,1), assigned(3,1), assigned(2,2), assigned(1,2) }).

%1, 24
#pos(e_75, { assigned(3,1), assigned(4,3), assigned(3,2), assigned(4,1), assigned(2,1), assigned(5,3), assigned(2,3), assigned(5,2) }, { assigned(1,3), assigned(1,1) }).

%0, 0
#pos(e_76, { assigned(3,1), assigned(2,3) }, { assigned(2,2), assigned(3,2), assigned(1,2), assigned(3,3), assigned(2,1), assigned(1,1), assigned(1,3) }).

%3, 16
#pos(e_77, { assigned(3,2), assigned(1,3), assigned(4,3), assigned(4,2), assigned(4,1), assigned(5,3), assigned(2,1), assigned(2,3) }, { assigned(3,3), assigned(3,1), assigned(1,2), assigned(1,1), assigned(2,2) }).

%2, 12
#pos(e_78, { assigned(5,2), assigned(1,1), assigned(3,2), assigned(4,1), assigned(3,1), assigned(2,2) }, { assigned(2,1), assigned(3,3), assigned(2,3), assigned(1,3), assigned(1,2) }).

%2, 10
#pos(e_79, { assigned(1,3), assigned(3,2), assigned(3,3), assigned(3,1), assigned(2,2), assigned(5,3), assigned(5,1) }, { assigned(1,2), assigned(2,1), assigned(1,1), assigned(2,3) }).

%3, 34
#pos(e_80, { assigned(2,3), assigned(2,1), assigned(1,3), assigned(5,1), assigned(2,2), assigned(5,2), assigned(1,2) }, { assigned(3,1), assigned(1,1) }).

%3, 26
#pos(e_81, { assigned(1,2), assigned(3,1), assigned(4,2), assigned(1,3), assigned(5,1), assigned(2,3), assigned(3,3) }, { assigned(3,2), assigned(2,2) }).

%2, 16
#pos(e_82, { assigned(5,3), assigned(3,2), assigned(5,1), assigned(2,3), assigned(1,1), assigned(4,1), assigned(3,1), assigned(1,2) }, { assigned(3,3), assigned(1,3), assigned(2,1), assigned(2,2) }).

%2, 14
#pos(e_83, { assigned(4,3), assigned(4,2), assigned(3,3), assigned(4,1), assigned(3,2), assigned(2,1), assigned(5,1) }, { assigned(2,2), assigned(1,3), assigned(1,2), assigned(3,1) }).

%0, 8
#pos(e_84, { assigned(5,2), assigned(2,1), assigned(5,1), assigned(2,2), assigned(3,1) }, { assigned(2,3), assigned(3,3), assigned(1,3), assigned(1,1), assigned(3,2), assigned(1,2) }).

%0, 8
#pos(e_85, { assigned(4,1), assigned(3,3), assigned(5,2), assigned(5,3), assigned(5,1), assigned(3,1) }, { assigned(1,3), assigned(3,2), assigned(1,2), assigned(2,1), assigned(2,2), assigned(1,1) }).

%1, 8
#pos(e_86, { assigned(2,1), assigned(5,1), assigned(4,2), assigned(4,1), assigned(2,3), assigned(3,3) }, { assigned(1,1), assigned(1,3), assigned(3,1), assigned(1,2), assigned(3,2), assigned(2,2) }).

%2, 20
#pos(e_87, { assigned(2,3), assigned(3,1), assigned(1,2), assigned(2,2), assigned(1,3), assigned(5,1), assigned(3,2) }, { assigned(3,3), assigned(1,1) }).

%3, 36
#pos(e_88, { assigned(4,1), assigned(3,1), assigned(5,1), assigned(3,2), assigned(4,3), assigned(4,2), assigned(3,3), assigned(1,2), assigned(2,2), assigned(2,1), assigned(1,3) }, { assigned(1,1) }).

%2, 12
#pos(e_89, { assigned(4,2), assigned(1,1), assigned(5,1), assigned(5,2), assigned(5,3), assigned(4,1), assigned(2,2) }, { assigned(3,1), assigned(2,3), assigned(3,2), assigned(1,2), assigned(1,3) }).

%2, 6
#pos(e_90, { assigned(3,2), assigned(1,1), assigned(2,3), assigned(5,1), assigned(5,3), assigned(2,2) }, { assigned(3,1), assigned(1,3), assigned(2,1), assigned(1,2), assigned(3,3) }).

%1, 2
#pos(e_91, { assigned(2,1), assigned(2,2), assigned(5,3), assigned(1,3) }, { assigned(1,1), assigned(3,2), assigned(1,2), assigned(3,1), assigned(2,3), assigned(3,3) }).

%1, 14
#pos(e_92, { assigned(3,1), assigned(3,3), assigned(5,1), assigned(2,1), assigned(2,3), assigned(1,1) }, { assigned(2,2), assigned(1,3), assigned(1,2), assigned(3,2) }).

%3, 18
#pos(e_93, { assigned(1,3), assigned(4,2), assigned(2,3), assigned(5,2), assigned(3,2), assigned(1,2) }, { assigned(2,1), assigned(1,1), assigned(3,1), assigned(3,3), assigned(2,2) }).

%3, 20
#pos(e_94, { assigned(4,3), assigned(1,1), assigned(2,3), assigned(5,2), assigned(2,1), assigned(4,2), assigned(3,1), assigned(1,2) }, { assigned(1,3), assigned(3,3), assigned(2,2) }).

%1, 24
#pos(e_95, { assigned(5,2), assigned(3,1), assigned(4,3), assigned(1,1), assigned(5,1), assigned(2,1) }, { assigned(3,2), assigned(1,3), assigned(2,3) }).

%2, 24
#pos(e_96, { assigned(3,1), assigned(3,2), assigned(2,1), assigned(5,2), assigned(4,2), assigned(2,3), assigned(3,3) }, { assigned(1,1), assigned(1,3), assigned(1,2) }).

%2, 6
#pos(e_97, { assigned(1,1), assigned(5,3), assigned(1,3), assigned(5,2), assigned(2,3) }, { assigned(2,1), assigned(3,3), assigned(3,1), assigned(3,2), assigned(1,2) }).

%3, 24
#pos(e_98, { assigned(5,2), assigned(2,1), assigned(2,2), assigned(1,1), assigned(3,1), assigned(3,2), assigned(4,2), assigned(4,1), assigned(5,3) }, { assigned(1,3), assigned(3,3), assigned(1,2), assigned(2,3) }).

%3, 30
#pos(e_99, { assigned(1,2), assigned(2,2), assigned(5,1), assigned(1,3), assigned(2,3), assigned(3,1), assigned(4,1), assigned(5,2) }, { assigned(3,3), assigned(2,1) }).

%1, 10
#pos(e_100, { assigned(3,2), assigned(3,3), assigned(5,1), assigned(4,1), assigned(2,2), assigned(2,3), assigned(3,1) }, { assigned(1,2), assigned(1,1), assigned(2,1), assigned(1,3) }).

%2, 10
#pos(e_101, { assigned(5,3), assigned(3,3), assigned(5,1), assigned(1,1), assigned(4,2) }, { assigned(1,3), assigned(1,2), assigned(2,1), assigned(3,2), assigned(2,2), assigned(2,3) }).

%3, 24
#pos(e_102, { assigned(4,3), assigned(5,3), assigned(4,1), assigned(1,2), assigned(4,2), assigned(2,3), assigned(5,2), assigned(3,1), assigned(1,1), assigned(3,2) }, { assigned(1,3), assigned(3,3), assigned(2,2) }).

%1, 4
#pos(e_103, { assigned(3,1), assigned(3,3), assigned(1,1), assigned(5,2), assigned(4,3) }, { assigned(2,3), assigned(3,2), assigned(1,2), assigned(2,2), assigned(2,1), assigned(1,3) }).

%2, 30
#pos(e_104, { assigned(5,1), assigned(4,2), assigned(4,3), assigned(5,2), assigned(4,1), assigned(1,3), assigned(2,1), assigned(3,3), assigned(5,3), assigned(2,2), assigned(3,1) }, { assigned(3,2), assigned(1,2), assigned(1,1), assigned(2,3) }).

%1, 4
#pos(e_105, { assigned(2,3), assigned(5,2), assigned(5,3), assigned(1,2) }, { assigned(3,3), assigned(3,1), assigned(1,3), assigned(2,1), assigned(3,2) }).

%1, 6
#pos(e_106, { assigned(5,2), assigned(1,1), assigned(5,3), assigned(2,1), assigned(1,2), assigned(4,3) }, { assigned(2,2), assigned(3,3), assigned(1,3), assigned(3,1), assigned(2,3), assigned(3,2) }).

%3, 14
#pos(e_107, { assigned(1,2), assigned(3,1), assigned(1,1), assigned(4,3), assigned(4,2), assigned(2,2), assigned(3,2) }, { assigned(1,3), assigned(2,1), assigned(3,3), assigned(2,3) }).

%1, 12
#pos(e_108, { assigned(3,1), assigned(3,2), assigned(2,2), assigned(5,2), assigned(2,3), assigned(1,2) }, { assigned(1,1), assigned(1,3), assigned(3,3), assigned(2,1) }).

%2, 18
#pos(e_109, { assigned(3,3), assigned(5,1), assigned(1,2), assigned(4,3), assigned(2,3), assigned(5,2), assigned(4,2), assigned(3,2) }, { assigned(2,2), assigned(1,1), assigned(3,1), assigned(2,1), assigned(1,3) }).

%2, 10
#pos(e_110, { assigned(5,1), assigned(3,2), assigned(5,2), assigned(2,3), assigned(5,3), assigned(2,1), assigned(4,2) }, { assigned(1,2), assigned(1,1), assigned(3,3), assigned(3,1), assigned(1,3), assigned(2,2) }).

%3, 20
#pos(e_111, { assigned(4,3), assigned(3,1), assigned(1,2), assigned(4,2), assigned(2,2), assigned(1,3), assigned(5,3), assigned(5,2), assigned(1,1) }, { assigned(2,3), assigned(3,3), assigned(3,2) }).

%2, 2
#pos(e_112, { assigned(1,1), assigned(3,2), assigned(3,1), assigned(3,3) }, { assigned(2,1), assigned(1,3), assigned(2,2), assigned(1,2), assigned(2,3) }).

%2, 12
#pos(e_113, { assigned(1,2), assigned(2,2), assigned(2,1), assigned(4,3), assigned(4,1), assigned(4,2), assigned(1,1) }, { assigned(1,3), assigned(3,1), assigned(2,3), assigned(3,2), assigned(3,3) }).

%1, 8
#pos(e_114, { assigned(1,3), assigned(4,3), assigned(2,1) }, { assigned(1,2), assigned(3,3), assigned(3,1), assigned(2,3), assigned(1,1), assigned(2,2) }).

%3, 28
#pos(e_115, { assigned(2,2), assigned(1,1), assigned(1,2), assigned(5,3), assigned(4,1), assigned(1,3), assigned(3,3), assigned(4,3), assigned(2,3) }, { assigned(3,1), assigned(3,2), assigned(2,1) }).

%2, 10
#pos(e_116, { assigned(4,1), assigned(4,3), assigned(3,1), assigned(5,1), assigned(4,2), assigned(1,3) }, { assigned(3,3), assigned(2,1), assigned(2,3), assigned(1,2), assigned(3,2), assigned(2,2), assigned(1,1) }).

%0, 0
#pos(e_117, { assigned(4,1) }, { assigned(3,1), assigned(2,1), assigned(1,1), assigned(2,2), assigned(2,3), assigned(3,3), assigned(1,2), assigned(3,2), assigned(1,3) }).

%2, 22
#pos(e_118, { assigned(5,2), assigned(4,2), assigned(4,3), assigned(3,3), assigned(2,3), assigned(1,3) }, { assigned(1,1), assigned(2,2), assigned(3,2) }).

%2, 14
#pos(e_119, { assigned(5,1), assigned(4,2), assigned(1,1), assigned(2,2), assigned(4,3) }, { assigned(1,3), assigned(1,2), assigned(2,1), assigned(3,2) }).

%3, 38
#pos(e_120, { assigned(1,2), assigned(1,3), assigned(5,2), assigned(5,1), assigned(4,2), assigned(4,1), assigned(2,2), assigned(2,1), assigned(1,1), assigned(3,1), assigned(3,3), assigned(2,3) }, { assigned(3,2) }).

%3, 20
#pos(e_121, { assigned(2,2), assigned(4,2), assigned(1,1), assigned(5,1), assigned(1,2), assigned(5,3), assigned(3,2), assigned(3,1), assigned(3,3) }, { assigned(1,3), assigned(2,3), assigned(2,1) }).

%1, 14
#pos(e_122, { assigned(1,3), assigned(5,1), assigned(1,2), assigned(5,2), assigned(2,1), assigned(4,3), assigned(4,1) }, { assigned(1,1), assigned(2,3), assigned(3,2) }).

%2, 10
#pos(e_123, { assigned(2,2), assigned(3,1), assigned(1,1), assigned(4,3), assigned(5,3), assigned(3,2), assigned(5,1) }, { assigned(2,3), assigned(2,1), assigned(3,3), assigned(1,2) }).

%1, 18
#pos(e_124, { assigned(4,1), assigned(3,1), assigned(5,2), assigned(3,2), assigned(3,3), assigned(5,1), assigned(1,2), assigned(2,1) }, { assigned(1,3), assigned(1,1), assigned(2,3), assigned(2,2) }).

%3, 8
#pos(e_125, { assigned(3,2), assigned(1,2), assigned(4,2), assigned(5,3) }, { assigned(2,1), assigned(2,3), assigned(2,2), assigned(1,3), assigned(3,3) }).

%4, 14
#pos(e_126, { assigned(1,3), assigned(2,1), assigned(2,3), assigned(4,2), assigned(1,1), assigned(5,1), assigned(3,2) }, { assigned(1,2), assigned(3,1), assigned(2,2) }).

%2, 2
#pos(e_127, { assigned(5,2), assigned(4,1), assigned(1,1), assigned(1,3) }, { assigned(2,2), assigned(2,3), assigned(3,2), assigned(3,1), assigned(1,2) }).

%2, 18
#pos(e_128, { assigned(3,3), assigned(2,2), assigned(2,3), assigned(4,1), assigned(1,3), assigned(3,1), assigned(5,2) }, { assigned(2,1), assigned(3,2) }).

%0, 12
#pos(e_129, { assigned(4,1), assigned(2,1), assigned(5,1), assigned(1,2), assigned(3,1) }, { assigned(1,3), assigned(3,2), assigned(3,3), assigned(2,2), assigned(1,1), assigned(2,3) }).

%2, 2
#pos(e_130, { assigned(4,1), assigned(5,3), assigned(1,1), assigned(3,2) }, { assigned(3,1), assigned(1,3), assigned(3,3), assigned(2,2), assigned(1,2) }).

%2, 8
#pos(e_131, { assigned(4,1), assigned(1,2), assigned(4,2), assigned(1,1) }, { assigned(2,1), assigned(2,2), assigned(1,3), assigned(3,2), assigned(3,1) }).

%2, 24
#pos(e_132, { assigned(3,1), assigned(4,1), assigned(4,2), assigned(5,3), assigned(2,2), assigned(5,2), assigned(5,1), assigned(2,3), assigned(2,1), assigned(1,3) }, { assigned(1,2), assigned(1,1), assigned(3,3), assigned(3,2) }).

%3, 24
#pos(e_133, { assigned(5,3), assigned(3,2), assigned(2,2), assigned(4,2), assigned(2,3), assigned(3,1), assigned(3,3), assigned(5,2), assigned(1,3) }, { assigned(2,1), assigned(1,2), assigned(1,1) }).

%2, 6
#pos(e_134, { assigned(1,2), assigned(2,1), assigned(1,3), assigned(4,2), assigned(3,3), assigned(3,1) }, { assigned(2,3), assigned(1,1), assigned(2,2), assigned(3,2) }).

%0, 14
#pos(e_135, { assigned(5,2), assigned(2,2), assigned(5,3), assigned(4,3), assigned(2,3), assigned(5,1), assigned(4,1) }, { assigned(1,2), assigned(1,3), assigned(2,1), assigned(1,1), assigned(3,2), assigned(3,3) }).

%2, 14
#pos(e_136, { assigned(1,2), assigned(4,3), assigned(5,3), assigned(2,1), assigned(1,1), assigned(2,3), assigned(3,2), assigned(2,2) }, { assigned(1,3), assigned(3,3), assigned(3,1) }).

%2, 24
#pos(e_137, { assigned(1,2), assigned(1,3), assigned(4,1), assigned(4,3), assigned(5,2), assigned(2,2), assigned(4,2), assigned(3,3), assigned(5,3) }, { assigned(3,1), assigned(1,1), assigned(2,1), assigned(2,3), assigned(3,2) }).

%2, 8
#pos(e_138, { assigned(5,1), assigned(2,2), assigned(4,2), assigned(1,1), assigned(3,1) }, { assigned(2,1), assigned(1,2), assigned(3,3), assigned(1,3), assigned(3,2), assigned(2,3) }).

%2, 34
#pos(e_139, { assigned(4,1), assigned(3,3), assigned(3,2), assigned(4,2), assigned(2,2), assigned(4,3), assigned(5,1), assigned(1,2), assigned(5,2) }, { assigned(1,1), assigned(2,3), assigned(1,3) }).

%0, 2
#pos(e_140, { assigned(4,3), assigned(3,1), assigned(5,2), assigned(3,3) }, { assigned(1,2), assigned(1,1), assigned(2,3), assigned(2,2), assigned(2,1), assigned(3,2) }).

%3, 16
#pos(e_141, { assigned(4,2), assigned(1,1), assigned(2,1), assigned(2,3), assigned(5,1), assigned(1,3) }, { assigned(3,3), assigned(3,1), assigned(1,2), assigned(3,2) }).

%2, 10
#pos(e_142, { assigned(5,3), assigned(3,1), assigned(4,3), assigned(4,2), assigned(1,1), assigned(5,1), assigned(1,2) }, { assigned(1,3), assigned(3,3), assigned(3,2), assigned(2,2), assigned(2,3), assigned(2,1) }).

%2, 10
#pos(e_143, { assigned(1,2), assigned(5,2), assigned(4,1), assigned(2,1), assigned(4,2), assigned(5,3), assigned(1,3) }, { assigned(3,1), assigned(2,3), assigned(3,2), assigned(2,2), assigned(1,1), assigned(3,3) }).

%2, 8
#pos(e_144, { assigned(2,2), assigned(5,2), assigned(1,1), assigned(4,1), assigned(3,2), assigned(2,3) }, { assigned(1,2), assigned(3,3), assigned(1,3), assigned(3,1), assigned(2,1) }).

%3, 20
#pos(e_145, { assigned(5,2), assigned(1,1), assigned(1,3), assigned(1,2), assigned(3,3), assigned(3,1), assigned(3,2), assigned(5,3), assigned(2,2) }, { assigned(2,3), assigned(2,1) }).

%3, 18
#pos(e_146, { assigned(4,3), assigned(1,3), assigned(2,3), assigned(4,2), assigned(3,1), assigned(4,1), assigned(3,2), assigned(2,2) }, { assigned(1,1), assigned(1,2), assigned(2,1), assigned(3,3) }).

%2, 6
#pos(e_147, { assigned(1,3), assigned(2,1), assigned(3,1), assigned(3,2), assigned(4,1) }, { assigned(2,3), assigned(3,3), assigned(1,2), assigned(1,1), assigned(2,2) }).

%1, 4
#pos(e_148, { assigned(5,1), assigned(2,1), assigned(3,3), assigned(4,2), assigned(4,3) }, { assigned(3,2), assigned(1,1), assigned(2,3), assigned(1,2), assigned(1,3), assigned(2,2) }).

%1, 20
#pos(e_149, { assigned(4,1), assigned(5,3), assigned(2,2), assigned(1,1), assigned(5,1), assigned(1,2), assigned(5,2), assigned(3,1), assigned(2,3) }, { assigned(3,3), assigned(2,1), assigned(1,3), assigned(3,2) }).

%1, 18
#pos(e_150, { assigned(5,3), assigned(5,2), assigned(3,2), assigned(4,3), assigned(4,1), assigned(1,2), assigned(2,2) }, { assigned(2,1), assigned(3,3), assigned(1,3), assigned(3,1), assigned(1,1) }).

%2, 14
#pos(e_151, { assigned(3,1), assigned(4,2), assigned(5,2), assigned(2,2), assigned(3,2), assigned(2,3), assigned(3,3) }, { assigned(1,2), assigned(1,3), assigned(1,1), assigned(2,1) }).

%0, 0
#pos(e_152, { assigned(2,2), assigned(4,1) }, { assigned(1,1), assigned(3,3), assigned(3,1), assigned(1,2), assigned(2,3), assigned(1,3), assigned(3,2), assigned(2,1) }).

%2, 20
#pos(e_153, { assigned(5,2), assigned(4,2), assigned(2,1), assigned(5,3), assigned(1,2), assigned(3,3), assigned(2,2), assigned(3,1), assigned(1,1) }, { assigned(2,3), assigned(1,3), assigned(3,2) }).

%3, 10
#pos(e_154, { assigned(3,2), assigned(3,1), assigned(2,3), assigned(1,2), assigned(4,3), assigned(4,2), assigned(1,1) }, { assigned(1,3), assigned(2,2), assigned(2,1) }).

%3, 18
#pos(e_155, { assigned(1,1), assigned(2,1), assigned(5,2), assigned(3,2), assigned(1,3), assigned(4,3), assigned(3,3), assigned(3,1), assigned(2,2) }, { assigned(2,3), assigned(1,2) }).

%1, 2
#pos(e_156, { assigned(2,3), assigned(2,2), assigned(5,1), assigned(4,2) }, { assigned(2,1), assigned(3,2), assigned(3,3), assigned(1,1), assigned(1,3), assigned(3,1), assigned(1,2) }).

%2, 10
#pos(e_157, { assigned(3,3), assigned(4,1), assigned(1,2), assigned(2,2), assigned(1,3), assigned(5,1), assigned(4,2) }, { assigned(1,1), assigned(2,1), assigned(3,1), assigned(3,2), assigned(2,3) }).

%2, 8
#pos(e_158, { assigned(3,1), assigned(2,2), assigned(4,2), assigned(1,3), assigned(5,1), assigned(2,1) }, { assigned(3,2), assigned(3,3), assigned(1,1), assigned(2,3), assigned(1,2) }).

%3, 24
#pos(e_159, { assigned(2,2), assigned(3,3), assigned(5,1), assigned(5,2), assigned(2,3), assigned(4,2), assigned(3,2), assigned(1,3), assigned(5,3) }, { assigned(3,1), assigned(1,2), assigned(1,1), assigned(2,1) }).

%0, 4
#pos(e_160, { assigned(4,3), assigned(5,1), assigned(5,2), assigned(1,2), assigned(2,1) }, { assigned(3,3), assigned(1,3), assigned(3,1), assigned(1,1), assigned(2,2), assigned(3,2), assigned(2,3) }).

%2, 16
#pos(e_161, { assigned(3,1), assigned(3,2), assigned(2,1), assigned(2,3), assigned(4,3), assigned(5,1), assigned(1,1), assigned(2,2) }, { assigned(1,3), assigned(3,3), assigned(1,2) }).

%1, 12
#pos(e_162, { assigned(4,2), assigned(2,2), assigned(5,1), assigned(5,2), assigned(4,1) }, { assigned(1,1), assigned(1,2), assigned(2,3), assigned(3,1) }).

%0, 2
#pos(e_163, { assigned(2,2), assigned(4,1), assigned(5,2) }, { assigned(2,3), assigned(3,1), assigned(1,1), assigned(1,3), assigned(1,2), assigned(2,1), assigned(3,2), assigned(3,3) }).

%4, 38
#pos(e_164, { assigned(1,1), assigned(4,3), assigned(1,3), assigned(2,1), assigned(3,1), assigned(3,3), assigned(1,2), assigned(2,2), assigned(3,2), assigned(5,2), assigned(4,2), assigned(5,3) }, { assigned(2,3) }).

%1, 18
#pos(e_165, { assigned(4,1), assigned(1,2), assigned(5,3), assigned(4,2), assigned(5,2), assigned(2,3), assigned(5,1), assigned(4,3) }, { assigned(3,2), assigned(1,3), assigned(1,1), assigned(2,2) }).

%1, 14
#pos(e_166, { assigned(5,3), assigned(3,2), assigned(2,3), assigned(1,2), assigned(5,2), assigned(2,2) }, { assigned(3,1), assigned(2,1), assigned(3,3), assigned(1,1), assigned(1,3) }).

%1, 10
#pos(e_167, { assigned(4,1), assigned(4,3), assigned(5,1), assigned(1,2), assigned(3,2), assigned(5,3), assigned(2,3) }, { assigned(3,3), assigned(3,1), assigned(1,3), assigned(2,2), assigned(1,1), assigned(2,1) }).

%1, 12
#pos(e_168, { assigned(3,1), assigned(5,2), assigned(1,3), assigned(2,1), assigned(5,3), assigned(4,1), assigned(4,3) }, { assigned(1,1), assigned(2,2), assigned(3,2), assigned(1,2), assigned(2,3), assigned(3,3) }).

%4, 36
#pos(e_169, { assigned(5,3), assigned(2,2), assigned(1,1), assigned(1,2), assigned(1,3), assigned(3,1), assigned(4,2), assigned(2,1), assigned(3,3) }, { assigned(2,3) }).

%3, 14
#pos(e_170, { assigned(4,2), assigned(1,3), assigned(3,2), assigned(5,3), assigned(4,3), assigned(3,1), assigned(1,2) }, { assigned(1,1), assigned(2,3), assigned(3,3), assigned(2,2) }).

%2, 14
#pos(e_171, { assigned(5,3), assigned(2,3), assigned(5,1), assigned(3,2), assigned(1,3), assigned(2,1) }, { assigned(2,2), assigned(1,2), assigned(1,1) }).

%1, 2
#pos(e_172, { assigned(3,1), assigned(2,2), assigned(3,2), assigned(5,3) }, { assigned(2,1), assigned(1,3), assigned(2,3), assigned(1,2), assigned(3,3), assigned(1,1) }).

%1, 6
#pos(e_173, { assigned(4,3), assigned(1,3), assigned(5,2), assigned(3,3) }, { assigned(2,3), assigned(1,1), assigned(3,1), assigned(1,2), assigned(2,2) }).

%2, 8
#pos(e_174, { assigned(4,3), assigned(3,1), assigned(3,2), assigned(4,1), assigned(4,2), assigned(1,2) }, { assigned(1,1), assigned(2,3), assigned(3,3), assigned(2,2), assigned(1,3), assigned(2,1) }).

%3, 20
#pos(e_175, { assigned(1,1), assigned(2,2), assigned(3,3), assigned(4,2), assigned(2,3), assigned(5,1), assigned(3,1), assigned(5,3) }, { assigned(1,2), assigned(2,1) }).

%0, 12
#pos(e_176, { assigned(5,2), assigned(2,3), assigned(4,3), assigned(2,1), assigned(3,1), assigned(5,1) }, { assigned(3,3), assigned(2,2), assigned(1,2), assigned(1,3), assigned(3,2) }).

%1, 2
#pos(e_177, { assigned(3,3), assigned(5,1), assigned(4,3), assigned(4,2) }, { assigned(3,2), assigned(1,1), assigned(3,1), assigned(1,2), assigned(2,3), assigned(1,3), assigned(2,1), assigned(2,2) }).

%2, 8
#pos(e_178, { assigned(1,3), assigned(5,2), assigned(1,1), assigned(3,3), assigned(5,3), assigned(5,1) }, { assigned(2,1), assigned(2,3), assigned(3,2), assigned(1,2), assigned(2,2), assigned(3,1) }).

%1, 24
#pos(e_179, { assigned(4,3), assigned(3,3), assigned(4,2), assigned(2,1), assigned(4,1), assigned(5,2), assigned(5,3), assigned(3,1), assigned(1,2) }, { assigned(2,3), assigned(1,3), assigned(1,1), assigned(2,2) }).

%3, 14
#pos(e_180, { assigned(1,3), assigned(1,2), assigned(2,2), assigned(3,3), assigned(1,1), assigned(4,2), assigned(3,1), assigned(5,1) }, { assigned(2,1), assigned(3,2), assigned(2,3) }).

%2, 4
#pos(e_181, { assigned(1,2), assigned(1,1), assigned(3,2), assigned(4,1), assigned(2,3) }, { assigned(3,1), assigned(2,1), assigned(1,3), assigned(3,3), assigned(2,2) }).

%2, 2
#pos(e_182, { assigned(5,1), assigned(4,2), assigned(3,2), assigned(2,3) }, { assigned(2,2), assigned(1,2), assigned(1,1), assigned(3,1), assigned(1,3), assigned(3,3), assigned(2,1) }).

%2, 20
#pos(e_183, { assigned(3,2), assigned(4,3), assigned(2,2), assigned(2,1), assigned(2,3), assigned(4,2), assigned(5,2), assigned(4,1) }, { assigned(3,1), assigned(3,3), assigned(1,1), assigned(1,3), assigned(1,2) }).

%2, 14
#pos(e_184, { assigned(3,1), assigned(4,1), assigned(1,3), assigned(5,2), assigned(1,2), assigned(5,1), assigned(2,3) }, { assigned(2,2), assigned(2,1), assigned(1,1), assigned(3,3) }).

%2, 16
#pos(e_185, { assigned(1,3), assigned(2,1), assigned(3,1), assigned(3,2), assigned(3,3), assigned(5,1), assigned(2,2), assigned(4,1) }, { assigned(1,1), assigned(2,3), assigned(1,2) }).

%2, 24
#pos(e_186, { assigned(3,1), assigned(4,2), assigned(5,3), assigned(1,2), assigned(4,1), assigned(2,1), assigned(4,3), assigned(2,2), assigned(1,3) }, { assigned(3,2), assigned(3,3), assigned(2,3), assigned(1,1) }).

%1, 8
#pos(e_187, { assigned(3,1), assigned(1,3), assigned(2,2), assigned(2,3), assigned(4,3), assigned(4,1) }, { assigned(3,3), assigned(1,1), assigned(3,2), assigned(2,1), assigned(1,2) }).

%2, 12
#pos(e_188, { assigned(3,1), assigned(2,2), assigned(3,2), assigned(1,2), assigned(2,1), assigned(1,1), assigned(3,3) }, { assigned(2,3), assigned(1,3) }).

%1, 10
#pos(e_189, { assigned(1,2), assigned(1,1), assigned(3,3), assigned(5,2), assigned(4,3), assigned(4,1) }, { assigned(1,3), assigned(2,2), assigned(3,2), assigned(3,1) }).

%3, 28
#pos(e_190, { assigned(1,2), assigned(1,3), assigned(4,2), assigned(3,3), assigned(2,3), assigned(3,1), assigned(4,3), assigned(5,3), assigned(5,1), assigned(3,2) }, { assigned(2,2), assigned(1,1), assigned(2,1) }).

%1, 4
#pos(e_191, { assigned(2,1), assigned(3,1), assigned(2,3), assigned(3,2), assigned(5,2) }, { assigned(1,1), assigned(2,2), assigned(1,2), assigned(1,3), assigned(3,3) }).

%2, 14
#pos(e_192, { assigned(4,2), assigned(1,3), assigned(4,3), assigned(3,3), assigned(3,1), assigned(2,3), assigned(4,1) }, { assigned(1,2), assigned(3,2), assigned(2,2), assigned(1,1), assigned(2,1) }).

%3, 34
#pos(e_193, { assigned(4,2), assigned(3,1), assigned(4,1), assigned(4,3), assigned(1,1), assigned(1,2), assigned(1,3), assigned(3,3), assigned(5,1), assigned(2,3), assigned(5,3) }, { assigned(2,1), assigned(2,2), assigned(3,2) }).

%3, 20
#pos(e_194, { assigned(5,2), assigned(2,1), assigned(4,3), assigned(2,3), assigned(4,2), assigned(3,2), assigned(3,3), assigned(1,1), assigned(2,2) }, { assigned(1,3), assigned(1,2), assigned(3,1) }).

%3, 26
#pos(e_195, { assigned(3,1), assigned(1,1), assigned(1,3), assigned(1,2), assigned(3,3), assigned(4,3), assigned(5,2), assigned(2,2), assigned(4,2), assigned(2,3) }, { assigned(2,1), assigned(3,2) }).

%2, 18
#pos(e_196, { assigned(1,1), assigned(2,1), assigned(3,2), assigned(4,3), assigned(5,1), assigned(2,2), assigned(2,3), assigned(3,3), assigned(1,2) }, { assigned(1,3), assigned(3,1) }).

%2, 18
#pos(e_197, { assigned(3,3), assigned(1,3), assigned(2,3), assigned(2,2), assigned(5,3), assigned(5,2), assigned(3,2), assigned(5,1) }, { assigned(1,2), assigned(1,1), assigned(3,1), assigned(2,1) }).

%3, 14
#pos(e_198, { assigned(4,1), assigned(5,2), assigned(4,2), assigned(5,3), assigned(1,3), assigned(1,1) }, { assigned(1,2), assigned(3,2), assigned(2,3), assigned(2,2) }).

%1, 2
#pos(e_199, { assigned(3,3), assigned(3,2), assigned(4,3), assigned(2,1) }, { assigned(1,3), assigned(1,1), assigned(2,2), assigned(3,1), assigned(1,2), assigned(2,3) }).

%2, 14
#pos(e_200, { assigned(2,2), assigned(3,1), assigned(1,3), assigned(5,1), assigned(1,2), assigned(4,1), assigned(1,1) }, { assigned(3,3), assigned(3,2), assigned(2,1), assigned(2,3) }).

%3, 16
#pos(e_201, { assigned(3,2), assigned(2,1), assigned(1,3), assigned(1,1), assigned(2,3), assigned(4,1), assigned(3,1), assigned(1,2) }, { assigned(2,2), assigned(3,3) }).

%2, 4
#pos(e_202, { assigned(3,2), assigned(2,1), assigned(1,1), assigned(1,2) }, { assigned(2,2), assigned(1,3), assigned(3,1), assigned(2,3), assigned(3,3) }).

%2, 14
#pos(e_203, { assigned(3,1), assigned(1,1), assigned(4,3), assigned(4,1), assigned(2,1), assigned(5,2), assigned(3,2) }, { assigned(2,2), assigned(2,3), assigned(1,2), assigned(3,3), assigned(1,3) }).

%3, 20
#pos(e_204, { assigned(1,1), assigned(2,2), assigned(1,3), assigned(3,1), assigned(3,2), assigned(2,1), assigned(3,3), assigned(4,3), assigned(4,1) }, { assigned(1,2), assigned(2,3) }).

%0, 14
#pos(e_205, { assigned(5,3), assigned(5,1), assigned(4,3), assigned(2,3), assigned(3,3), assigned(2,1) }, { assigned(1,2), assigned(3,2), assigned(2,2), assigned(1,1) }).

%2, 18
#pos(e_206, { assigned(4,3), assigned(2,1), assigned(5,1), assigned(1,3), assigned(3,1), assigned(2,3) }, { assigned(1,1), assigned(3,3), assigned(3,2) }).

%4, 24
#pos(e_207, { assigned(5,3), assigned(2,2), assigned(1,1), assigned(1,2), assigned(3,1), assigned(3,3), assigned(1,3), assigned(3,2), assigned(4,2) }, { assigned(2,3) }).

%0, 8
#pos(e_208, { assigned(5,3), assigned(2,3), assigned(4,1), assigned(2,1), assigned(3,3) }, { assigned(1,1), assigned(1,3), assigned(2,2), assigned(1,2), assigned(3,1) }).

%2, 10
#pos(e_209, { assigned(4,2), assigned(2,1), assigned(3,1), assigned(2,3), assigned(5,2), assigned(1,1), assigned(5,3) }, { assigned(2,2), assigned(3,2), assigned(1,3), assigned(3,3), assigned(1,2) }).

%2, 14
#pos(e_210, { assigned(5,1), assigned(5,2), assigned(2,3), assigned(4,2), assigned(3,1), assigned(3,3), assigned(1,2), assigned(1,3) }, { assigned(1,1), assigned(3,2), assigned(2,2), assigned(2,1) }).

%1, 6
#pos(e_211, { assigned(5,1), assigned(2,3), assigned(1,1), assigned(3,1) }, { assigned(2,2), assigned(1,2), assigned(3,2), assigned(3,3), assigned(1,3), assigned(2,1) }).

%3, 24
#pos(e_212, { assigned(5,3), assigned(1,1), assigned(3,1), assigned(3,3), assigned(1,2), assigned(2,2), assigned(4,2), assigned(5,2), assigned(1,3), assigned(4,1) }, { assigned(3,2), assigned(2,3), assigned(2,1) }).

%1, 6
#pos(e_213, { assigned(5,2), assigned(2,2), assigned(1,3), assigned(3,1), assigned(1,2) }, { assigned(3,2), assigned(1,1), assigned(3,3), assigned(2,1), assigned(2,3) }).

%2, 10
#pos(e_214, { assigned(1,3), assigned(5,1), assigned(3,1), assigned(4,3), assigned(3,2), assigned(5,2), assigned(5,3) }, { assigned(2,1), assigned(1,2), assigned(2,3), assigned(1,1), assigned(3,3) }).

%2, 12
#pos(e_215, { assigned(1,1), assigned(1,2), assigned(4,2), assigned(5,1), assigned(2,2), assigned(3,1), assigned(4,3) }, { assigned(2,1), assigned(2,3), assigned(3,3), assigned(1,3), assigned(3,2) }).

%2, 14
#pos(e_216, { assigned(5,3), assigned(2,3), assigned(3,1), assigned(1,2), assigned(1,1), assigned(4,1), assigned(3,2), assigned(2,2) }, { assigned(3,3), assigned(2,1), assigned(1,3) }).

%0, 12
#pos(e_217, { assigned(5,3), assigned(5,2), assigned(2,3), assigned(3,3), assigned(4,3) }, { assigned(1,2), assigned(2,1), assigned(1,1), assigned(3,2), assigned(1,3) }).

%3, 12
#pos(e_218, { assigned(2,3), assigned(5,3), assigned(1,1), assigned(4,2), assigned(3,3), assigned(3,2), assigned(2,2) }, { assigned(1,3), assigned(1,2), assigned(2,1), assigned(3,1) }).

%2, 20
#pos(e_219, { assigned(4,3), assigned(1,3), assigned(3,3), assigned(5,2), assigned(5,1), assigned(1,2), assigned(4,2) }, { assigned(3,1), assigned(2,3), assigned(2,1), assigned(3,2), assigned(1,1) }).

%3, 14
#pos(e_220, { assigned(4,3), assigned(1,1), assigned(4,1), assigned(4,2), assigned(3,2) }, { assigned(1,3), assigned(2,2), assigned(3,3), assigned(3,1), assigned(2,3) }).

%2, 20
#pos(e_221, { assigned(2,2), assigned(5,2), assigned(1,1), assigned(3,1), assigned(5,1), assigned(3,3), assigned(5,3), assigned(4,1), assigned(3,2) }, { assigned(1,2), assigned(2,3), assigned(2,1), assigned(1,3) }).

%2, 8
#pos(e_222, { assigned(4,3), assigned(1,2), assigned(1,3), assigned(3,1), assigned(2,3), assigned(1,1) }, { assigned(3,3), assigned(2,1), assigned(2,2), assigned(3,2) }).

%3, 18
#pos(e_223, { assigned(3,2), assigned(1,1), assigned(3,1), assigned(1,2), assigned(3,3), assigned(4,3), assigned(1,3), assigned(2,2), assigned(2,1) }, { assigned(2,3) }).

%2, 26
#pos(e_224, { assigned(2,1), assigned(1,2), assigned(5,3), assigned(3,1), assigned(5,1), assigned(4,2), assigned(4,3), assigned(4,1), assigned(1,3), assigned(2,3) }, { assigned(1,1), assigned(3,2), assigned(3,3) }).

%3, 14
#pos(e_225, { assigned(3,3), assigned(4,1), assigned(1,3), assigned(3,2), assigned(4,3), assigned(1,1), assigned(2,2) }, { assigned(3,1), assigned(2,3), assigned(2,1) }).

%1, 14
#pos(e_226, { assigned(5,3), assigned(5,2), assigned(4,1), assigned(3,1), assigned(1,2), assigned(2,3), assigned(3,2), assigned(3,3) }, { assigned(2,1), assigned(2,2), assigned(1,1), assigned(1,3) }).

%2, 14
#pos(e_227, { assigned(2,2), assigned(5,2), assigned(3,1), assigned(3,3), assigned(2,1), assigned(1,1), assigned(5,3), assigned(1,3) }, { assigned(2,3), assigned(3,2), assigned(1,2) }).

%1, 16
#pos(e_228, { assigned(2,3), assigned(2,2), assigned(1,2), assigned(3,1), assigned(5,3), assigned(5,1) }, { assigned(2,1), assigned(3,3), assigned(3,2), assigned(1,1) }).

%2, 24
#pos(e_229, { assigned(3,1), assigned(2,1), assigned(5,3), assigned(4,1), assigned(1,1), assigned(5,1), assigned(5,2) }, { assigned(1,3), assigned(1,2), assigned(3,2), assigned(2,3), assigned(2,2) }).

%0, 6
#pos(e_230, { assigned(5,2), assigned(1,2), assigned(4,1), assigned(2,1), assigned(3,3), assigned(5,3) }, { assigned(3,1), assigned(2,2), assigned(1,3), assigned(1,1), assigned(2,3), assigned(3,2) }).

%1, 8
#pos(e_231, { assigned(3,3), assigned(4,2), assigned(5,1), assigned(2,3), assigned(2,1), assigned(3,1) }, { assigned(1,3), assigned(1,1), assigned(3,2), assigned(1,2), assigned(2,2) }).

%1, 14
#pos(e_232, { assigned(2,2), assigned(3,1), assigned(2,3), assigned(5,3), assigned(4,3), assigned(1,2), assigned(5,1), assigned(3,2) }, { assigned(1,1), assigned(1,3), assigned(2,1), assigned(3,3) }).

%2, 22
#pos(e_233, { assigned(4,3), assigned(4,2), assigned(2,2), assigned(5,2), assigned(2,1), assigned(1,2) }, { assigned(1,3), assigned(3,1), assigned(3,3), assigned(1,1) }).

%2, 8
#pos(e_234, { assigned(1,2), assigned(5,2), assigned(3,3), assigned(1,3), assigned(1,1), assigned(2,2) }, { assigned(3,2), assigned(3,1), assigned(2,1), assigned(2,3) }).

%1, 8
#pos(e_235, { assigned(5,3), assigned(3,1), assigned(3,2), assigned(2,2), assigned(5,1), assigned(2,1) }, { assigned(2,3), assigned(3,3), assigned(1,3), assigned(1,1), assigned(1,2) }).

%0, 20
#pos(e_236, { assigned(3,3), assigned(1,2), assigned(2,3), assigned(4,1), assigned(5,3), assigned(5,2), assigned(2,1) }, { assigned(3,1), assigned(1,3), assigned(1,1), assigned(3,2) }).

%3, 20
#pos(e_237, { assigned(3,3), assigned(4,3), assigned(1,3), assigned(2,3), assigned(3,2), assigned(5,2), assigned(2,2), assigned(3,1) }, { assigned(1,2), assigned(2,1) }).

%1, 14
#pos(e_238, { assigned(5,1), assigned(2,2), assigned(2,1), assigned(1,1), assigned(1,2), assigned(4,3) }, { assigned(3,1), assigned(3,2), assigned(1,3), assigned(3,3), assigned(2,3) }).

%3, 6
#pos(e_239, { assigned(3,2), assigned(4,3), assigned(1,3), assigned(4,2), assigned(3,1), assigned(5,1) }, { assigned(2,1), assigned(3,3), assigned(2,3), assigned(2,2), assigned(1,2), assigned(1,1) }).

%3, 10
#pos(e_240, { assigned(3,3), assigned(1,3), assigned(3,2), assigned(5,3), assigned(5,1), assigned(3,1) }, { assigned(1,2), assigned(2,2), assigned(2,3), assigned(2,1) }).

%3, 24
#pos(e_241, { assigned(5,1), assigned(3,1), assigned(2,2), assigned(1,1), assigned(5,3), assigned(1,3), assigned(2,1), assigned(5,2), assigned(3,2), assigned(2,3) }, { assigned(1,2), assigned(3,3) }).

%1, 14
#pos(e_242, { assigned(2,2), assigned(5,2), assigned(3,1), assigned(3,3), assigned(4,3), assigned(3,2), assigned(2,3), assigned(2,1) }, { assigned(1,3), assigned(1,1), assigned(1,2) }).

%2, 18
#pos(e_243, { assigned(4,3), assigned(1,3), assigned(5,2), assigned(3,3), assigned(2,2), assigned(4,2), assigned(1,2) }, { assigned(2,1), assigned(3,2), assigned(3,1), assigned(1,1) }).

%1, 2
#pos(e_244, { assigned(4,2), assigned(3,3), assigned(2,1), assigned(2,3) }, { assigned(3,2), assigned(1,3), assigned(1,2), assigned(3,1), assigned(1,1), assigned(2,2) }).

%3, 18
#pos(e_245, { assigned(3,3), assigned(3,2), assigned(5,3), assigned(2,2), assigned(1,3), assigned(4,3), assigned(4,2), assigned(3,1) }, { assigned(1,1), assigned(2,3), assigned(2,1), assigned(1,2) }).

%2, 16
#pos(e_246, { assigned(3,3), assigned(3,2), assigned(4,3), assigned(5,1), assigned(5,3), assigned(3,1), assigned(2,3), assigned(4,2) }, { assigned(1,1), assigned(2,2), assigned(1,2), assigned(2,1), assigned(1,3) }).

%3, 20
#pos(e_247, { assigned(5,3), assigned(4,2), assigned(3,2), assigned(4,1), assigned(3,3), assigned(5,1), assigned(1,3), assigned(2,1) }, { assigned(2,3), assigned(1,2), assigned(1,1) }).

%3, 30
#pos(e_248, { assigned(1,3), assigned(4,3), assigned(3,2), assigned(2,2), assigned(1,1), assigned(1,2), assigned(5,1), assigned(3,3), assigned(2,1), assigned(5,3) }, { assigned(2,3), assigned(3,1) }).

%1, 24
#pos(e_249, { assigned(2,2), assigned(3,3), assigned(5,1), assigned(1,2), assigned(5,3), assigned(4,1), assigned(1,1), assigned(2,3), assigned(3,1) }, { assigned(3,2), assigned(2,1) }).

%2, 26
#pos(e_250, { assigned(3,3), assigned(1,1), assigned(2,1), assigned(5,1), assigned(4,1), assigned(1,2), assigned(5,3), assigned(1,3), assigned(2,3), assigned(2,2) }, { assigned(3,1), assigned(3,2) }).

%2, 14
#pos(e_251, { assigned(2,1), assigned(5,3), assigned(2,3), assigned(4,1), assigned(3,2), assigned(4,3), assigned(4,2) }, { assigned(1,1), assigned(1,3), assigned(1,2), assigned(3,3) }).

%1, 6
#pos(e_252, { assigned(4,2), assigned(5,1), assigned(1,2), assigned(2,1), assigned(2,3), assigned(5,3) }, { assigned(3,3), assigned(2,2), assigned(1,3), assigned(3,1), assigned(1,1), assigned(3,2) }).

%1, 14
#pos(e_253, { assigned(1,3), assigned(3,1), assigned(2,3), assigned(4,3), assigned(3,3), assigned(1,2), assigned(2,1) }, { assigned(3,2), assigned(1,1), assigned(2,2) }).

%3, 24
#pos(e_254, { assigned(3,2), assigned(4,2), assigned(3,1), assigned(2,1), assigned(1,1), assigned(4,3), assigned(3,3), assigned(2,2) }, { assigned(1,3), assigned(1,2) }).

%0, 14
#pos(e_255, { assigned(5,1), assigned(2,1), assigned(2,3), assigned(3,3), assigned(2,2), assigned(4,1) }, { assigned(1,3), assigned(1,1), assigned(1,2) }).

%3, 26
#pos(e_256, { assigned(5,1), assigned(4,2), assigned(2,1), assigned(1,2), assigned(4,1), assigned(5,3), assigned(3,2), assigned(1,1), assigned(3,1) }, { assigned(2,3), assigned(3,3), assigned(1,3), assigned(2,2) }).

%2, 8
#pos(e_257, { assigned(4,1), assigned(5,3), assigned(4,2), assigned(3,1), assigned(4,3), assigned(1,1) }, { assigned(2,2), assigned(1,2), assigned(2,3), assigned(3,3), assigned(2,1), assigned(3,2), assigned(1,3) }).

%2, 6
#pos(e_258, { assigned(3,2), assigned(1,3), assigned(4,3), assigned(4,1), assigned(2,1) }, { assigned(3,3), assigned(2,2), assigned(3,1), assigned(1,1), assigned(2,3) }).

%2, 8
#pos(e_259, { assigned(1,1), assigned(5,2), assigned(5,1), assigned(4,1) }, { assigned(3,1), assigned(2,3), assigned(3,3), assigned(2,2), assigned(1,2), assigned(2,1), assigned(1,3) }).

%3, 24
#pos(e_260, { assigned(5,3), assigned(4,2), assigned(5,2), assigned(5,1), assigned(3,1), assigned(1,3), assigned(2,2), assigned(4,3), assigned(1,1), assigned(3,3) }, { assigned(3,2), assigned(1,2), assigned(2,1), assigned(2,3) }).

%3, 18
#pos(e_261, { assigned(3,3), assigned(3,2), assigned(5,2), assigned(1,1), assigned(2,3), assigned(5,3) }, { assigned(1,2), assigned(2,1), assigned(1,3), assigned(2,2), assigned(3,1) }).

%2, 12
#pos(e_262, { assigned(3,2), assigned(1,3), assigned(5,3), assigned(5,2), assigned(1,2) }, { assigned(2,2), assigned(1,1), assigned(3,1), assigned(2,3) }).

%1, 14
#pos(e_263, { assigned(4,2), assigned(2,3), assigned(4,3), assigned(5,3), assigned(3,3), assigned(5,2) }, { assigned(1,1), assigned(1,2), assigned(1,3) }).

%1, 6
#pos(e_264, { assigned(3,2), assigned(4,3), assigned(5,3), assigned(2,1), assigned(2,3) }, { assigned(3,3), assigned(1,3), assigned(1,1), assigned(2,2) }).

%1, 32
#pos(e_265, { assigned(2,2), assigned(3,1), assigned(2,1), assigned(1,1), assigned(2,3), assigned(4,3), assigned(5,2), assigned(1,2), assigned(3,3), assigned(4,1), assigned(5,1) }, { assigned(3,2), assigned(1,3) }).

%3, 24
#pos(e_266, { assigned(5,3), assigned(4,3), assigned(5,2), assigned(4,1), assigned(1,1), assigned(1,2), assigned(1,3), assigned(3,2) }, { assigned(2,3), assigned(2,1), assigned(2,2) }).

%3, 10
#pos(e_267, { assigned(4,2), assigned(2,3), assigned(3,2), assigned(1,3), assigned(5,3), assigned(2,1), assigned(4,1) }, { assigned(1,1), assigned(1,2), assigned(3,1), assigned(3,3), assigned(2,2) }).

%3, 14
#pos(e_268, { assigned(5,3), assigned(1,2), assigned(1,1), assigned(3,2), assigned(3,1), assigned(2,1), assigned(4,2), assigned(3,3) }, { assigned(2,2), assigned(2,3), assigned(1,3) }).

%2, 12
#pos(e_269, { assigned(1,1), assigned(2,1), assigned(3,2), assigned(3,3), assigned(2,2), assigned(3,1), assigned(1,2) }, { assigned(2,3), assigned(1,3) }).

%3, 26
#pos(e_270, { assigned(2,1), assigned(1,1), assigned(3,2), assigned(3,1), assigned(4,1), assigned(4,2), assigned(5,2) }, { assigned(2,3), assigned(1,2), assigned(1,3) }).

%4, 18
#pos(e_271, { assigned(2,2), assigned(1,3), assigned(1,1), assigned(3,2), assigned(4,2), assigned(2,1), assigned(1,2), assigned(4,1) }, { assigned(2,3), assigned(3,3), assigned(3,1) }).

%3, 8
#pos(e_272, { assigned(1,2), assigned(4,1), assigned(3,1), assigned(4,2), assigned(3,2) }, { assigned(2,1), assigned(2,3), assigned(1,1), assigned(2,2), assigned(3,3) }).

%4, 20
#pos(e_273, { assigned(1,3), assigned(5,2), assigned(4,3), assigned(2,1), assigned(4,2), assigned(5,3), assigned(3,2), assigned(3,3), assigned(1,1) }, { assigned(2,2), assigned(3,1), assigned(2,3), assigned(1,2) }).

%2, 30
#pos(e_274, { assigned(2,3), assigned(1,3), assigned(5,2), assigned(2,2), assigned(5,1), assigned(4,1), assigned(3,3), assigned(5,3), assigned(2,1), assigned(3,1), assigned(3,2) }, { assigned(1,2), assigned(1,1) }).

%2, 24
#pos(e_275, { assigned(1,2), assigned(3,1), assigned(4,1), assigned(1,3), assigned(5,3), assigned(3,2), assigned(3,3), assigned(5,2), assigned(2,1), assigned(4,3) }, { assigned(2,2), assigned(1,1), assigned(2,3) }).

%2, 18
#pos(e_276, { assigned(4,1), assigned(4,3), assigned(2,3), assigned(5,2), assigned(2,1), assigned(4,2), assigned(2,2) }, { assigned(3,1), assigned(3,3), assigned(3,2), assigned(1,3) }).

%1, 6
#pos(e_277, { assigned(5,1), assigned(3,2), assigned(4,3), assigned(5,3), assigned(3,1), assigned(5,2) }, { assigned(2,2), assigned(3,3), assigned(2,3), assigned(1,3), assigned(1,2), assigned(2,1), assigned(1,1) }).

%3, 14
#pos(e_278, { assigned(3,2), assigned(3,1), assigned(1,1), assigned(4,1), assigned(1,2), assigned(2,2), assigned(1,3), assigned(4,3) }, { assigned(2,1), assigned(2,3), assigned(3,3) }).

%3, 10
#pos(e_279, { assigned(1,3), assigned(5,1), assigned(3,2), assigned(1,1), assigned(2,2), assigned(4,3), assigned(2,1) }, { assigned(3,1), assigned(1,2), assigned(3,3), assigned(2,3) }).

%3, 8
#pos(e_280, { assigned(4,1), assigned(1,3), assigned(1,1), assigned(2,1) }, { assigned(3,2), assigned(3,1), assigned(2,2), assigned(1,2), assigned(3,3), assigned(2,3) }).

%3, 34
#pos(e_281, { assigned(2,2), assigned(3,1), assigned(4,2), assigned(1,3), assigned(4,3), assigned(3,3), assigned(3,2), assigned(5,3), assigned(1,2) }, { assigned(2,1), assigned(1,1) }).

%1, 12
#pos(e_282, { assigned(3,3), assigned(3,1), assigned(4,1), assigned(1,1), assigned(2,1) }, { assigned(1,3), assigned(3,2), assigned(1,2), assigned(2,3), assigned(2,2) }).

%1, 12
#pos(e_283, { assigned(4,3), assigned(1,2), assigned(3,3), assigned(2,1), assigned(2,3), assigned(1,3) }, { assigned(3,2), assigned(3,1), assigned(1,1), assigned(2,2) }).

%4, 18
#pos(e_284, { assigned(1,1), assigned(4,3), assigned(2,3), assigned(3,2), assigned(1,3), assigned(2,2), assigned(4,2), assigned(5,2) }, { assigned(2,1), assigned(3,1) }).

%2, 14
#pos(e_285, { assigned(4,3), assigned(2,1), assigned(4,2), assigned(2,3) }, { assigned(2,2), assigned(1,2), assigned(3,1), assigned(1,1), assigned(3,2) }).

%2, 24
#pos(e_286, { assigned(2,3), assigned(5,1), assigned(2,1), assigned(1,3), assigned(1,1) }, { assigned(3,3), assigned(1,2), assigned(3,2), assigned(2,2) }).

%3, 20
#pos(e_287, { assigned(3,3), assigned(1,3), assigned(3,1), assigned(1,2), assigned(4,2), assigned(3,2), assigned(2,1), assigned(2,2), assigned(5,3) }, { assigned(2,3), assigned(1,1) }).

%3, 14
#pos(e_288, { assigned(4,3), assigned(3,2), assigned(1,1), assigned(5,3), assigned(1,3), assigned(4,1), assigned(5,1) }, { assigned(2,1), assigned(2,3), assigned(2,2), assigned(3,1), assigned(3,3) }).

%2, 10
#pos(e_289, { assigned(5,3), assigned(5,2), assigned(5,1), assigned(4,3), assigned(1,3) }, { assigned(2,2), assigned(3,3), assigned(1,2), assigned(2,1), assigned(3,1), assigned(1,1), assigned(3,2), assigned(2,3) }).

%2, 14
#pos(e_290, { assigned(4,2), assigned(5,2), assigned(5,1), assigned(5,3), assigned(3,3) }, { assigned(2,2), assigned(1,3), assigned(3,1), assigned(1,1), assigned(1,2), assigned(2,3) }).

%2, 24
#pos(e_291, { assigned(2,1), assigned(4,1), assigned(1,1), assigned(5,2), assigned(4,2), assigned(4,3), assigned(1,2), assigned(2,2), assigned(5,1) }, { assigned(3,3), assigned(2,3), assigned(3,2), assigned(3,1), assigned(1,3) }).

%1, 14
#pos(e_292, { assigned(5,1), assigned(3,1), assigned(4,3), assigned(4,2), assigned(4,1), assigned(5,3), assigned(2,1) }, { assigned(2,3), assigned(3,3), assigned(3,2), assigned(1,3), assigned(2,2) }).

%2, 20
#pos(e_293, { assigned(5,3), assigned(3,2), assigned(3,1), assigned(5,2), assigned(4,3), assigned(4,1), assigned(3,3), assigned(1,1), assigned(5,1) }, { assigned(2,1), assigned(2,2), assigned(1,3), assigned(2,3), assigned(1,2) }).

%3, 24
#pos(e_294, { assigned(1,3), assigned(2,3), assigned(5,1), assigned(4,2), assigned(2,2), assigned(5,3) }, { assigned(3,3), assigned(1,2), assigned(3,2), assigned(3,1) }).

%2, 14
#pos(e_295, { assigned(5,1), assigned(4,3), assigned(3,1), assigned(2,3), assigned(2,1) }, { assigned(1,3), assigned(3,3), assigned(2,2), assigned(1,1) }).

%1, 8
#pos(e_296, { assigned(2,1), assigned(4,2), assigned(4,1), assigned(4,3), assigned(5,3), assigned(3,3) }, { assigned(1,3), assigned(2,2), assigned(1,2), assigned(3,2), assigned(2,3), assigned(3,1), assigned(1,1) }).

%3, 10
#pos(e_297, { assigned(2,3), assigned(4,3), assigned(2,1), assigned(4,2), assigned(1,2), assigned(1,1), assigned(3,2) }, { assigned(3,1), assigned(2,2), assigned(1,3), assigned(3,3) }).

%1, 14
#pos(e_298, { assigned(5,3), assigned(2,2), assigned(5,2), assigned(2,3), assigned(3,3), assigned(1,1), assigned(2,1), assigned(5,1) }, { assigned(3,1), assigned(3,2), assigned(1,2), assigned(1,3) }).

%3, 20
#pos(e_299, { assigned(1,2), assigned(3,1), assigned(1,3), assigned(1,1), assigned(2,1), assigned(5,1), assigned(3,2), assigned(3,3), assigned(2,2) }, { assigned(2,3) }).

%2, 16
#pos(e_300, { assigned(4,3), assigned(3,1), assigned(2,2), assigned(5,1), assigned(3,3), assigned(3,2) }, { assigned(1,1), assigned(2,1), assigned(1,3), assigned(2,3) }).

%2, 8
#pos(e_301, { assigned(1,2), assigned(1,3), assigned(1,1), assigned(4,1), assigned(3,3), assigned(3,1) }, { assigned(2,3), assigned(2,2), assigned(2,1), assigned(3,2) }).

%3, 24
#pos(e_302, { assigned(2,3), assigned(1,2), assigned(2,1), assigned(1,3), assigned(1,1), assigned(3,2), assigned(4,3), assigned(4,1), assigned(5,1), assigned(2,2) }, { assigned(3,1), assigned(3,3) }).

%3, 20
#pos(e_303, { assigned(2,3), assigned(4,2), assigned(4,1), assigned(5,2), assigned(1,1), assigned(1,3), assigned(5,3), assigned(3,3) }, { assigned(2,1), assigned(3,1), assigned(2,2), assigned(3,2) }).

%3, 8
#pos(e_304, { assigned(3,1), assigned(5,1), assigned(1,3), assigned(4,2) }, { assigned(1,2), assigned(3,3), assigned(2,1), assigned(2,2), assigned(1,1) }).

%3, 20
#pos(e_305, { assigned(4,1), assigned(1,3), assigned(1,2), assigned(3,1), assigned(3,3), assigned(1,1), assigned(3,2), assigned(2,1), assigned(5,2) }, { assigned(2,2), assigned(2,3) }).

%2, 8
#pos(e_306, { assigned(3,2), assigned(2,2), assigned(5,3), assigned(5,1), assigned(1,1), assigned(2,1) }, { assigned(3,3), assigned(1,3), assigned(2,3), assigned(1,2), assigned(3,1) }).

%2, 24
#pos(e_307, { assigned(1,1), assigned(5,1), assigned(2,1), assigned(3,2), assigned(3,3), assigned(5,2), assigned(5,3) }, { assigned(2,3), assigned(1,2), assigned(2,2), assigned(1,3) }).

%3, 4
#pos(e_308, { assigned(4,2), assigned(5,2), assigned(1,1), assigned(2,1), assigned(1,3) }, { assigned(2,3), assigned(3,3), assigned(3,1), assigned(2,2) }).

%2, 20
#pos(e_309, { assigned(5,3), assigned(4,3), assigned(2,1), assigned(3,3), assigned(1,3), assigned(5,1), assigned(1,2), assigned(3,2) }, { assigned(3,1), assigned(2,3), assigned(2,2), assigned(1,1) }).

%1, 12
#pos(e_310, { assigned(2,1), assigned(3,1), assigned(1,1), assigned(5,1), assigned(1,2), assigned(2,3) }, { assigned(3,2), assigned(1,3), assigned(3,3), assigned(2,2) }).

%2, 18
#pos(e_311, { assigned(1,3), assigned(5,1), assigned(2,3), assigned(4,3) }, { assigned(1,2), assigned(3,1), assigned(3,2), assigned(2,2), assigned(3,3) }).

%1, 12
#pos(e_312, { assigned(5,2), assigned(4,2), assigned(1,2), assigned(5,1), assigned(3,1), assigned(4,1) }, { assigned(2,1), assigned(1,1), assigned(1,3), assigned(3,3) }).

%2, 14
#pos(e_313, { assigned(2,3), assigned(3,2), assigned(1,1), assigned(2,2), assigned(4,3), assigned(2,1), assigned(5,3) }, { assigned(3,1), assigned(1,2), assigned(3,3) }).

%1, 10
#pos(e_314, { assigned(2,2), assigned(4,3), assigned(5,2), assigned(1,2), assigned(4,1), assigned(1,1), assigned(2,3) }, { assigned(3,2), assigned(1,3), assigned(3,3), assigned(2,1) }).

%2, 18
#pos(e_315, { assigned(1,2), assigned(1,1), assigned(5,1), assigned(4,1) }, { assigned(1,3), assigned(3,1), assigned(3,3), assigned(2,2), assigned(2,3) }).

%2, 16
#pos(e_316, { assigned(4,1), assigned(2,3), assigned(2,1), assigned(3,1), assigned(4,2), assigned(1,1), assigned(1,2), assigned(4,3) }, { assigned(1,3), assigned(2,2), assigned(3,3), assigned(3,2) }).

%4, 24
#pos(e_317, { assigned(1,3), assigned(4,3), assigned(3,1), assigned(5,3), assigned(1,1), assigned(3,3), assigned(2,3), assigned(4,2), assigned(3,2) }, { assigned(2,1), assigned(2,2), assigned(1,2) }).

%2, 18
#pos(e_318, { assigned(1,1), assigned(1,2), assigned(2,2), assigned(5,2), assigned(4,1), assigned(3,1), assigned(3,2) }, { assigned(2,1), assigned(3,3), assigned(2,3) }).

%1, 14
#pos(e_319, { assigned(4,3), assigned(5,1), assigned(1,2), assigned(3,1), assigned(2,3) }, { assigned(1,3), assigned(3,2), assigned(2,1), assigned(3,3), assigned(2,2) }).

%3, 24
#pos(e_320, { assigned(5,1), assigned(4,2), assigned(1,2), assigned(1,3), assigned(4,3), assigned(3,3), assigned(4,1), assigned(5,2) }, { assigned(3,2), assigned(3,1), assigned(2,1), assigned(2,2) }).

%1, 14
#pos(e_321, { assigned(3,3), assigned(1,2), assigned(2,1), assigned(2,2), assigned(5,2), assigned(3,2), assigned(5,3) }, { assigned(1,3), assigned(2,3), assigned(3,1), assigned(1,1) }).

%3, 32
#pos(e_322, { assigned(3,1), assigned(2,2), assigned(5,1), assigned(1,2), assigned(5,2), assigned(4,2), assigned(1,1), assigned(5,3), assigned(3,2), assigned(4,1) }, { assigned(3,3), assigned(1,3), assigned(2,3), assigned(2,1) }).

%1, 16
#pos(e_323, { assigned(2,1), assigned(5,3), assigned(4,1), assigned(5,2), assigned(4,3), assigned(3,1) }, { assigned(1,2), assigned(2,3), assigned(1,3), assigned(3,2) }).

%1, 14
#pos(e_324, { assigned(3,1), assigned(1,1), assigned(2,3), assigned(5,3), assigned(2,2), assigned(1,2), assigned(4,1), assigned(4,3) }, { assigned(1,3), assigned(3,3), assigned(2,1), assigned(3,2) }).

%3, 18
#pos(e_325, { assigned(4,1), assigned(4,2), assigned(4,3), assigned(1,3), assigned(1,1) }, { assigned(3,1), assigned(1,2), assigned(2,3), assigned(3,2), assigned(2,1) }).

%3, 20
#pos(e_326, { assigned(1,2), assigned(5,1), assigned(4,3), assigned(5,3), assigned(1,3), assigned(1,1), assigned(2,1), assigned(2,3), assigned(3,2) }, { assigned(3,1), assigned(3,3), assigned(2,2) }).

%2, 20
#pos(e_327, { assigned(4,3), assigned(3,1), assigned(2,2), assigned(1,2), assigned(4,1), assigned(2,1), assigned(5,1), assigned(1,3), assigned(4,2) }, { assigned(2,3), assigned(1,1), assigned(3,2), assigned(3,3) }).

%1, 4
#pos(e_328, { assigned(5,3), assigned(4,2), assigned(2,1), assigned(2,3), assigned(3,1) }, { assigned(1,3), assigned(2,2), assigned(1,1), assigned(3,3), assigned(1,2), assigned(3,2) }).

%2, 10
#pos(e_329, { assigned(4,2), assigned(1,3), assigned(3,3), assigned(3,1), assigned(5,1), assigned(1,2), assigned(2,3) }, { assigned(2,1), assigned(1,1), assigned(2,2), assigned(3,2) }).

%3, 12
#pos(e_330, { assigned(5,3), assigned(4,2), assigned(1,2), assigned(3,3), assigned(1,1), assigned(4,3), assigned(3,2) }, { assigned(2,3), assigned(2,1), assigned(3,1), assigned(1,3), assigned(2,2) }).

%4, 30
#pos(e_331, { assigned(4,1), assigned(1,3), assigned(5,2), assigned(3,2), assigned(4,2), assigned(2,1), assigned(5,3), assigned(3,1), assigned(4,3), assigned(2,3), assigned(1,1) }, { assigned(3,3), assigned(1,2), assigned(2,2) }).

%1, 4
#pos(e_332, { assigned(5,3), assigned(2,2), assigned(5,1), assigned(1,1), assigned(4,3) }, { assigned(2,1), assigned(1,3), assigned(1,2), assigned(3,2), assigned(2,3), assigned(3,1), assigned(3,3) }).

%3, 18
#pos(e_333, { assigned(5,1), assigned(1,2), assigned(4,1), assigned(5,3), assigned(1,1), assigned(1,3), assigned(4,3), assigned(4,2), assigned(2,2) }, { assigned(2,1), assigned(3,1), assigned(3,2), assigned(2,3), assigned(3,3) }).

%3, 32
#pos(e_334, { assigned(2,3), assigned(1,3), assigned(3,3), assigned(5,2), assigned(1,2), assigned(2,1), assigned(5,1), assigned(1,1), assigned(3,1), assigned(4,1), assigned(3,2) }, { assigned(2,2) }).

%2, 12
#pos(e_335, { assigned(3,2), assigned(5,3), assigned(1,2), assigned(3,3), assigned(2,2), assigned(1,3), assigned(5,1) }, { assigned(3,1), assigned(1,1), assigned(2,3), assigned(2,1) }).

%1, 20
#pos(e_336, { assigned(2,3), assigned(4,3), assigned(1,3), assigned(5,3), assigned(3,1), assigned(3,3), assigned(2,2) }, { assigned(2,1), assigned(1,2), assigned(1,1), assigned(3,2) }).

%4, 8
#pos(e_337, { assigned(1,1), assigned(1,3), assigned(4,2), assigned(4,3), assigned(1,2), assigned(3,2) }, { assigned(3,3), assigned(2,3), assigned(2,1), assigned(2,2), assigned(3,1) }).

%3, 18
#pos(e_338, { assigned(5,2), assigned(4,2), assigned(3,3), assigned(5,3), assigned(3,2) }, { assigned(2,1), assigned(2,2), assigned(2,3), assigned(1,1) }).

%2, 10
#pos(e_339, { assigned(1,1), assigned(5,3), assigned(4,2), assigned(4,1), assigned(2,3), assigned(1,2), assigned(5,1) }, { assigned(3,3), assigned(1,3), assigned(2,2), assigned(3,1), assigned(3,2), assigned(2,1) }).

%2, 18
#pos(e_340, { assigned(3,3), assigned(5,3), assigned(5,2), assigned(2,2), assigned(4,2), assigned(1,3), assigned(2,1), assigned(1,2) }, { assigned(3,2), assigned(1,1), assigned(3,1), assigned(2,3) }).

%1, 14
#pos(e_341, { assigned(3,3), assigned(5,1), assigned(3,1), assigned(2,1), assigned(1,2), assigned(1,1), assigned(5,3) }, { assigned(2,2), assigned(1,3), assigned(3,2), assigned(2,3) }).

%1, 36
#pos(e_342, { assigned(4,1), assigned(3,1), assigned(5,2), assigned(2,1), assigned(4,3), assigned(1,2), assigned(2,2), assigned(4,2) }, { assigned(1,1) }).

%3, 26
#pos(e_343, { assigned(2,2), assigned(5,2), assigned(3,3), assigned(3,2), assigned(1,3), assigned(4,2), assigned(3,1), assigned(5,3), assigned(4,1), assigned(2,3) }, { assigned(1,1), assigned(1,2), assigned(2,1) }).

%3, 20
#pos(e_344, { assigned(2,2), assigned(1,1), assigned(3,2), assigned(2,1), assigned(5,1), assigned(3,3), assigned(3,1) }, { assigned(1,2), assigned(2,3) }).

%0, 18
#pos(e_345, { assigned(1,2), assigned(4,3), assigned(3,1), assigned(3,3), assigned(5,3), assigned(5,1), assigned(2,3), assigned(2,1) }, { assigned(2,2), assigned(1,1), assigned(3,2) }).

%1, 8
#pos(e_346, { assigned(1,2), assigned(3,3), assigned(5,1), assigned(5,3), assigned(3,1), assigned(1,3) }, { assigned(3,2), assigned(2,3), assigned(2,1), assigned(2,2), assigned(1,1) }).

%3, 10
#pos(e_347, { assigned(2,2), assigned(4,3), assigned(1,1), assigned(3,2), assigned(4,1), assigned(1,3), assigned(2,1) }, { assigned(1,2), assigned(2,3), assigned(3,1), assigned(3,3) }).

%3, 14
#pos(e_348, { assigned(4,3), assigned(2,2), assigned(5,2), assigned(3,1), assigned(2,1), assigned(1,3), assigned(4,2), assigned(1,1) }, { assigned(3,2), assigned(1,2), assigned(2,3), assigned(3,3) }).

%2, 18
#pos(e_349, { assigned(1,1), assigned(2,2), assigned(4,1), assigned(5,1), assigned(2,1), assigned(3,3), assigned(1,2), assigned(3,2) }, { assigned(3,1), assigned(1,3), assigned(2,3) }).

%1, 18
#pos(e_350, { assigned(1,2), assigned(3,3), assigned(3,2), assigned(4,1), assigned(5,2), assigned(2,3), assigned(2,2), assigned(5,3) }, { assigned(1,1), assigned(2,1), assigned(1,3), assigned(3,1) }).

%3, 14
#pos(e_351, { assigned(4,3), assigned(1,3), assigned(2,3), assigned(4,1), assigned(2,2), assigned(1,1), assigned(2,1) }, { assigned(1,2), assigned(3,1), assigned(3,2), assigned(3,3) }).

%3, 24
#pos(e_352, { assigned(4,2), assigned(5,2), assigned(3,1), assigned(5,1), assigned(2,3), assigned(2,1), assigned(1,1), assigned(4,3), assigned(1,3), assigned(1,2) }, { assigned(3,2), assigned(2,2), assigned(3,3) }).

%1, 18
#pos(e_353, { assigned(1,2), assigned(3,1), assigned(3,3), assigned(4,2), assigned(2,3), assigned(2,1), assigned(5,2), assigned(4,3) }, { assigned(1,3), assigned(1,1), assigned(2,2) }).

%2, 20
#pos(e_354, { assigned(5,2), assigned(4,1), assigned(1,2), assigned(1,3), assigned(2,2), assigned(4,2), assigned(2,1), assigned(4,3), assigned(3,3) }, { assigned(1,1), assigned(3,1), assigned(2,3), assigned(3,2) }).

%3, 20
#pos(e_355, { assigned(3,1), assigned(3,2), assigned(4,1), assigned(4,3), assigned(5,2), assigned(4,2) }, { assigned(2,1), assigned(1,3), assigned(1,2), assigned(2,3) }).

%3, 16
#pos(e_356, { assigned(3,3), assigned(1,1), assigned(3,2), assigned(2,3), assigned(5,1), assigned(1,2), assigned(5,2), assigned(4,2) }, { assigned(1,3), assigned(2,1), assigned(3,1), assigned(2,2) }).

%2, 18
#pos(e_357, { assigned(1,2), assigned(5,1), assigned(4,3), assigned(3,2), assigned(2,1), assigned(4,1), assigned(5,2) }, { assigned(3,3), assigned(3,1), assigned(1,1), assigned(2,2), assigned(2,3) }).

%2, 12
#pos(e_358, { assigned(2,2), assigned(1,1), assigned(5,1), assigned(4,3), assigned(1,3), assigned(4,1) }, { assigned(3,2), assigned(2,3), assigned(2,1) }).

%3, 20
#pos(e_359, { assigned(1,3), assigned(5,1), assigned(3,3), assigned(5,2), assigned(3,2), assigned(2,1), assigned(5,3), assigned(3,1), assigned(1,1) }, { assigned(1,2), assigned(2,3), assigned(2,2) }).

%3, 10
#pos(e_360, { assigned(2,3), assigned(1,3), assigned(2,1), assigned(4,2), assigned(3,1), assigned(1,2), assigned(3,2) }, { assigned(3,3), assigned(2,2), assigned(1,1) }).

%2, 8
#pos(e_361, { assigned(2,2), assigned(1,2), assigned(4,2), assigned(1,1), assigned(5,1), assigned(5,3) }, { assigned(3,3), assigned(2,1), assigned(3,2) }).

%2, 12
#pos(e_362, { assigned(3,1), assigned(3,2), assigned(5,1), assigned(4,1), assigned(2,3), assigned(1,2), assigned(4,2) }, { assigned(3,3), assigned(1,3), assigned(2,1), assigned(1,1), assigned(2,2) }).

%2, 18
#pos(e_363, { assigned(4,2), assigned(5,2), assigned(1,3), assigned(2,3), assigned(2,2), assigned(1,2), assigned(4,3) }, { assigned(2,1), assigned(3,1), assigned(1,1), assigned(3,3), assigned(3,2) }).

%3, 20
#pos(e_364, { assigned(3,2), assigned(4,1), assigned(2,3), assigned(1,3), assigned(2,1), assigned(5,2), assigned(4,2), assigned(5,1), assigned(3,1) }, { assigned(2,2), assigned(1,2), assigned(1,1), assigned(3,3) }).

%2, 10
#pos(e_365, { assigned(4,1), assigned(1,3), assigned(4,3), assigned(3,1), assigned(1,2), assigned(3,3), assigned(4,2) }, { assigned(2,1), assigned(3,2), assigned(2,3), assigned(2,2), assigned(1,1) }).

%1, 14
#pos(e_366, { assigned(5,3), assigned(3,1), assigned(3,2), assigned(5,2), assigned(2,2), assigned(2,3) }, { assigned(3,3), assigned(1,3), assigned(2,1), assigned(1,1) }).

%3, 6
#pos(e_367, { assigned(1,3), assigned(3,2), assigned(5,2), assigned(1,1), assigned(3,1), assigned(4,3) }, { assigned(3,3), assigned(2,2), assigned(2,1), assigned(2,3), assigned(1,2) }).

%1, 20
#pos(e_368, { assigned(4,3), assigned(5,3), assigned(2,1), assigned(3,1), assigned(1,1), assigned(5,1), assigned(1,2) }, { assigned(3,2), assigned(3,3) }).

%4, 18
#pos(e_369, { assigned(3,2), assigned(3,1), assigned(4,3), assigned(1,3), assigned(1,2), assigned(1,1), assigned(4,2), assigned(5,1), assigned(3,3) }, { assigned(2,1), assigned(2,3), assigned(2,2) }).

%1, 8
#pos(e_370, { assigned(4,3), assigned(5,3), assigned(3,3), assigned(1,1), assigned(5,1) }, { assigned(2,1), assigned(1,3), assigned(3,2), assigned(3,1), assigned(1,2), assigned(2,3) }).

%1, 6
#pos(e_371, { assigned(3,3), assigned(2,2), assigned(3,2), assigned(2,1), assigned(5,2) }, { assigned(3,1), assigned(1,3), assigned(1,2), assigned(1,1), assigned(2,3) }).

%2, 18
#pos(e_372, { assigned(5,2), assigned(3,2), assigned(2,2), assigned(2,1), assigned(4,1), assigned(4,3), assigned(4,2), assigned(5,1) }, { assigned(1,3), assigned(2,3), assigned(1,1), assigned(3,1), assigned(1,2), assigned(3,3) }).

%1, 10
#pos(e_373, { assigned(3,3), assigned(5,2), assigned(4,2), assigned(2,1), assigned(5,1) }, { assigned(2,3), assigned(3,1), assigned(1,2), assigned(2,2), assigned(1,3) }).

%3, 24
#pos(e_374, { assigned(3,3), assigned(5,3), assigned(4,3), assigned(2,1), assigned(4,1), assigned(5,1), assigned(3,2) }, { assigned(1,2), assigned(1,1), assigned(2,3), assigned(3,1) }).

%3, 24
#pos(e_375, { assigned(5,1), assigned(4,3), assigned(5,3), assigned(1,1), assigned(5,2), assigned(3,1), assigned(1,3), assigned(2,2), assigned(4,2), assigned(3,3) }, { assigned(2,3), assigned(1,2), assigned(3,2) }).

%3, 16
#pos(e_376, { assigned(4,1), assigned(4,2), assigned(5,1), assigned(3,2), assigned(1,1), assigned(4,3) }, { assigned(1,3), assigned(2,2), assigned(3,3) }).

%2, 10
#pos(e_377, { assigned(3,2), assigned(2,3), assigned(5,3), assigned(1,1), assigned(4,1) }, { assigned(1,3), assigned(2,1), assigned(2,2), assigned(3,1), assigned(3,3) }).

%3, 8
#pos(e_378, { assigned(5,1), assigned(4,2), assigned(5,3), assigned(4,1), assigned(1,1), assigned(1,3) }, { assigned(2,3), assigned(2,2), assigned(3,2), assigned(1,2), assigned(3,1), assigned(2,1), assigned(3,3) }).

%3, 26
#pos(e_379, { assigned(1,2), assigned(3,3), assigned(4,1), assigned(1,1), assigned(5,1), assigned(3,2), assigned(5,3), assigned(2,2), assigned(4,2) }, { assigned(1,3) }).

%2, 20
#pos(e_380, { assigned(4,2), assigned(5,3), assigned(3,2), assigned(3,3), assigned(2,2), assigned(2,1), assigned(2,3) }, { assigned(3,1), assigned(1,2), assigned(1,3), assigned(1,1) }).

%1, 10
#pos(e_381, { assigned(5,2), assigned(4,1), assigned(5,1), assigned(2,3), assigned(4,3) }, { assigned(2,2), assigned(3,1), assigned(3,2), assigned(3,3), assigned(1,1), assigned(2,1) }).

%1, 4
#pos(e_382, { assigned(5,3), assigned(5,2), assigned(2,3), assigned(3,2) }, { assigned(2,2), assigned(3,3), assigned(1,1), assigned(3,1), assigned(1,3) }).

%2, 16
#pos(e_383, { assigned(2,3), assigned(1,1), assigned(5,1), assigned(2,1), assigned(2,2), assigned(4,2) }, { assigned(3,1), assigned(1,2), assigned(3,3), assigned(1,3) }).

%1, 4
#pos(e_384, { assigned(2,2), assigned(1,3), assigned(2,1), assigned(1,2), assigned(5,1) }, { assigned(2,3), assigned(3,2), assigned(3,3), assigned(1,1) }).

%2, 14
#pos(e_385, { assigned(3,2), assigned(4,1), assigned(4,2), assigned(2,1), assigned(1,2) }, { assigned(2,2), assigned(2,3), assigned(3,3), assigned(1,3), assigned(3,1) }).

%2, 20
#pos(e_386, { assigned(2,1), assigned(1,3), assigned(2,3), assigned(4,3), assigned(3,3), assigned(5,2), assigned(3,1), assigned(5,1), assigned(4,2) }, { assigned(1,1), assigned(1,2), assigned(3,2), assigned(2,2) }).

%1, 2
#pos(e_387, { assigned(5,2), assigned(2,3), assigned(3,2) }, { assigned(3,1), assigned(1,3), assigned(1,1), assigned(3,3), assigned(2,1), assigned(2,2), assigned(1,2) }).

%2, 8
#pos(e_388, { assigned(2,1), assigned(3,3), assigned(1,1), assigned(3,1), assigned(1,3), assigned(2,2) }, { assigned(3,2), assigned(1,2), assigned(2,3) }).

%2, 8
#pos(e_389, { assigned(5,2), assigned(1,1), assigned(5,1), assigned(2,1), assigned(4,2) }, { assigned(3,3), assigned(2,2), assigned(3,1), assigned(1,3), assigned(1,2), assigned(3,2) }).

%1, 8
#pos(e_390, { assigned(4,3), assigned(3,3), assigned(5,1), assigned(1,1), assigned(2,2), assigned(3,1) }, { assigned(1,3), assigned(2,3), assigned(2,1), assigned(3,2), assigned(1,2) }).

%0, 4
#pos(e_391, { assigned(5,1), assigned(5,3), assigned(1,2), assigned(2,3), assigned(2,2) }, { assigned(1,1), assigned(1,3), assigned(3,2), assigned(3,3), assigned(3,1), assigned(2,1) }).

%2, 4
#pos(e_392, { assigned(2,3), assigned(4,1), assigned(1,1), assigned(2,2), assigned(1,3) }, { assigned(3,2), assigned(2,1), assigned(1,2), assigned(3,1), assigned(3,3) }).

%3, 26
#pos(e_393, { assigned(3,2), assigned(4,3), assigned(3,3), assigned(1,1), assigned(5,3), assigned(2,3), assigned(1,3), assigned(2,1) }, { assigned(2,2), assigned(3,1), assigned(1,2) }).

%1, 14
#pos(e_394, { assigned(1,2), assigned(2,2), assigned(5,2), assigned(3,1), assigned(5,1), assigned(2,1), assigned(1,3), assigned(2,3) }, { assigned(1,1), assigned(3,2), assigned(3,3) }).

%2, 12
#pos(e_395, { assigned(4,3), assigned(1,3), assigned(3,1), assigned(2,1), assigned(2,2), assigned(1,1), assigned(5,3) }, { assigned(3,3), assigned(1,2), assigned(3,2), assigned(2,3) }).

%2, 24
#pos(e_396, { assigned(1,2), assigned(2,1), assigned(3,2), assigned(2,3), assigned(5,1), assigned(5,3), assigned(5,2), assigned(4,3) }, { assigned(2,2), assigned(1,3), assigned(3,1), assigned(3,3) }).

%2, 14
#pos(e_397, { assigned(3,1), assigned(3,2), assigned(5,3), assigned(5,2), assigned(2,1), assigned(4,1), assigned(4,2) }, { assigned(1,1), assigned(1,3), assigned(1,2), assigned(2,2) }).

%1, 8
#pos(e_398, { assigned(2,2), assigned(4,2), assigned(5,3), assigned(4,3), assigned(3,3), assigned(2,1) }, { assigned(1,1), assigned(1,2), assigned(3,1), assigned(2,3), assigned(3,2), assigned(1,3) }).

%2, 14
#pos(e_399, { assigned(2,2), assigned(5,1), assigned(2,3), assigned(4,2), assigned(5,2) }, { assigned(1,3), assigned(1,1), assigned(1,2), assigned(2,1), assigned(3,3), assigned(3,1) }).

%2, 8
#pos(e_400, { assigned(2,1), assigned(1,2), assigned(4,2), assigned(3,3), assigned(5,3), assigned(1,3) }, { assigned(2,3), assigned(3,2), assigned(2,2), assigned(1,1), assigned(3,1) }).


#modeo(3, assigned(var(day), var(time)), (positive)).
#modeo(1, type(var(day),var(time),const(type)), (positive)).
#modeo(1, neq(var(day),var(day)), (positive, symmetric, anti_reflexive)).
#constant(type, jmc).
#weight(1).
#weight(-1).
#maxv(4).


#brave_ordering(e_4, e_3, <).

#brave_ordering(e_5, e_6, <).

#brave_ordering(e_8, e_7, <).

#brave_ordering(e_11, e_12, <).

#brave_ordering(e_14, e_13, <).

#brave_ordering(e_15, e_16, <).

#brave_ordering(e_19, e_20, <).

#brave_ordering(e_21, e_22, <).

#brave_ordering(e_23, e_24, <).

#brave_ordering(e_27, e_28, <).

#brave_ordering(e_30, e_29, <).

#brave_ordering(e_32, e_31, <).

#brave_ordering(e_34, e_33, <).

#brave_ordering(e_40, e_39, <).

#brave_ordering(e_42, e_41, <).

#brave_ordering(e_44, e_43, <).

#brave_ordering(e_47, e_48, <).

#brave_ordering(e_51, e_52, <).

#brave_ordering(e_55, e_56, <).

#brave_ordering(e_57, e_58, <).

#brave_ordering(e_59, e_60, <).

#brave_ordering(e_61, e_62, <).

#brave_ordering(e_63, e_64, <).

#brave_ordering(e_65, e_66, <).

#brave_ordering(e_68, e_67, <).

#brave_ordering(e_69, e_70, <).

#brave_ordering(e_72, e_71, <).

#brave_ordering(e_74, e_73, <).

#brave_ordering(e_76, e_75, <).

#brave_ordering(e_78, e_77, <).

#brave_ordering(e_79, e_80, <).

#brave_ordering(e_82, e_81, <).

#brave_ordering(e_85, e_86, <).

#brave_ordering(e_87, e_88, <).

#brave_ordering(e_90, e_89, <).

#brave_ordering(e_91, e_92, <).

#brave_ordering(e_93, e_94, <).

#brave_ordering(e_95, e_96, <).

#brave_ordering(e_97, e_98, <).

#brave_ordering(e_100, e_99, <).

#brave_ordering(e_105, e_106, <).

#brave_ordering(e_110, e_109, <).

#brave_ordering(e_112, e_111, <).

#brave_ordering(e_114, e_113, <).

#brave_ordering(e_124, e_123, <).

#brave_ordering(e_127, e_128, <).

#brave_ordering(e_131, e_132, <).

#brave_ordering(e_144, e_143, <).

#brave_ordering(e_146, e_145, <).

#brave_ordering(e_150, e_149, <).

#brave_ordering(e_158, e_157, <).

#brave_ordering(e_162, e_161, <).

#brave_ordering(e_166, e_165, <).

#brave_ordering(e_167, e_168, <).

#brave_ordering(e_170, e_169, <).

#brave_ordering(e_172, e_171, <).

#brave_ordering(e_173, e_174, <).

#brave_ordering(e_176, e_175, <).

#brave_ordering(e_182, e_181, <).

#brave_ordering(e_184, e_183, <).

#brave_ordering(e_185, e_186, <).

#brave_ordering(e_187, e_188, <).

#brave_ordering(e_191, e_192, <).

#brave_ordering(e_194, e_193, <).

#brave_ordering(e_196, e_195, <).

#brave_ordering(e_197, e_198, <).

#brave_ordering(e_199, e_200, <).

#brave_ordering(e_202, e_201, <).

#brave_ordering(e_203, e_204, <).

#brave_ordering(e_205, e_206, <).

#brave_ordering(e_209, e_210, <).

#brave_ordering(e_213, e_214, <).

#brave_ordering(e_215, e_216, <).

#brave_ordering(e_222, e_221, <).

#brave_ordering(e_228, e_227, <).

#brave_ordering(e_231, e_232, <).

#brave_ordering(e_234, e_233, <).

#brave_ordering(e_236, e_235, <).

#brave_ordering(e_238, e_237, <).

#brave_ordering(e_239, e_240, <).

#brave_ordering(e_247, e_248, <).

#brave_ordering(e_249, e_250, <).

#brave_ordering(e_258, e_257, <).

#brave_ordering(e_262, e_261, <).

#brave_ordering(e_264, e_263, <).

#brave_ordering(e_267, e_268, <).

#brave_ordering(e_269, e_270, <).

#brave_ordering(e_276, e_275, <).

#brave_ordering(e_280, e_279, <).

#brave_ordering(e_285, e_286, <).

#brave_ordering(e_288, e_287, <).

#brave_ordering(e_289, e_290, <).

#brave_ordering(e_292, e_291, <).

#brave_ordering(e_293, e_294, <).

#brave_ordering(e_296, e_295, <).

#brave_ordering(e_301, e_302, <).

#brave_ordering(e_304, e_303, <).

#brave_ordering(e_306, e_305, <).

#brave_ordering(e_307, e_308, <).

#brave_ordering(e_310, e_309, <).

#brave_ordering(e_312, e_311, <).

#brave_ordering(e_314, e_313, <).

#brave_ordering(e_316, e_315, <).

#brave_ordering(e_318, e_317, <).

#brave_ordering(e_319, e_320, <).

#brave_ordering(e_324, e_323, <).

#brave_ordering(e_325, e_326, <).

#brave_ordering(e_336, e_335, <).

#brave_ordering(e_339, e_340, <).

#brave_ordering(e_341, e_342, <).

#brave_ordering(e_344, e_343, <).

#brave_ordering(e_345, e_346, <).

#brave_ordering(e_347, e_348, <).

#brave_ordering(e_350, e_349, <).

#brave_ordering(e_351, e_352, <).

#brave_ordering(e_353, e_354, <).

#brave_ordering(e_356, e_355, <).

#brave_ordering(e_358, e_357, <).

#brave_ordering(e_360, e_359, <).

#brave_ordering(e_361, e_362, <).

#brave_ordering(e_366, e_365, <).

#brave_ordering(e_368, e_367, <).

#brave_ordering(e_371, e_372, <).

#brave_ordering(e_373, e_374, <).

#brave_ordering(e_376, e_375, <).

#brave_ordering(e_377, e_378, <).

#brave_ordering(e_382, e_381, <).

#brave_ordering(e_384, e_383, <).

#brave_ordering(e_385, e_386, <).

#brave_ordering(e_387, e_388, <).

#brave_ordering(e_390, e_389, <).

#brave_ordering(e_395, e_396, <).

#brave_ordering(e_400, e_399, <).


#cautious_ordering(e_1, e_2, <).

#cautious_ordering(e_10, e_9, <).

#cautious_ordering(e_18, e_17, <).

#cautious_ordering(e_25, e_26, <).

#cautious_ordering(e_36, e_35, <).

#cautious_ordering(e_38, e_37, <).

#cautious_ordering(e_45, e_46, <).

#cautious_ordering(e_49, e_50, <).

#cautious_ordering(e_53, e_54, <).

#cautious_ordering(e_84, e_83, <).

#cautious_ordering(e_101, e_102, <).

#cautious_ordering(e_103, e_104, <).

#cautious_ordering(e_108, e_107, <).

#cautious_ordering(e_116, e_115, <).

#cautious_ordering(e_117, e_118, <).

#cautious_ordering(e_119, e_120, <).

#cautious_ordering(e_122, e_121, <).

#cautious_ordering(e_125, e_126, <).

#cautious_ordering(e_129, e_130, <).

#cautious_ordering(e_134, e_133, <).

#cautious_ordering(e_135, e_136, <).

#cautious_ordering(e_138, e_137, <).

#cautious_ordering(e_140, e_139, <).

#cautious_ordering(e_142, e_141, <).

#cautious_ordering(e_148, e_147, <).

#cautious_ordering(e_152, e_151, <).

#cautious_ordering(e_153, e_154, <).

#cautious_ordering(e_156, e_155, <).

#cautious_ordering(e_160, e_159, <).

#cautious_ordering(e_163, e_164, <).

#cautious_ordering(e_177, e_178, <).

#cautious_ordering(e_179, e_180, <).

#cautious_ordering(e_189, e_190, <).

#cautious_ordering(e_208, e_207, <).

#cautious_ordering(e_211, e_212, <).

#cautious_ordering(e_217, e_218, <).

#cautious_ordering(e_219, e_220, <).

#cautious_ordering(e_224, e_223, <).

#cautious_ordering(e_226, e_225, <).

#cautious_ordering(e_230, e_229, <).

#cautious_ordering(e_242, e_241, <).

#cautious_ordering(e_244, e_243, <).

#cautious_ordering(e_246, e_245, <).

#cautious_ordering(e_252, e_251, <).

#cautious_ordering(e_253, e_254, <).

#cautious_ordering(e_255, e_256, <).

#cautious_ordering(e_259, e_260, <).

#cautious_ordering(e_265, e_266, <).

#cautious_ordering(e_272, e_271, <).

#cautious_ordering(e_274, e_273, <).

#cautious_ordering(e_277, e_278, <).

#cautious_ordering(e_282, e_281, <).

#cautious_ordering(e_283, e_284, <).

#cautious_ordering(e_298, e_297, <).

#cautious_ordering(e_300, e_299, <).

#cautious_ordering(e_321, e_322, <).

#cautious_ordering(e_328, e_327, <).

#cautious_ordering(e_329, e_330, <).

#cautious_ordering(e_332, e_331, <).

#cautious_ordering(e_333, e_334, <).

#cautious_ordering(e_338, e_337, <).

#cautious_ordering(e_363, e_364, <).

#cautious_ordering(e_370, e_369, <).

#cautious_ordering(e_380, e_379, <).

#cautious_ordering(e_391, e_392, <).

#cautious_ordering(e_394, e_393, <).

#cautious_ordering(e_398, e_397, <).

