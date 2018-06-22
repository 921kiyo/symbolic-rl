slot(1..4,1..3).

neq(1, 2).
neq(1, 3).
neq(1, 4).
%neq(1, 5).
neq(2, 1).
neq(2, 3).
neq(2, 4).
%neq(2, 5).
neq(3, 1).
neq(3, 2).
neq(3, 4).
%neq(3, 5).
neq(4, 1).
neq(4, 2).
neq(4, 3).
%neq(4, 5).
%neq(5, 1).
%neq(5, 2).
%neq(5, 3).
%neq(5, 4).

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
%type(5,1,ccc).
%type(5,2,ccc).
%type(5,3,ccc).

0 { assigned(X, Y) } 1 :- slot(X,Y).


%4, 8
#pos(e_1, { assigned(1,1), assigned(1,3), assigned(4,2), assigned(1,2) }, { assigned(3,3), assigned(2,3), assigned(2,1), assigned(2,2) }).

%1, 14
#pos(e_2, { assigned(4,1), assigned(3,3), assigned(2,2), assigned(2,3), assigned(4,3), assigned(1,3) }, { assigned(1,1) }).

%1, 2
#pos(e_3, { assigned(2,1), assigned(3,2), assigned(3,3) }, { assigned(2,2), assigned(3,1), assigned(1,2), assigned(1,3) }).

%2, 8
#pos(e_4, { assigned(1,2), assigned(1,1), assigned(4,1), assigned(4,3), assigned(2,1) }, { assigned(2,3), assigned(2,2), assigned(3,2), assigned(3,3) }).

%0, 4
#pos(e_5, { assigned(4,3), assigned(3,1), assigned(3,3) }, { assigned(2,1), assigned(1,1), assigned(1,3), assigned(2,3), assigned(3,2) }).

%2, 6
#pos(e_6, { assigned(4,2), assigned(3,3), assigned(1,3), assigned(1,2), assigned(4,1) }, { assigned(2,2), assigned(3,1), assigned(3,2), assigned(2,3), assigned(1,1) }).

%1, 6
#pos(e_7, { assigned(1,2), assigned(1,1), assigned(2,2), assigned(4,3) }, { assigned(3,1), assigned(2,1), assigned(1,3), assigned(3,2) }).

%2, 8
#pos(e_8, { assigned(2,1), assigned(1,1), assigned(1,2), assigned(1,3), assigned(3,1), assigned(2,3) }, { assigned(3,3), assigned(2,2), assigned(3,2) }).

%2, 14
#pos(e_9, { assigned(1,2), assigned(3,1), assigned(1,1), assigned(3,3), assigned(2,2), assigned(4,3) }, { assigned(2,3) }).

%4, 30
#pos(e_10, { assigned(3,1), assigned(1,1), assigned(4,1), assigned(4,3), assigned(1,3), assigned(3,3), assigned(2,3) }, { assigned(1,2) }).

%2, 6
#pos(e_11, { assigned(4,3), assigned(1,3), assigned(3,2), assigned(3,3), assigned(4,1) }, { assigned(1,2), assigned(2,1), assigned(2,2), assigned(3,1), assigned(1,1), assigned(2,3) }).

%2, 10
#pos(e_12, { assigned(4,3), assigned(3,1), assigned(3,2), assigned(2,3), assigned(2,2), assigned(2,1) }, { assigned(3,3), assigned(1,1) }).

%2, 8
#pos(e_13, { assigned(1,1), assigned(3,2), assigned(1,2), assigned(4,1), assigned(2,1) }, { assigned(2,3), assigned(3,3), assigned(1,3), assigned(3,1), assigned(2,2) }).

%4, 14
#pos(e_14, { assigned(3,1), assigned(1,3), assigned(4,2), assigned(2,2), assigned(4,1), assigned(4,3), assigned(3,2), assigned(1,1) }, { assigned(2,1), assigned(3,3), assigned(2,3) }).

%2, 8
#pos(e_15, { assigned(2,1), assigned(2,2), assigned(4,2), assigned(3,2), assigned(3,3), assigned(4,1) }, { assigned(3,1), assigned(2,3), assigned(1,2), assigned(1,1), assigned(1,3) }).

%3, 10
#pos(e_16, { assigned(1,3), assigned(3,3), assigned(1,1), assigned(3,1), assigned(1,2) }, { assigned(3,2), assigned(2,3) }).

%1, 2
#pos(e_17, { assigned(4,2), assigned(2,1), assigned(1,2) }, { assigned(3,2), assigned(1,1), assigned(2,3), assigned(3,1), assigned(2,2), assigned(1,3), assigned(3,3) }).

%3, 8
#pos(e_18, { assigned(3,2), assigned(2,2), assigned(4,2), assigned(3,1), assigned(2,3), assigned(1,1) }, { assigned(1,3), assigned(1,2), assigned(3,3), assigned(2,1) }).

%3, 6
#pos(e_19, { assigned(2,2), assigned(4,1), assigned(1,1), assigned(3,2) }, { assigned(2,1), assigned(3,1), assigned(1,2) }).

%1, 6
#pos(e_20, { assigned(2,2), assigned(1,2), assigned(4,3), assigned(2,1), assigned(3,2) }, { assigned(1,3), assigned(1,1), assigned(2,3), assigned(3,3) }).

%4, 18
#pos(e_21, { assigned(1,2), assigned(3,2), assigned(3,3), assigned(1,1), assigned(1,3), assigned(4,2), assigned(4,1) }, { assigned(2,2) }).

%3, 4
#pos(e_22, { assigned(1,3), assigned(1,1), assigned(4,1) }, { assigned(2,3), assigned(1,2), assigned(3,2), assigned(3,3) }).

%2, 20
#pos(e_23, { assigned(3,2), assigned(3,3), assigned(2,2), assigned(2,3), assigned(1,2), assigned(4,3) }, { assigned(1,1), assigned(3,1) }).

%2, 16
#pos(e_24, { assigned(4,3), assigned(1,1), assigned(2,1), assigned(3,3), assigned(2,3), assigned(1,2), assigned(1,3), assigned(2,2) }, { assigned(3,2), assigned(3,1) }).

%3, 20
#pos(e_25, { assigned(2,1), assigned(1,1), assigned(4,3), assigned(2,3), assigned(1,3), assigned(3,3), assigned(2,2), assigned(1,2), assigned(4,2) }, { assigned(3,1), assigned(3,2) }).

%1, 6
#pos(e_26, { assigned(1,3), assigned(4,3), assigned(1,2), assigned(3,3) }, { assigned(2,3), assigned(2,2), assigned(1,1), assigned(3,1), assigned(2,1), assigned(3,2) }).

%2, 6
#pos(e_27, { assigned(1,1), assigned(2,3), assigned(4,1), assigned(3,2), assigned(3,1) }, { assigned(2,1), assigned(2,2), assigned(1,3), assigned(1,2), assigned(3,3) }).

%2, 10
#pos(e_28, { assigned(3,3), assigned(2,2), assigned(4,1), assigned(3,2), assigned(2,3), assigned(3,1), assigned(4,2) }, { assigned(2,1), assigned(1,3), assigned(1,1), assigned(1,2) }).

%1, 6
#pos(e_29, { assigned(4,1), assigned(1,2), assigned(3,3), assigned(4,3), assigned(4,2), assigned(2,1) }, { assigned(3,1), assigned(3,2), assigned(2,3), assigned(1,3) }).

%1, 8
#pos(e_30, { assigned(4,3), assigned(2,3), assigned(4,1), assigned(2,2) }, { assigned(3,2), assigned(1,3), assigned(1,2), assigned(3,3) }).

%2, 4
#pos(e_31, { assigned(1,1), assigned(4,3), assigned(4,1), assigned(1,3) }, { assigned(3,2), assigned(2,2), assigned(2,3), assigned(3,3), assigned(1,2), assigned(2,1), assigned(3,1) }).

%3, 8
#pos(e_32, { assigned(1,2), assigned(4,3), assigned(1,1), assigned(3,2), assigned(3,1), assigned(4,2) }, { assigned(2,1), assigned(2,2), assigned(2,3), assigned(1,3), assigned(3,3) }).

%1, 4
#pos(e_33, { assigned(2,3), assigned(2,2), assigned(1,1), assigned(3,3), assigned(4,1) }, { assigned(2,1), assigned(3,2), assigned(1,2), assigned(1,3), assigned(3,1) }).

%2, 2
#pos(e_34, { assigned(2,3), assigned(1,1), assigned(3,2), assigned(2,2) }, { assigned(2,1), assigned(3,1), assigned(3,3), assigned(1,2), assigned(1,3) }).

%3, 18
#pos(e_35, { assigned(3,3), assigned(4,3), assigned(2,2), assigned(4,1), assigned(4,2), assigned(2,3), assigned(1,1) }, { assigned(1,3), assigned(1,2), assigned(2,1) }).

%3, 10
#pos(e_36, { assigned(1,1), assigned(1,3), assigned(3,1), assigned(4,1), assigned(2,2), assigned(3,2) }, { assigned(3,3), assigned(2,3), assigned(2,1), assigned(1,2) }).

%1, 0
#pos(e_37, { assigned(4,2), assigned(2,3) }, { assigned(2,1), assigned(1,3), assigned(1,2), assigned(3,3), assigned(1,1), assigned(2,2), assigned(3,1), assigned(3,2) }).

%1, 14
#pos(e_38, { assigned(4,3), assigned(1,2), assigned(3,3), assigned(1,3), assigned(2,2), assigned(2,3) }, { assigned(3,1), assigned(2,1), assigned(1,1), assigned(3,2) }).

%0, 0
#pos(e_39, { assigned(3,1), assigned(4,3) }, { assigned(1,3), assigned(2,1), assigned(2,2), assigned(3,3), assigned(2,3) }).

%0, 8
#pos(e_40, { assigned(2,3), assigned(3,1), assigned(3,3), assigned(4,1), assigned(4,3) }, { assigned(2,2), assigned(1,2), assigned(2,1), assigned(1,1), assigned(3,2), assigned(1,3) }).

%1, 2
#pos(e_41, { assigned(3,3), assigned(1,1), assigned(2,1) }, { assigned(1,2), assigned(3,1), assigned(3,2), assigned(2,2), assigned(2,3), assigned(1,3) }).

%2, 4
#pos(e_42, { assigned(4,2), assigned(2,3), assigned(3,3), assigned(3,2), assigned(4,1) }, { assigned(3,1), assigned(1,1), assigned(1,2), assigned(2,1), assigned(2,2) }).

%2, 12
#pos(e_43, { assigned(2,2), assigned(4,2), assigned(2,3), assigned(2,1), assigned(1,1), assigned(3,1), assigned(1,2) }, { assigned(3,2), assigned(3,3), assigned(1,3) }).

%2, 2
#pos(e_44, { assigned(1,1), assigned(2,1), assigned(1,3), assigned(2,2) }, { assigned(3,1), assigned(1,2), assigned(3,3), assigned(3,2), assigned(2,3) }).

%4, 14
#pos(e_45, { assigned(3,3), assigned(1,3), assigned(2,1), assigned(1,2), assigned(3,1), assigned(3,2), assigned(1,1), assigned(4,2) }, { assigned(2,3), assigned(2,2) }).

%2, 4
#pos(e_46, { assigned(1,1), assigned(2,2), assigned(4,3), assigned(1,3), assigned(2,1) }, { assigned(1,2), assigned(3,1), assigned(3,3), assigned(2,3), assigned(3,2) }).

%3, 16
#pos(e_47, { assigned(1,3), assigned(1,2), assigned(2,1), assigned(4,1), assigned(3,2), assigned(3,3), assigned(1,1), assigned(3,1) }, { assigned(2,3), assigned(2,2) }).

%2, 10
#pos(e_48, { assigned(1,3), assigned(2,2), assigned(4,1), assigned(2,3), assigned(4,3) }, { assigned(1,2), assigned(2,1) }).

%3, 4
#pos(e_49, { assigned(4,1), assigned(3,2), assigned(1,1), assigned(1,3) }, { assigned(1,2), assigned(2,2), assigned(3,3), assigned(3,1) }).

%2, 6
#pos(e_50, { assigned(4,2), assigned(1,1), assigned(2,1), assigned(3,3), assigned(3,1) }, { assigned(1,2), assigned(3,2), assigned(1,3), assigned(2,2), assigned(2,3) }).

%3, 8
#pos(e_51, { assigned(2,1), assigned(1,1), assigned(2,2), assigned(1,2), assigned(1,3), assigned(3,2) }, { assigned(3,3), assigned(2,3), assigned(3,1) }).

%3, 20
#pos(e_52, { assigned(1,3), assigned(4,3), assigned(1,1), assigned(3,1), assigned(2,1), assigned(3,2), assigned(3,3), assigned(2,3), assigned(1,2) }, { assigned(2,2) }).

%3, 8
#pos(e_53, { assigned(3,1), assigned(3,2), assigned(1,1), assigned(4,2), assigned(1,2) }, { assigned(2,2), assigned(2,1), assigned(1,3), assigned(3,3) }).

%3, 14
#pos(e_54, { assigned(1,3), assigned(4,1), assigned(3,1), assigned(2,3), assigned(4,3), assigned(4,2) }, { assigned(3,2) }).

%2, 8
#pos(e_55, { assigned(3,2), assigned(2,1), assigned(4,2), assigned(2,3), assigned(4,3) }, { assigned(3,1), assigned(2,2), assigned(1,3), assigned(1,1) }).

%1, 8
#pos(e_56, { assigned(3,3), assigned(2,1), assigned(1,3), assigned(4,1), assigned(1,2) }, { assigned(3,1), assigned(1,1), assigned(3,2), assigned(2,2) }).

%2, 12
#pos(e_57, { assigned(3,2), assigned(4,2), assigned(2,1), assigned(2,3), assigned(1,2) }, { assigned(3,1), assigned(1,1), assigned(1,3), assigned(3,3) }).

%1, 8
#pos(e_58, { assigned(4,2), assigned(3,3), assigned(2,2), assigned(1,2), assigned(2,3) }, { assigned(3,1), assigned(3,2), assigned(1,3), assigned(2,1), assigned(1,1) }).

%2, 8
#pos(e_59, { assigned(4,3), assigned(1,1), assigned(2,3), assigned(2,2), assigned(1,3), assigned(3,1) }, { assigned(3,2), assigned(3,3), assigned(1,2), assigned(2,1) }).

%1, 6
#pos(e_60, { assigned(3,1), assigned(1,1), assigned(3,3) }, { assigned(3,2), assigned(2,3), assigned(2,2), assigned(1,2), assigned(1,3) }).

%1, 2
#pos(e_61, { assigned(1,1), assigned(2,1) }, { assigned(1,3), assigned(2,3), assigned(3,1), assigned(3,3), assigned(2,2), assigned(3,2), assigned(1,2) }).

%2, 8
#pos(e_62, { assigned(2,3), assigned(1,1), assigned(4,1), assigned(4,3) }, { assigned(3,2), assigned(1,2), assigned(3,1), assigned(2,2), assigned(3,3), assigned(1,3) }).

%3, 24
#pos(e_63, { assigned(1,3), assigned(3,3), assigned(1,2), assigned(2,2), assigned(2,3), assigned(3,1), assigned(4,3), assigned(4,2), assigned(3,2) }, { assigned(2,1), assigned(1,1) }).

%3, 8
#pos(e_64, { assigned(4,1), assigned(1,3), assigned(3,3), assigned(1,1) }, { assigned(3,1), assigned(2,2), assigned(2,1) }).

%0, 2
#pos(e_65, { assigned(4,3), assigned(3,1), assigned(3,3), assigned(2,2) }, { assigned(3,2), assigned(1,3), assigned(1,1), assigned(1,2), assigned(2,1), assigned(2,3) }).

%2, 10
#pos(e_66, { assigned(1,2), assigned(2,1), assigned(2,2), assigned(1,1), assigned(3,3), assigned(3,1), assigned(1,3) }, { assigned(2,3), assigned(3,2) }).

%4, 12
#pos(e_67, { assigned(2,2), assigned(1,1), assigned(3,3), assigned(1,3), assigned(4,2) }, { assigned(1,2), assigned(3,1), assigned(2,1) }).

%4, 10
#pos(e_68, { assigned(2,2), assigned(1,3), assigned(1,1), assigned(4,2), assigned(3,2), assigned(2,3), assigned(4,1) }, { assigned(1,2), assigned(3,1), assigned(3,3), assigned(2,1) }).

%2, 14
#pos(e_69, { assigned(2,3), assigned(1,3), assigned(1,1), assigned(4,3), assigned(3,3) }, { assigned(1,2), assigned(2,2), assigned(3,2), assigned(2,1) }).

%1, 4
#pos(e_70, { assigned(2,1), assigned(1,2), assigned(2,3), assigned(1,1), assigned(3,3) }, { assigned(1,3), assigned(3,1), assigned(3,2), assigned(2,2) }).

%2, 2
#pos(e_71, { assigned(3,2), assigned(4,3) }, { assigned(1,2), assigned(3,3), assigned(2,3), assigned(2,2), assigned(1,1) }).

%2, 12
#pos(e_72, { assigned(3,2), assigned(4,2), assigned(3,1), assigned(2,1), assigned(3,3), assigned(1,2), assigned(4,1) }, { assigned(1,3), assigned(2,2), assigned(2,3) }).

%2, 2
#pos(e_73, { assigned(3,2), assigned(2,2) }, { assigned(3,3), assigned(1,2), assigned(1,1), assigned(2,3), assigned(3,1), assigned(2,1) }).

%3, 24
#pos(e_74, { assigned(3,3), assigned(2,2), assigned(1,3), assigned(1,1), assigned(2,1), assigned(4,3), assigned(1,2), assigned(3,2), assigned(2,3), assigned(3,1) }, {  }).

%0, 2
#pos(e_75, { assigned(1,2), assigned(2,2), assigned(3,1) }, { assigned(3,2), assigned(1,1), assigned(2,1), assigned(3,3) }).

%3, 10
#pos(e_76, { assigned(1,3), assigned(3,3), assigned(4,1), assigned(4,2) }, { assigned(3,2), assigned(2,2), assigned(2,3) }).

%2, 4
#pos(e_77, { assigned(2,3), assigned(2,2), assigned(4,3) }, { assigned(1,3), assigned(2,1), assigned(3,1), assigned(1,2) }).

%1, 8
#pos(e_78, { assigned(4,3), assigned(2,3), assigned(1,1), assigned(3,3), assigned(2,2), assigned(4,1) }, { assigned(1,3), assigned(2,1), assigned(3,2), assigned(3,1), assigned(1,2) }).

%3, 2
#pos(e_79, { assigned(3,2), assigned(1,3), assigned(4,2) }, { assigned(1,2), assigned(1,1), assigned(2,3), assigned(2,1), assigned(2,2), assigned(3,1), assigned(3,3) }).

%2, 14
#pos(e_80, { assigned(3,3), assigned(1,2), assigned(2,2), assigned(2,3), assigned(3,2), assigned(1,3), assigned(4,1), assigned(3,1) }, { assigned(2,1), assigned(1,1) }).

%1, 6
#pos(e_81, { assigned(2,3), assigned(2,1), assigned(4,1), assigned(3,3), assigned(1,2), assigned(3,2) }, { assigned(1,3), assigned(2,2), assigned(3,1) }).

%3, 20
#pos(e_82, { assigned(1,1), assigned(2,1), assigned(2,3), assigned(4,2), assigned(2,2), assigned(3,3), assigned(1,2), assigned(4,1), assigned(3,2) }, { assigned(3,1), assigned(1,3) }).

%3, 14
#pos(e_83, { assigned(1,2), assigned(3,3), assigned(4,3), assigned(1,3), assigned(3,2), assigned(1,1) }, { assigned(2,1), assigned(3,1), assigned(2,2) }).

%1, 4
#pos(e_84, { assigned(1,2), assigned(1,3), assigned(4,3), assigned(4,1) }, { assigned(3,3), assigned(2,2), assigned(3,2) }).

%1, 6
#pos(e_85, { assigned(3,3), assigned(2,3), assigned(4,1), assigned(1,1), assigned(1,2), assigned(2,2) }, { assigned(2,1), assigned(3,1), assigned(1,3), assigned(3,2) }).

%3, 2
#pos(e_86, { assigned(4,2), assigned(2,2), assigned(1,1), assigned(1,3) }, { assigned(2,3), assigned(2,1), assigned(3,2), assigned(1,2), assigned(3,3) }).

%3, 20
#pos(e_87, { assigned(2,1), assigned(3,3), assigned(1,3), assigned(3,2), assigned(1,2), assigned(1,1), assigned(4,1), assigned(4,3) }, { assigned(2,2), assigned(2,3) }).

%3, 8
#pos(e_88, { assigned(3,1), assigned(1,1), assigned(4,1), assigned(1,3), assigned(2,2) }, { assigned(1,2), assigned(2,1) }).

%2, 12
#pos(e_89, { assigned(4,3), assigned(3,3), assigned(2,2), assigned(1,2), assigned(1,3) }, { assigned(2,3), assigned(3,1), assigned(3,2), assigned(2,1), assigned(1,1) }).

%3, 12
#pos(e_90, { assigned(2,2), assigned(4,3), assigned(4,1), assigned(3,1), assigned(3,2), assigned(1,1), assigned(4,2) }, { assigned(1,2), assigned(2,1), assigned(2,3), assigned(1,3), assigned(3,3) }).

%1, 4
#pos(e_91, { assigned(1,3), assigned(2,2), assigned(4,3), assigned(1,2) }, { assigned(3,3), assigned(2,1), assigned(2,3), assigned(3,1), assigned(1,1), assigned(3,2) }).

%3, 10
#pos(e_92, { assigned(2,2), assigned(1,3), assigned(1,1), assigned(3,3), assigned(3,1), assigned(3,2), assigned(2,3) }, { assigned(2,1), assigned(1,2) }).

%3, 18
#pos(e_93, { assigned(4,3), assigned(1,2), assigned(4,2), assigned(2,1), assigned(1,3) }, { assigned(3,1), assigned(3,2) }).

%2, 8
#pos(e_94, { assigned(4,1), assigned(1,3) }, { assigned(2,3), assigned(3,1), assigned(1,2), assigned(3,2), assigned(2,1), assigned(2,2) }).

%2, 6
#pos(e_95, { assigned(4,1), assigned(2,2), assigned(1,3), assigned(1,2), assigned(3,2) }, { assigned(3,3), assigned(2,3), assigned(1,1), assigned(2,1), assigned(3,1) }).

%2, 10
#pos(e_96, { assigned(2,2), assigned(1,1), assigned(3,3), assigned(4,1), assigned(4,3), assigned(3,2) }, { assigned(2,1), assigned(3,1), assigned(1,3), assigned(2,3) }).

%2, 8
#pos(e_97, { assigned(4,1), assigned(3,2), assigned(2,1), assigned(2,2) }, { assigned(1,2), assigned(1,3), assigned(3,1), assigned(3,3) }).

%3, 14
#pos(e_98, { assigned(1,1), assigned(4,3), assigned(1,2), assigned(4,1), assigned(2,3), assigned(1,3), assigned(2,2) }, { assigned(3,3), assigned(3,2), assigned(3,1) }).

%0, 2
#pos(e_99, { assigned(2,3), assigned(4,1), assigned(3,1) }, { assigned(3,2), assigned(1,1), assigned(1,3), assigned(2,1), assigned(3,3), assigned(2,2), assigned(1,2) }).

%2, 2
#pos(e_100, { assigned(1,3), assigned(3,2) }, { assigned(1,2), assigned(2,2), assigned(1,1), assigned(2,3), assigned(3,1) }).

%1, 2
#pos(e_101, { assigned(4,2) }, { assigned(1,1), assigned(1,3), assigned(3,1), assigned(1,2), assigned(2,1), assigned(3,3) }).

%3, 14
#pos(e_102, { assigned(2,2), assigned(4,1), assigned(4,3), assigned(2,1), assigned(1,3), assigned(3,2), assigned(4,2) }, { assigned(1,1), assigned(1,2), assigned(3,3) }).

%1, 8
#pos(e_103, { assigned(3,2), assigned(4,1), assigned(4,3), assigned(2,3) }, { assigned(2,2), assigned(2,1), assigned(1,3), assigned(1,2), assigned(1,1) }).

%2, 2
#pos(e_104, { assigned(1,3), assigned(4,1), assigned(3,3) }, { assigned(2,1), assigned(2,2), assigned(3,2), assigned(1,2) }).

%2, 8
#pos(e_105, { assigned(3,1), assigned(2,3), assigned(2,2), assigned(1,2), assigned(1,3) }, { assigned(1,1), assigned(3,3), assigned(2,1) }).

%2, 6
#pos(e_106, { assigned(3,3), assigned(2,1), assigned(4,2), assigned(2,2), assigned(3,2) }, { assigned(1,2), assigned(1,1), assigned(1,3), assigned(2,3), assigned(3,1) }).

%2, 20
#pos(e_107, { assigned(2,3), assigned(4,3), assigned(1,3), assigned(1,2), assigned(3,3) }, { assigned(1,1), assigned(3,2) }).

%1, 2
#pos(e_108, { assigned(2,3), assigned(2,2), assigned(3,2) }, { assigned(3,1), assigned(1,3), assigned(2,1), assigned(1,1), assigned(1,2) }).

%3, 20
#pos(e_109, { assigned(4,3), assigned(3,1), assigned(1,1), assigned(2,3), assigned(4,2), assigned(3,2) }, { assigned(3,3), assigned(1,2) }).

%4, 12
#pos(e_110, { assigned(3,2), assigned(1,1), assigned(3,1), assigned(2,1), assigned(4,2), assigned(1,3), assigned(2,2) }, { assigned(3,3), assigned(1,2), assigned(2,3) }).

%1, 0
#pos(e_111, { assigned(3,1), assigned(2,3) }, { assigned(1,3), assigned(3,2), assigned(1,2), assigned(1,1), assigned(2,1), assigned(3,3), assigned(2,2) }).

%3, 10
#pos(e_112, { assigned(4,1), assigned(4,2), assigned(1,3), assigned(2,2), assigned(3,1), assigned(1,1), assigned(2,3) }, { assigned(1,2), assigned(2,1), assigned(3,2), assigned(3,3) }).

%1, 4
#pos(e_113, { assigned(2,1), assigned(2,2), assigned(3,1), assigned(4,2) }, { assigned(1,2), assigned(3,3), assigned(1,3), assigned(2,3), assigned(1,1), assigned(3,2) }).

%2, 12
#pos(e_114, { assigned(2,3), assigned(1,3), assigned(4,3), assigned(2,2), assigned(1,1) }, { assigned(3,2), assigned(2,1) }).

%3, 6
#pos(e_115, { assigned(1,1), assigned(1,3), assigned(2,1), assigned(1,2), assigned(2,3), assigned(4,2) }, { assigned(3,3), assigned(3,1), assigned(3,2), assigned(2,2) }).

%4, 10
#pos(e_116, { assigned(2,3), assigned(1,1), assigned(4,1), assigned(1,3), assigned(3,2), assigned(4,2), assigned(1,2) }, { assigned(3,3), assigned(2,2), assigned(3,1), assigned(2,1) }).

%3, 4
#pos(e_117, { assigned(2,3), assigned(3,2), assigned(4,2), assigned(1,1), assigned(4,3) }, { assigned(3,3), assigned(2,1), assigned(1,2), assigned(2,2), assigned(3,1), assigned(1,3) }).

%2, 4
#pos(e_118, { assigned(1,2), assigned(1,1), assigned(4,2), assigned(2,3), assigned(3,1) }, { assigned(2,2), assigned(3,3), assigned(3,2), assigned(2,1), assigned(1,3) }).

%1, 8
#pos(e_119, { assigned(4,3), assigned(2,2), assigned(3,2), assigned(1,2), assigned(2,3) }, { assigned(1,1), assigned(2,1), assigned(3,1) }).

%2, 4
#pos(e_120, { assigned(2,3), assigned(3,1), assigned(1,1), assigned(2,2), assigned(1,3) }, { assigned(3,3), assigned(3,2), assigned(1,2), assigned(2,1) }).

%0, 0
#pos(e_121, { assigned(3,3), assigned(3,1) }, { assigned(2,2), assigned(2,1), assigned(3,2), assigned(1,2), assigned(1,1) }).

%1, 2
#pos(e_122, { assigned(3,1), assigned(2,1), assigned(3,2), assigned(3,3) }, { assigned(2,2), assigned(1,1), assigned(1,3), assigned(1,2), assigned(2,3) }).

%2, 2
#pos(e_123, { assigned(3,2), assigned(3,3), assigned(2,1), assigned(4,2) }, { assigned(1,2), assigned(2,3), assigned(3,1), assigned(1,3), assigned(2,2), assigned(1,1) }).

%1, 10
#pos(e_124, { assigned(3,1), assigned(4,1), assigned(2,2), assigned(1,2), assigned(1,3), assigned(2,1), assigned(2,3) }, { assigned(3,3), assigned(3,2), assigned(1,1) }).

%2, 10
#pos(e_125, { assigned(2,1), assigned(2,3), assigned(1,2), assigned(3,2) }, { assigned(3,3), assigned(1,1), assigned(1,3), assigned(3,1) }).

%3, 12
#pos(e_126, { assigned(4,2), assigned(2,2), assigned(1,1), assigned(2,3), assigned(3,1) }, { assigned(3,3), assigned(1,2), assigned(2,1) }).

%3, 12
#pos(e_127, { assigned(2,1), assigned(4,2), assigned(3,2), assigned(2,2), assigned(4,1), assigned(1,1) }, { assigned(3,3), assigned(1,2), assigned(2,3), assigned(3,1), assigned(1,3) }).

%2, 10
#pos(e_128, { assigned(1,1), assigned(3,3), assigned(3,1), assigned(3,2), assigned(4,1), assigned(4,3), assigned(2,2) }, { assigned(2,3), assigned(1,3), assigned(1,2), assigned(2,1) }).

%3, 4
#pos(e_129, { assigned(3,2), assigned(4,2), assigned(1,1), assigned(3,1) }, { assigned(2,2), assigned(2,3), assigned(3,3), assigned(1,2), assigned(2,1), assigned(1,3) }).

%1, 4
#pos(e_130, { assigned(1,2), assigned(4,1), assigned(2,3), assigned(2,2), assigned(1,3) }, { assigned(1,1), assigned(2,1), assigned(3,3), assigned(3,2) }).

%4, 24
#pos(e_131, { assigned(4,2), assigned(1,1), assigned(3,1), assigned(1,3), assigned(3,3), assigned(2,2), assigned(4,3), assigned(4,1) }, { assigned(2,3), assigned(1,2) }).

%2, 12
#pos(e_132, { assigned(1,2), assigned(1,1), assigned(2,3), assigned(1,3), assigned(3,1), assigned(4,1), assigned(3,3) }, { assigned(2,2), assigned(2,1), assigned(3,2) }).

%1, 10
#pos(e_133, { assigned(2,2), assigned(4,3), assigned(2,3), assigned(4,2), assigned(4,1), assigned(2,1), assigned(3,1) }, { assigned(1,1), assigned(1,2), assigned(3,3) }).

%4, 24
#pos(e_134, { assigned(2,2), assigned(2,1), assigned(4,2), assigned(3,3), assigned(3,2) }, { assigned(2,3), assigned(3,1) }).

%2, 10
#pos(e_135, { assigned(2,2), assigned(3,1), assigned(3,2), assigned(3,3), assigned(2,1), assigned(2,3), assigned(1,1) }, { assigned(1,2), assigned(1,3) }).

%2, 14
#pos(e_136, { assigned(1,1), assigned(4,1), assigned(3,2), assigned(2,1), assigned(4,3), assigned(3,1) }, { assigned(1,3), assigned(3,3), assigned(2,2) }).

%2, 14
#pos(e_137, { assigned(1,2), assigned(2,2), assigned(2,1), assigned(3,3), assigned(3,1), assigned(1,3), assigned(3,2) }, { assigned(2,3) }).

%3, 10
#pos(e_138, { assigned(3,3), assigned(1,3), assigned(1,1), assigned(2,2), assigned(4,1) }, { assigned(1,2), assigned(2,1), assigned(3,1) }).

%1, 8
#pos(e_139, { assigned(1,1), assigned(2,3), assigned(4,1), assigned(3,3), assigned(3,1), assigned(2,2) }, { assigned(2,1), assigned(1,3), assigned(3,2), assigned(1,2) }).

%2, 10
#pos(e_140, { assigned(3,1), assigned(2,2), assigned(3,3), assigned(1,1), assigned(4,2), assigned(4,3), assigned(2,1) }, { assigned(1,2), assigned(3,2), assigned(2,3), assigned(1,3) }).

%1, 6
#pos(e_141, { assigned(2,3), assigned(2,1), assigned(4,3), assigned(4,1), assigned(2,2) }, { assigned(1,3), assigned(3,1), assigned(1,1), assigned(3,3) }).

%4, 16
#pos(e_142, { assigned(4,2), assigned(2,1), assigned(2,2), assigned(3,2), assigned(1,1), assigned(1,3) }, { assigned(3,1), assigned(3,3) }).

%3, 12
#pos(e_143, { assigned(2,3), assigned(3,1), assigned(1,3), assigned(3,3), assigned(3,2) }, { assigned(1,2), assigned(2,1) }).

%3, 8
#pos(e_144, { assigned(1,3), assigned(2,3), assigned(2,1), assigned(4,2), assigned(3,1), assigned(1,1) }, { assigned(1,2), assigned(3,2), assigned(3,3), assigned(2,2) }).

%4, 14
#pos(e_145, { assigned(1,2), assigned(3,3), assigned(2,1), assigned(4,2), assigned(3,2), assigned(4,1), assigned(1,3), assigned(1,1) }, { assigned(3,1), assigned(2,2), assigned(2,3) }).

%2, 2
#pos(e_146, { assigned(4,3), assigned(2,2), assigned(1,1), assigned(1,3) }, { assigned(1,2), assigned(3,2), assigned(2,1), assigned(2,3), assigned(3,1), assigned(3,3) }).

%2, 12
#pos(e_147, { assigned(1,1), assigned(4,2), assigned(1,2), assigned(3,1), assigned(4,1), assigned(2,2) }, { assigned(3,2), assigned(2,1), assigned(1,3) }).

%4, 30
#pos(e_148, { assigned(3,1), assigned(2,1), assigned(4,3), assigned(2,3), assigned(4,2), assigned(1,1), assigned(3,3), assigned(3,2), assigned(4,1), assigned(1,3) }, { assigned(2,2) }).

%1, 8
#pos(e_149, { assigned(1,1), assigned(2,3), assigned(1,2), assigned(2,2), assigned(2,1), assigned(3,1) }, { assigned(3,3), assigned(3,2) }).

%2, 8
#pos(e_150, { assigned(1,3), assigned(2,1), assigned(2,3), assigned(3,3), assigned(2,2), assigned(1,1) }, { assigned(1,2), assigned(3,2), assigned(3,1) }).

%2, 8
#pos(e_151, { assigned(4,1), assigned(3,2), assigned(4,2), assigned(2,1), assigned(1,2), assigned(3,3) }, { assigned(1,3), assigned(1,1), assigned(2,2), assigned(2,3) }).

%3, 18
#pos(e_152, { assigned(1,1), assigned(1,2), assigned(4,2), assigned(3,1), assigned(2,1), assigned(3,2), assigned(3,3), assigned(2,2) }, { assigned(1,3) }).

%3, 4
#pos(e_153, { assigned(3,2), assigned(1,3), assigned(4,2), assigned(2,3) }, { assigned(2,1), assigned(1,1), assigned(3,1), assigned(3,3) }).

%2, 6
#pos(e_154, { assigned(1,3), assigned(4,3), assigned(1,1), assigned(1,2) }, { assigned(2,2), assigned(3,1), assigned(3,2), assigned(2,1), assigned(3,3) }).

%1, 14
#pos(e_155, { assigned(4,1), assigned(4,3), assigned(2,2), assigned(1,2), assigned(2,3), assigned(3,3), assigned(1,3) }, { assigned(1,1), assigned(3,1), assigned(2,1), assigned(3,2) }).

%1, 6
#pos(e_156, { assigned(2,1), assigned(3,1), assigned(1,2), assigned(1,1) }, { assigned(1,3), assigned(2,2), assigned(3,2), assigned(2,3), assigned(3,3) }).

%2, 18
#pos(e_157, { assigned(4,3), assigned(2,3), assigned(1,3), assigned(4,2), assigned(3,3), assigned(1,2) }, { assigned(2,1), assigned(3,2), assigned(3,1) }).

%4, 20
#pos(e_158, { assigned(2,1), assigned(3,3), assigned(4,1), assigned(3,2), assigned(2,2), assigned(3,1), assigned(1,3) }, {  }).

%2, 4
#pos(e_159, { assigned(1,1), assigned(2,1), assigned(1,3), assigned(1,2), assigned(4,3) }, { assigned(3,2), assigned(3,1), assigned(2,2) }).

%2, 14
#pos(e_160, { assigned(2,1), assigned(1,3), assigned(1,2), assigned(3,3), assigned(4,1), assigned(4,3), assigned(3,1), assigned(4,2) }, { assigned(1,1), assigned(2,2), assigned(3,2), assigned(2,3) }).

%4, 16
#pos(e_161, { assigned(1,3), assigned(4,2), assigned(1,1), assigned(3,2), assigned(4,3), assigned(2,2) }, { assigned(3,3), assigned(3,1) }).

%2, 6
#pos(e_162, { assigned(2,2), assigned(4,2), assigned(3,1), assigned(3,2), assigned(3,3) }, { assigned(1,1), assigned(1,3), assigned(1,2), assigned(2,1), assigned(2,3) }).

%2, 12
#pos(e_163, { assigned(1,1), assigned(2,1), assigned(2,3), assigned(3,1), assigned(4,1) }, { assigned(3,3), assigned(1,2), assigned(1,3), assigned(2,2) }).

%3, 16
#pos(e_164, { assigned(4,1), assigned(2,1), assigned(4,3), assigned(1,3), assigned(4,2) }, { assigned(2,3), assigned(3,2), assigned(2,2) }).

%4, 16
#pos(e_165, { assigned(3,1), assigned(3,2), assigned(1,1), assigned(2,3), assigned(1,3), assigned(2,2), assigned(4,2), assigned(1,2) }, { assigned(3,3), assigned(2,1) }).

%2, 8
#pos(e_166, { assigned(1,2), assigned(3,1), assigned(1,1), assigned(4,1), assigned(2,3) }, { assigned(3,3), assigned(1,3), assigned(2,1) }).

%0, 2
#pos(e_167, { assigned(2,2), assigned(4,3), assigned(1,2) }, { assigned(3,1), assigned(3,2), assigned(2,3), assigned(1,1), assigned(1,3), assigned(2,1), assigned(3,3) }).

%2, 6
#pos(e_168, { assigned(3,2), assigned(2,2), assigned(1,2), assigned(1,1) }, { assigned(2,3), assigned(2,1), assigned(1,3) }).

%3, 8
#pos(e_169, { assigned(3,1), assigned(2,2), assigned(3,2), assigned(1,1), assigned(1,3), assigned(2,1) }, { assigned(2,3), assigned(3,3), assigned(1,2) }).

%2, 8
#pos(e_170, { assigned(1,3), assigned(3,3), assigned(2,2), assigned(2,3), assigned(3,2) }, { assigned(2,1), assigned(1,1), assigned(3,1), assigned(1,2) }).

%1, 8
#pos(e_171, { assigned(4,3), assigned(2,2), assigned(3,1), assigned(2,3), assigned(1,1), assigned(3,3) }, { assigned(3,2), assigned(2,1), assigned(1,3), assigned(1,2) }).

%2, 4
#pos(e_172, { assigned(4,2), assigned(3,2) }, { assigned(1,3), assigned(1,2), assigned(2,3), assigned(2,1), assigned(2,2) }).

%1, 6
#pos(e_173, { assigned(1,2), assigned(4,3), assigned(2,2), assigned(4,2), assigned(4,1) }, { assigned(2,3), assigned(1,1), assigned(2,1), assigned(3,2), assigned(3,1) }).

%2, 8
#pos(e_174, { assigned(2,3), assigned(3,2), assigned(4,3), assigned(1,2) }, { assigned(3,3), assigned(1,3), assigned(1,1), assigned(2,2) }).

%2, 8
#pos(e_175, { assigned(4,2), assigned(2,3), assigned(3,2), assigned(4,1), assigned(1,2) }, { assigned(1,1), assigned(1,3), assigned(2,2), assigned(3,1), assigned(2,1) }).

%4, 14
#pos(e_176, { assigned(3,1), assigned(2,1), assigned(1,1), assigned(2,3), assigned(3,2), assigned(1,3) }, { assigned(1,2) }).

%1, 2
#pos(e_177, { assigned(3,3), assigned(1,2), assigned(4,2) }, { assigned(2,1), assigned(1,1), assigned(1,3), assigned(3,1), assigned(2,3) }).

%4, 14
#pos(e_178, { assigned(3,1), assigned(4,1), assigned(1,3), assigned(4,2), assigned(4,3), assigned(1,1), assigned(1,2), assigned(3,2) }, { assigned(2,1), assigned(3,3), assigned(2,2), assigned(2,3) }).

%1, 4
#pos(e_179, { assigned(3,1), assigned(2,2) }, { assigned(3,2), assigned(2,3), assigned(3,3), assigned(1,1), assigned(1,2) }).

%2, 10
#pos(e_180, { assigned(3,1), assigned(3,2), assigned(1,2), assigned(4,1), assigned(3,3), assigned(1,1) }, { assigned(2,3), assigned(2,1), assigned(1,3), assigned(2,2) }).

%2, 14
#pos(e_181, { assigned(4,1), assigned(1,2), assigned(2,3), assigned(2,2), assigned(3,1) }, { assigned(2,1), assigned(3,2), assigned(1,3) }).

%3, 14
#pos(e_182, { assigned(1,2), assigned(2,1), assigned(2,2), assigned(1,1), assigned(3,2), assigned(4,2) }, { assigned(1,3), assigned(3,3), assigned(2,3) }).

%2, 4
#pos(e_183, { assigned(3,1), assigned(2,3), assigned(1,3), assigned(2,1), assigned(3,2) }, { assigned(3,3), assigned(1,2), assigned(2,2), assigned(1,1) }).

%2, 10
#pos(e_184, { assigned(1,1), assigned(1,2), assigned(2,3), assigned(3,3), assigned(3,1), assigned(4,2) }, { assigned(3,2), assigned(2,1), assigned(2,2), assigned(1,3) }).

%1, 6
#pos(e_185, { assigned(1,2), assigned(1,1), assigned(4,1), assigned(2,1) }, { assigned(3,3), assigned(3,2), assigned(2,3), assigned(1,3) }).

%1, 2
#pos(e_186, { assigned(3,1), assigned(4,2), assigned(2,3) }, { assigned(2,2), assigned(1,2), assigned(1,3), assigned(3,2), assigned(3,3), assigned(1,1), assigned(2,1) }).

%4, 14
#pos(e_187, { assigned(1,3), assigned(4,3), assigned(2,1), assigned(1,1) }, { assigned(3,1), assigned(3,3), assigned(1,2) }).

%2, 4
#pos(e_188, { assigned(2,1), assigned(3,3), assigned(2,3), assigned(3,2), assigned(4,2) }, { assigned(1,3), assigned(3,1), assigned(2,2), assigned(1,2), assigned(1,1) }).

%2, 4
#pos(e_189, { assigned(2,1), assigned(3,2), assigned(4,3), assigned(3,3), assigned(4,2) }, { assigned(2,2), assigned(2,3), assigned(3,1), assigned(1,2), assigned(1,3), assigned(1,1) }).

%1, 8
#pos(e_190, { assigned(3,1), assigned(2,3), assigned(3,2), assigned(3,3) }, { assigned(1,3), assigned(2,1), assigned(1,2) }).

%4, 20
#pos(e_191, { assigned(4,2), assigned(3,3), assigned(1,3), assigned(1,2), assigned(2,2), assigned(1,1) }, { assigned(2,3) }).

%4, 10
#pos(e_192, { assigned(4,3), assigned(1,1), assigned(4,2), assigned(1,3), assigned(3,2), assigned(3,1), assigned(2,1) }, { assigned(1,2), assigned(3,3), assigned(2,3) }).

%3, 8
#pos(e_193, { assigned(4,3), assigned(1,3), assigned(4,2), assigned(1,1), assigned(2,2) }, { assigned(3,3), assigned(3,2), assigned(2,1), assigned(1,2), assigned(3,1) }).

%2, 20
#pos(e_194, { assigned(2,2), assigned(4,1), assigned(1,3), assigned(3,1), assigned(3,3), assigned(2,3), assigned(1,2), assigned(4,3) }, { assigned(1,1), assigned(2,1) }).

%2, 10
#pos(e_195, { assigned(4,1), assigned(4,3), assigned(2,2), assigned(4,2), assigned(1,2), assigned(1,1) }, { assigned(3,3), assigned(3,1), assigned(3,2), assigned(2,1) }).

%1, 6
#pos(e_196, { assigned(1,2), assigned(4,1), assigned(2,3) }, { assigned(1,3), assigned(3,3), assigned(2,2), assigned(2,1), assigned(3,2) }).

%2, 10
#pos(e_197, { assigned(1,3), assigned(3,1), assigned(2,1), assigned(3,2), assigned(4,3) }, { assigned(1,1), assigned(1,2) }).

%2, 6
#pos(e_198, { assigned(1,3), assigned(3,2), assigned(2,3), assigned(2,1), assigned(4,3) }, { assigned(3,1), assigned(2,2), assigned(1,1), assigned(3,3), assigned(1,2) }).

%3, 6
#pos(e_199, { assigned(2,3), assigned(4,2), assigned(1,3) }, { assigned(2,2), assigned(1,2), assigned(3,3), assigned(1,1) }).

%1, 4
#pos(e_200, { assigned(2,2), assigned(3,3), assigned(4,2), assigned(2,3), assigned(3,1) }, { assigned(1,3), assigned(1,2), assigned(2,1), assigned(1,1), assigned(3,2) }).

%1, 10
#pos(e_201, { assigned(2,2), assigned(1,2), assigned(2,1), assigned(4,1), assigned(4,3), assigned(1,1) }, { assigned(3,1), assigned(3,2), assigned(1,3) }).

%2, 14
#pos(e_202, { assigned(1,2), assigned(4,1), assigned(3,1), assigned(2,2), assigned(1,1), assigned(4,2), assigned(2,3), assigned(3,3) }, { assigned(1,3), assigned(3,2) }).

%3, 6
#pos(e_203, { assigned(1,1), assigned(2,1), assigned(1,2), assigned(1,3), assigned(2,3), assigned(4,2) }, { assigned(3,3), assigned(3,2), assigned(2,2), assigned(3,1) }).

%1, 6
#pos(e_204, { assigned(3,3), assigned(1,3), assigned(4,1) }, { assigned(3,1), assigned(2,3), assigned(2,1), assigned(1,2), assigned(3,2), assigned(1,1) }).

%1, 0
#pos(e_205, { assigned(3,2) }, { assigned(3,1), assigned(2,1), assigned(1,2), assigned(2,3), assigned(1,3), assigned(1,1), assigned(2,2), assigned(3,3) }).

%3, 14
#pos(e_206, { assigned(3,2), assigned(2,1), assigned(3,1), assigned(1,1), assigned(4,1) }, { assigned(2,3), assigned(1,3), assigned(2,2) }).

%2, 2
#pos(e_207, { assigned(3,2), assigned(4,1), assigned(1,1) }, { assigned(3,3), assigned(2,3), assigned(2,1), assigned(1,2), assigned(3,1), assigned(2,2) }).

%2, 6
#pos(e_208, { assigned(3,3), assigned(1,2), assigned(4,2), assigned(1,1), assigned(4,1), assigned(4,3) }, { assigned(3,2), assigned(2,2), assigned(2,1), assigned(1,3), assigned(3,1), assigned(2,3) }).

%2, 2
#pos(e_209, { assigned(1,2), assigned(1,3), assigned(4,2) }, { assigned(2,3), assigned(3,3), assigned(1,1), assigned(3,2), assigned(2,2), assigned(3,1), assigned(2,1) }).

%3, 18
#pos(e_210, { assigned(2,2), assigned(3,3), assigned(2,3), assigned(1,1), assigned(2,1), assigned(1,2), assigned(3,2), assigned(1,3), assigned(3,1) }, {  }).

%3, 20
#pos(e_211, { assigned(2,2), assigned(3,3), assigned(2,1), assigned(3,1), assigned(1,3), assigned(4,2), assigned(1,2) }, { assigned(1,1) }).

%2, 4
#pos(e_212, { assigned(1,1), assigned(3,3), assigned(4,3), assigned(3,2) }, { assigned(3,1), assigned(2,3), assigned(1,2), assigned(1,3) }).

%1, 0
#pos(e_213, { assigned(2,3), assigned(1,1) }, { assigned(2,2), assigned(1,3), assigned(2,1), assigned(1,2), assigned(3,1), assigned(3,2), assigned(3,3) }).

%2, 2
#pos(e_214, { assigned(3,1), assigned(4,3) }, { assigned(2,2), assigned(3,3), assigned(1,1), assigned(2,1), assigned(1,2) }).

%2, 18
#pos(e_215, { assigned(3,3), assigned(4,3), assigned(1,3), assigned(1,2), assigned(3,2), assigned(2,3), assigned(4,1) }, { assigned(2,1), assigned(1,1), assigned(3,1) }).

%1, 4
#pos(e_216, { assigned(3,1), assigned(2,3), assigned(4,2), assigned(2,2) }, { assigned(1,2), assigned(3,3), assigned(1,1), assigned(3,2) }).

%2, 2
#pos(e_217, { assigned(2,3), assigned(1,3), assigned(4,2) }, { assigned(3,2), assigned(2,2), assigned(1,2), assigned(1,1), assigned(2,1), assigned(3,1), assigned(3,3) }).

%2, 10
#pos(e_218, { assigned(2,2), assigned(3,2), assigned(1,1), assigned(2,1), assigned(3,3), assigned(1,2), assigned(2,3) }, { assigned(1,3), assigned(3,1) }).

%2, 4
#pos(e_219, { assigned(3,3), assigned(2,3), assigned(4,1), assigned(3,2) }, { assigned(1,3), assigned(2,1), assigned(2,2), assigned(3,1), assigned(1,2) }).

%3, 16
#pos(e_220, { assigned(4,1), assigned(4,3), assigned(1,1), assigned(4,2), assigned(2,2) }, { assigned(3,3), assigned(1,2) }).

%2, 4
#pos(e_221, { assigned(1,2), assigned(1,1), assigned(2,2) }, { assigned(3,3), assigned(3,2), assigned(2,1), assigned(2,3) }).

%2, 8
#pos(e_222, { assigned(4,3), assigned(3,2), assigned(2,2), assigned(2,3), assigned(3,1), assigned(1,3) }, { assigned(3,3), assigned(1,2), assigned(1,1), assigned(2,1) }).

%3, 20
#pos(e_223, { assigned(4,3), assigned(2,2), assigned(3,3), assigned(4,2), assigned(2,3) }, { assigned(1,2), assigned(2,1) }).

%3, 18
#pos(e_224, { assigned(3,1), assigned(1,2), assigned(4,2), assigned(3,2), assigned(2,2), assigned(1,3), assigned(2,1) }, { assigned(2,3), assigned(1,1), assigned(3,3) }).

%1, 8
#pos(e_225, { assigned(4,3), assigned(1,2), assigned(3,1), assigned(4,1) }, { assigned(2,1), assigned(2,2), assigned(1,1) }).

%2, 10
#pos(e_226, { assigned(3,1), assigned(1,3), assigned(3,3), assigned(3,2), assigned(2,2), assigned(2,1), assigned(4,1) }, { assigned(2,3), assigned(1,2), assigned(1,1) }).

%3, 20
#pos(e_227, { assigned(4,2), assigned(4,1), assigned(1,2), assigned(4,3), assigned(2,3), assigned(2,2) }, { assigned(2,1), assigned(1,3) }).

%3, 14
#pos(e_228, { assigned(1,1), assigned(3,2), assigned(4,3), assigned(3,3), assigned(2,3), assigned(1,3) }, { assigned(3,1), assigned(2,1) }).

%3, 4
#pos(e_229, { assigned(1,1), assigned(3,2), assigned(4,2), assigned(3,3) }, { assigned(2,2), assigned(1,3), assigned(2,3), assigned(1,2), assigned(3,1) }).

%3, 10
#pos(e_230, { assigned(4,2), assigned(2,2), assigned(4,1), assigned(4,3), assigned(3,2), assigned(1,1), assigned(2,3) }, { assigned(1,3), assigned(1,2), assigned(3,1), assigned(2,1), assigned(3,3) }).

%3, 8
#pos(e_231, { assigned(1,3), assigned(4,3), assigned(3,2), assigned(4,1), assigned(1,1) }, { assigned(3,3), assigned(3,1), assigned(2,2), assigned(2,3), assigned(1,2) }).

%2, 8
#pos(e_232, { assigned(4,3), assigned(3,3), assigned(1,1), assigned(1,3), assigned(2,1) }, { assigned(3,2), assigned(2,3) }).

%2, 2
#pos(e_233, { assigned(4,1), assigned(1,1), assigned(3,2) }, { assigned(3,1), assigned(1,3), assigned(3,3), assigned(2,1), assigned(2,3), assigned(1,2), assigned(2,2) }).

%0, 0
#pos(e_234, { assigned(2,2), assigned(2,3), assigned(4,1) }, { assigned(3,3), assigned(1,3), assigned(1,1), assigned(2,1), assigned(1,2), assigned(3,2), assigned(3,1) }).

%1, 6
#pos(e_235, { assigned(4,1), assigned(1,1) }, { assigned(1,3), assigned(1,2), assigned(3,3), assigned(2,2), assigned(2,1), assigned(3,2) }).

%3, 12
#pos(e_236, { assigned(3,3), assigned(3,1), assigned(3,2), assigned(1,3), assigned(1,1), assigned(2,3), assigned(4,1) }, { assigned(2,1), assigned(2,2), assigned(1,2) }).

%3, 12
#pos(e_237, { assigned(2,1), assigned(4,2), assigned(1,3), assigned(3,2) }, { assigned(2,3), assigned(1,2), assigned(3,3) }).

%1, 4
#pos(e_238, { assigned(3,3), assigned(3,1), assigned(2,3), assigned(1,1) }, { assigned(1,3), assigned(2,1), assigned(2,2), assigned(3,2), assigned(1,2) }).

%1, 8
#pos(e_239, { assigned(2,1), assigned(2,2), assigned(4,1), assigned(3,1), assigned(4,2) }, { assigned(1,3), assigned(3,3), assigned(1,2), assigned(1,1), assigned(3,2), assigned(2,3) }).

%2, 10
#pos(e_240, { assigned(1,3), assigned(3,1), assigned(3,2), assigned(2,3), assigned(2,1), assigned(3,3), assigned(2,2) }, { assigned(1,2), assigned(1,1) }).

%0, 0
#pos(e_241, { assigned(3,1) }, { assigned(1,1), assigned(1,2), assigned(2,1), assigned(3,3), assigned(2,3), assigned(2,2), assigned(1,3), assigned(3,2) }).

%2, 14
#pos(e_242, { assigned(3,1), assigned(1,3), assigned(1,1), assigned(4,1) }, { assigned(3,2), assigned(2,2), assigned(1,2) }).

%3, 6
#pos(e_243, { assigned(4,2), assigned(1,1), assigned(2,1), assigned(1,3), assigned(2,2), assigned(3,3) }, { assigned(1,2), assigned(3,1), assigned(3,2), assigned(2,3) }).

%2, 6
#pos(e_244, { assigned(3,3), assigned(3,1), assigned(3,2), assigned(4,1), assigned(2,3) }, { assigned(1,2), assigned(2,2), assigned(2,1), assigned(1,1), assigned(1,3) }).

%2, 8
#pos(e_245, { assigned(4,2), assigned(2,1), assigned(4,3), assigned(1,1), assigned(2,3) }, { assigned(1,2), assigned(3,2), assigned(3,3), assigned(2,2) }).

%3, 10
#pos(e_246, { assigned(2,3), assigned(3,3), assigned(1,3), assigned(3,1), assigned(1,1), assigned(1,2), assigned(3,2) }, { assigned(2,2), assigned(2,1) }).

%4, 10
#pos(e_247, { assigned(4,2), assigned(1,3), assigned(4,3), assigned(2,1), assigned(3,2), assigned(3,1), assigned(1,1) }, { assigned(2,2), assigned(1,2), assigned(2,3), assigned(3,3) }).

%3, 18
#pos(e_248, { assigned(2,2), assigned(4,1), assigned(1,1), assigned(3,1), assigned(2,1) }, { assigned(3,3), assigned(1,2) }).

%2, 8
#pos(e_249, { assigned(2,3), assigned(3,3), assigned(2,1), assigned(3,2), assigned(1,2) }, { assigned(3,1), assigned(2,2), assigned(1,1), assigned(1,3) }).

%2, 12
#pos(e_250, { assigned(3,3), assigned(3,1), assigned(2,1), assigned(1,3), assigned(1,1), assigned(2,3) }, { assigned(2,2), assigned(1,2), assigned(3,2) }).

%2, 8
#pos(e_251, { assigned(1,3), assigned(3,3), assigned(2,2), assigned(2,1), assigned(1,2), assigned(4,2) }, { assigned(2,3), assigned(1,1), assigned(3,2) }).

%0, 6
#pos(e_252, { assigned(2,3), assigned(4,3), assigned(3,3), assigned(4,1) }, { assigned(1,1), assigned(3,2), assigned(1,3), assigned(2,1) }).

%2, 4
#pos(e_253, { assigned(4,1), assigned(4,2), assigned(1,1) }, { assigned(3,2), assigned(2,1), assigned(1,2), assigned(1,3) }).

%1, 8
#pos(e_254, { assigned(2,2), assigned(3,3), assigned(3,2), assigned(3,1), assigned(4,3), assigned(1,2) }, { assigned(1,3), assigned(2,1), assigned(1,1), assigned(2,3) }).

%2, 8
#pos(e_255, { assigned(4,3), assigned(4,1), assigned(2,1), assigned(1,1) }, { assigned(3,1), assigned(2,3), assigned(3,2) }).

%1, 2
#pos(e_256, { assigned(2,2) }, { assigned(3,3), assigned(2,1), assigned(1,1), assigned(2,3), assigned(3,1), assigned(1,2) }).

%2, 8
#pos(e_257, { assigned(4,1), assigned(4,2), assigned(2,3), assigned(4,3) }, { assigned(3,2), assigned(3,1), assigned(1,1), assigned(3,3) }).

%2, 12
#pos(e_258, { assigned(1,1), assigned(4,1), assigned(2,1), assigned(1,2), assigned(3,2), assigned(2,2) }, { assigned(3,1), assigned(3,3), assigned(1,3), assigned(2,3) }).

%2, 6
#pos(e_259, { assigned(3,1), assigned(1,3), assigned(3,2), assigned(2,2), assigned(4,1), assigned(2,3) }, { assigned(2,1), assigned(1,2), assigned(1,1), assigned(3,3) }).

%1, 2
#pos(e_260, { assigned(3,3), assigned(3,1), assigned(1,2), assigned(3,2) }, { assigned(2,3), assigned(1,3), assigned(1,1), assigned(2,1), assigned(2,2) }).

%3, 10
#pos(e_261, { assigned(1,1), assigned(2,2), assigned(3,2), assigned(3,1), assigned(1,2), assigned(4,3), assigned(1,3) }, { assigned(2,3), assigned(2,1), assigned(3,3) }).

%3, 20
#pos(e_262, { assigned(1,3), assigned(2,1), assigned(2,2), assigned(4,1), assigned(3,1), assigned(4,3), assigned(1,1), assigned(2,3), assigned(3,2) }, { assigned(1,2), assigned(3,3) }).

%2, 8
#pos(e_263, { assigned(2,2), assigned(3,1), assigned(1,1), assigned(3,2), assigned(2,1) }, { assigned(1,3), assigned(1,2), assigned(3,3) }).

%1, 0
#pos(e_264, { assigned(1,1) }, { assigned(1,3), assigned(3,2), assigned(3,3), assigned(3,1), assigned(2,2), assigned(2,1) }).

%2, 6
#pos(e_265, { assigned(4,2), assigned(2,3), assigned(1,3), assigned(3,1), assigned(3,3) }, { assigned(3,2), assigned(2,2), assigned(1,1), assigned(2,1), assigned(1,2) }).

%2, 14
#pos(e_266, { assigned(1,1), assigned(2,2), assigned(2,3), assigned(4,1), assigned(3,3), assigned(3,1), assigned(4,2), assigned(1,2) }, { assigned(1,3), assigned(2,1), assigned(3,2) }).

%3, 14
#pos(e_267, { assigned(4,1), assigned(2,1), assigned(4,2), assigned(1,3), assigned(2,2) }, { assigned(1,2), assigned(3,1) }).

%0, 2
#pos(e_268, { assigned(3,1), assigned(4,1), assigned(2,3) }, { assigned(1,2), assigned(2,2), assigned(3,3), assigned(3,2), assigned(1,1), assigned(1,3), assigned(2,1) }).

%1, 0
#pos(e_269, { assigned(4,3), assigned(1,1) }, { assigned(2,3), assigned(1,3), assigned(1,2), assigned(3,3), assigned(3,2), assigned(2,2), assigned(2,1) }).

%2, 10
#pos(e_270, { assigned(1,3), assigned(2,3), assigned(3,2), assigned(4,1), assigned(1,2), assigned(3,1), assigned(2,2) }, { assigned(3,3), assigned(1,1) }).

%2, 12
#pos(e_271, { assigned(4,1), assigned(4,2), assigned(2,1), assigned(3,3), assigned(3,2) }, { assigned(1,3), assigned(2,3), assigned(1,1) }).

%2, 14
#pos(e_272, { assigned(3,1), assigned(3,2), assigned(4,1), assigned(3,3), assigned(4,3), assigned(2,2), assigned(1,2) }, { assigned(2,1), assigned(2,3), assigned(1,3) }).

%2, 8
#pos(e_273, { assigned(2,2), assigned(4,1), assigned(1,3), assigned(1,2), assigned(2,3), assigned(3,2) }, { assigned(2,1), assigned(3,3), assigned(1,1), assigned(3,1) }).

%3, 10
#pos(e_274, { assigned(4,2), assigned(2,3), assigned(2,1), assigned(4,3), assigned(3,2), assigned(1,1) }, { assigned(3,1), assigned(1,3), assigned(2,2) }).

%3, 10
#pos(e_275, { assigned(2,3), assigned(4,2), assigned(2,2), assigned(3,3), assigned(1,1), assigned(1,3), assigned(3,1) }, { assigned(3,2), assigned(2,1) }).

%4, 20
#pos(e_276, { assigned(4,2), assigned(1,1), assigned(3,2), assigned(2,3), assigned(3,1), assigned(1,3), assigned(2,1) }, { assigned(1,2), assigned(2,2) }).

%3, 8
#pos(e_277, { assigned(2,2), assigned(3,2), assigned(4,2), assigned(1,1), assigned(3,1) }, { assigned(3,3), assigned(2,3), assigned(1,3), assigned(2,1), assigned(1,2) }).

%1, 8
#pos(e_278, { assigned(4,3), assigned(2,2), assigned(2,3), assigned(1,2), assigned(3,1) }, { assigned(1,3), assigned(1,1), assigned(3,3) }).

%3, 14
#pos(e_279, { assigned(1,1), assigned(4,2), assigned(4,3), assigned(3,1), assigned(2,2), assigned(4,1), assigned(3,2), assigned(2,3) }, { assigned(1,2), assigned(2,1), assigned(3,3), assigned(1,3) }).

%3, 16
#pos(e_280, { assigned(4,3), assigned(1,1), assigned(3,3), assigned(1,3), assigned(1,2), assigned(4,2), assigned(2,3) }, { assigned(2,1), assigned(2,2), assigned(3,2) }).

%2, 10
#pos(e_281, { assigned(4,1), assigned(1,3), assigned(1,2), assigned(1,1) }, { assigned(2,1), assigned(3,1), assigned(3,2) }).

%2, 20
#pos(e_282, { assigned(1,2), assigned(4,1), assigned(1,1), assigned(2,2), assigned(2,1), assigned(3,2), assigned(3,1) }, { assigned(1,3) }).

%0, 4
#pos(e_283, { assigned(1,2), assigned(2,2), assigned(4,3), assigned(2,3) }, { assigned(2,1), assigned(1,1), assigned(1,3), assigned(3,2) }).

%3, 14
#pos(e_284, { assigned(3,2), assigned(3,1), assigned(4,3), assigned(2,3), assigned(1,2) }, { assigned(2,2), assigned(2,1), assigned(1,1), assigned(3,3) }).

%2, 24
#pos(e_285, { assigned(2,3), assigned(1,1), assigned(4,1), assigned(3,3), assigned(1,3), assigned(4,3), assigned(2,1), assigned(3,1) }, { assigned(3,2), assigned(2,2), assigned(1,2) }).

%2, 8
#pos(e_286, { assigned(1,1), assigned(4,1), assigned(2,2), assigned(3,3), assigned(1,3), assigned(2,3) }, { assigned(3,1), assigned(2,1), assigned(3,2), assigned(1,2) }).

%0, 6
#pos(e_287, { assigned(4,3), assigned(2,2), assigned(2,3), assigned(3,3) }, { assigned(1,3), assigned(1,1), assigned(3,2), assigned(3,1), assigned(1,2), assigned(2,1) }).

%2, 8
#pos(e_288, { assigned(2,2), assigned(3,3), assigned(1,2), assigned(1,1), assigned(4,1), assigned(4,2) }, { assigned(1,3), assigned(3,1), assigned(2,1), assigned(3,2) }).

%1, 2
#pos(e_289, { assigned(4,1), assigned(3,1), assigned(3,3), assigned(3,2) }, { assigned(1,3), assigned(2,2), assigned(2,3), assigned(1,2), assigned(2,1), assigned(1,1) }).

%0, 0
#pos(e_290, { assigned(3,1) }, { assigned(2,2), assigned(1,1), assigned(3,3), assigned(1,3), assigned(1,2), assigned(2,3), assigned(3,2), assigned(2,1) }).

%3, 20
#pos(e_291, { assigned(3,3), assigned(4,3), assigned(3,2), assigned(2,2), assigned(1,1), assigned(2,1), assigned(1,2), assigned(4,2), assigned(3,1) }, { assigned(2,3), assigned(1,3) }).

%1, 8
#pos(e_292, { assigned(2,3), assigned(3,1), assigned(4,3), assigned(2,2), assigned(1,2), assigned(1,3) }, { assigned(3,2), assigned(2,1), assigned(1,1), assigned(3,3) }).

%4, 16
#pos(e_293, { assigned(1,1), assigned(3,2), assigned(4,3), assigned(4,2), assigned(3,3), assigned(2,3), assigned(4,1), assigned(1,3) }, { assigned(3,1), assigned(1,2), assigned(2,2) }).

%3, 14
#pos(e_294, { assigned(2,1), assigned(4,2), assigned(2,2), assigned(1,1), assigned(3,3), assigned(1,3), assigned(3,1), assigned(2,3) }, { assigned(3,2), assigned(1,2) }).

%1, 4
#pos(e_295, { assigned(3,1), assigned(2,2), assigned(1,3), assigned(1,2) }, { assigned(1,1), assigned(2,1), assigned(3,2) }).

%2, 10
#pos(e_296, { assigned(2,3), assigned(3,3), assigned(3,2), assigned(2,1), assigned(3,1), assigned(4,2), assigned(2,2) }, { assigned(1,1), assigned(1,3), assigned(1,2) }).

%1, 2
#pos(e_297, { assigned(3,1), assigned(2,2), assigned(4,2), assigned(4,3) }, { assigned(1,3), assigned(3,2), assigned(1,1), assigned(2,3), assigned(2,1), assigned(1,2), assigned(3,3) }).

%2, 18
#pos(e_298, { assigned(1,2), assigned(2,1), assigned(1,1), assigned(3,3), assigned(3,1), assigned(4,2), assigned(4,3), assigned(2,3) }, { assigned(3,2), assigned(1,3) }).

%3, 6
#pos(e_299, { assigned(4,1), assigned(3,3), assigned(4,2) }, { assigned(1,1), assigned(1,2), assigned(3,1), assigned(2,3), assigned(2,2) }).

%2, 14
#pos(e_300, { assigned(4,3), assigned(3,1), assigned(1,2), assigned(4,2), assigned(2,1) }, { assigned(1,3), assigned(3,3) }).

%1, 0
#pos(e_301, { assigned(1,3), assigned(2,2), assigned(4,1) }, { assigned(3,1), assigned(1,2), assigned(2,3), assigned(1,1), assigned(3,3), assigned(3,2), assigned(2,1) }).

%1, 8
#pos(e_302, { assigned(3,2), assigned(3,3), assigned(1,2), assigned(2,3), assigned(2,2) }, { assigned(1,3), assigned(1,1), assigned(3,1), assigned(2,1) }).

%2, 18
#pos(e_303, { assigned(3,3), assigned(4,3), assigned(4,2), assigned(4,1), assigned(2,1), assigned(2,3), assigned(3,2) }, { assigned(1,1), assigned(2,2) }).

%2, 2
#pos(e_304, { assigned(1,3), assigned(2,3), assigned(4,2), assigned(3,1) }, { assigned(2,1), assigned(3,2), assigned(1,2), assigned(2,2), assigned(3,3), assigned(1,1) }).

%2, 10
#pos(e_305, { assigned(2,2), assigned(3,2), assigned(3,3), assigned(1,1), assigned(2,1), assigned(4,3), assigned(4,1) }, { assigned(3,1), assigned(1,3), assigned(1,2), assigned(2,3) }).

%2, 8
#pos(e_306, { assigned(4,2), assigned(1,3), assigned(3,3), assigned(3,1), assigned(2,3) }, { assigned(1,2), assigned(2,1), assigned(1,1) }).

%3, 6
#pos(e_307, { assigned(3,3), assigned(1,1), assigned(3,2), assigned(1,2), assigned(3,1), assigned(1,3) }, { assigned(2,2), assigned(2,3), assigned(2,1) }).

%2, 12
#pos(e_308, { assigned(4,3), assigned(4,2), assigned(4,1), assigned(3,1) }, { assigned(2,3), assigned(1,1), assigned(2,2), assigned(1,3) }).

%1, 2
#pos(e_309, { assigned(3,1), assigned(1,2) }, { assigned(1,1), assigned(2,3), assigned(2,1), assigned(3,3), assigned(3,2) }).

%2, 8
#pos(e_310, { assigned(2,1), assigned(3,2), assigned(3,1), assigned(2,3), assigned(4,1) }, { assigned(3,3), assigned(2,2), assigned(1,2), assigned(1,1) }).

%1, 2
#pos(e_311, { assigned(3,1), assigned(4,3), assigned(2,2) }, { assigned(2,1), assigned(1,2), assigned(2,3), assigned(3,3), assigned(1,1), assigned(1,3) }).

%3, 10
#pos(e_312, { assigned(2,1), assigned(3,2), assigned(2,3), assigned(1,3), assigned(4,1) }, { assigned(2,2), assigned(3,3), assigned(3,1), assigned(1,1) }).

%2, 4
#pos(e_313, { assigned(3,1), assigned(2,2), assigned(1,1), assigned(3,2) }, { assigned(2,3), assigned(1,2), assigned(2,1), assigned(1,3), assigned(3,3) }).

%3, 2
#pos(e_314, { assigned(4,2), assigned(1,3) }, { assigned(2,1), assigned(3,3), assigned(2,2), assigned(2,3), assigned(1,2), assigned(1,1) }).

%3, 10
#pos(e_315, { assigned(1,1), assigned(3,3), assigned(4,2), assigned(1,2), assigned(2,1) }, { assigned(2,2), assigned(3,1), assigned(3,2) }).

%2, 10
#pos(e_316, { assigned(2,3), assigned(1,3), assigned(4,3), assigned(1,2), assigned(1,1), assigned(2,2), assigned(2,1) }, { assigned(3,1), assigned(3,2), assigned(3,3) }).

%2, 4
#pos(e_317, { assigned(1,3), assigned(1,2), assigned(1,1), assigned(2,1) }, { assigned(2,2), assigned(3,3), assigned(3,2), assigned(3,1) }).

%2, 10
#pos(e_318, { assigned(4,2), assigned(2,1), assigned(2,3), assigned(4,1), assigned(3,3) }, { assigned(1,1), assigned(1,3), assigned(3,1), assigned(1,2) }).

%3, 18
#pos(e_319, { assigned(3,2), assigned(3,3), assigned(1,1), assigned(2,1), assigned(2,3), assigned(4,3), assigned(3,1), assigned(1,3) }, { assigned(2,2), assigned(1,2) }).

%2, 2
#pos(e_320, { assigned(1,3), assigned(4,3), assigned(4,2) }, { assigned(2,1), assigned(3,3), assigned(3,1), assigned(2,2) }).

%3, 8
#pos(e_321, { assigned(4,2), assigned(2,3), assigned(1,1), assigned(1,2), assigned(3,2), assigned(4,3) }, { assigned(3,3), assigned(3,1), assigned(2,2), assigned(2,1), assigned(1,3) }).

%1, 12
#pos(e_322, { assigned(2,1), assigned(2,3), assigned(3,1), assigned(1,3), assigned(2,2) }, { assigned(1,1), assigned(1,2), assigned(3,2), assigned(3,3) }).

%0, 4
#pos(e_323, { assigned(3,3), assigned(2,1), assigned(3,1), assigned(1,2), assigned(2,3) }, { assigned(1,3), assigned(1,1), assigned(2,2), assigned(3,2) }).

%1, 16
#pos(e_324, { assigned(3,3), assigned(4,3), assigned(3,1), assigned(1,2), assigned(2,2), assigned(1,1), assigned(4,1), assigned(2,1) }, { assigned(1,3), assigned(3,2), assigned(2,3) }).

%2, 6
#pos(e_325, { assigned(2,2), assigned(3,2), assigned(1,3), assigned(4,1), assigned(2,1), assigned(2,3) }, { assigned(3,1), assigned(1,1), assigned(1,2), assigned(3,3) }).

%1, 6
#pos(e_326, { assigned(2,2), assigned(3,1), assigned(1,3), assigned(3,3), assigned(2,3) }, { assigned(3,2), assigned(1,1), assigned(2,1), assigned(1,2) }).

%2, 12
#pos(e_327, { assigned(1,3), assigned(1,1), assigned(2,3), assigned(1,2), assigned(4,3), assigned(3,3) }, { assigned(3,2), assigned(2,1), assigned(2,2), assigned(3,1) }).

%3, 6
#pos(e_328, { assigned(2,2), assigned(1,1), assigned(4,1), assigned(2,3), assigned(3,2), assigned(1,3) }, { assigned(3,1), assigned(2,1), assigned(3,3) }).

%1, 2
#pos(e_329, { assigned(1,2), assigned(1,3), assigned(4,1), assigned(2,1) }, { assigned(1,1), assigned(2,2), assigned(3,2), assigned(3,1), assigned(2,3), assigned(3,3) }).

%2, 14
#pos(e_330, { assigned(3,2), assigned(1,2), assigned(2,2), assigned(1,3), assigned(3,1), assigned(2,1) }, { assigned(1,1) }).

%3, 14
#pos(e_331, { assigned(3,3), assigned(4,2), assigned(2,3), assigned(1,3), assigned(4,3) }, { assigned(3,1), assigned(1,1), assigned(1,2), assigned(2,2) }).

%2, 20
#pos(e_332, { assigned(3,2), assigned(4,2), assigned(1,2), assigned(4,3), assigned(4,1), assigned(2,2), assigned(3,1), assigned(3,3), assigned(2,3) }, { assigned(2,1), assigned(1,3), assigned(1,1) }).

%2, 24
#pos(e_333, { assigned(2,1), assigned(3,3), assigned(3,1), assigned(4,1), assigned(1,3) }, { assigned(3,2), assigned(2,2) }).

%3, 8
#pos(e_334, { assigned(2,2), assigned(2,3), assigned(4,2), assigned(4,1) }, { assigned(1,2), assigned(3,3), assigned(3,1), assigned(2,1) }).

%2, 6
#pos(e_335, { assigned(4,3), assigned(1,2), assigned(3,2), assigned(1,1), assigned(2,3) }, { assigned(1,3), assigned(3,1), assigned(2,2) }).

%1, 8
#pos(e_336, { assigned(3,3), assigned(2,1), assigned(4,1), assigned(1,3), assigned(2,3) }, { assigned(1,2), assigned(3,2), assigned(3,1), assigned(1,1), assigned(2,2) }).

%2, 12
#pos(e_337, { assigned(3,1), assigned(2,2), assigned(4,1) }, { assigned(2,3), assigned(3,2), assigned(1,3), assigned(2,1), assigned(3,3) }).

%1, 8
#pos(e_338, { assigned(2,2), assigned(3,2), assigned(3,3), assigned(1,2), assigned(2,3) }, { assigned(1,3), assigned(1,1), assigned(2,1), assigned(3,1) }).

%1, 8
#pos(e_339, { assigned(1,2), assigned(4,3), assigned(1,3), assigned(2,2), assigned(2,3) }, { assigned(2,1), assigned(3,2), assigned(3,3), assigned(1,1), assigned(3,1) }).

%2, 20
#pos(e_340, { assigned(2,3), assigned(4,3), assigned(1,3), assigned(2,2), assigned(4,1), assigned(1,2), assigned(3,1), assigned(3,3) }, { assigned(1,1), assigned(2,1) }).

%2, 12
#pos(e_341, { assigned(2,1), assigned(2,2), assigned(3,1), assigned(3,2) }, { assigned(1,2), assigned(1,3), assigned(3,3) }).

%3, 2
#pos(e_342, { assigned(4,3), assigned(4,2) }, { assigned(1,3), assigned(2,1), assigned(3,3), assigned(1,2), assigned(3,1) }).

%0, 6
#pos(e_343, { assigned(4,3), assigned(4,1), assigned(2,3), assigned(1,2), assigned(3,3) }, { assigned(3,2), assigned(1,1), assigned(3,1), assigned(2,1), assigned(2,2), assigned(1,3) }).

%2, 6
#pos(e_344, { assigned(4,2), assigned(1,2), assigned(2,1) }, { assigned(2,2), assigned(1,1), assigned(3,1), assigned(2,3) }).

%1, 0
#pos(e_345, { assigned(1,2), assigned(2,3), assigned(1,1) }, { assigned(1,3), assigned(3,2), assigned(2,1), assigned(2,2), assigned(3,3), assigned(3,1) }).

%3, 10
#pos(e_346, { assigned(3,2), assigned(1,1), assigned(4,3), assigned(2,1), assigned(4,1), assigned(2,3) }, { assigned(3,3), assigned(2,2), assigned(1,3) }).

%0, 2
#pos(e_347, { assigned(2,3), assigned(3,1), assigned(2,2), assigned(1,2) }, { assigned(3,2), assigned(1,1), assigned(3,3), assigned(2,1), assigned(1,3) }).

%0, 6
#pos(e_348, { assigned(3,3), assigned(2,3), assigned(4,3) }, { assigned(1,3), assigned(2,2), assigned(1,1), assigned(3,1), assigned(3,2), assigned(1,2), assigned(2,1) }).

%2, 10
#pos(e_349, { assigned(3,3), assigned(2,2), assigned(3,2), assigned(4,1), assigned(3,1) }, { assigned(1,2), assigned(2,1) }).

%3, 18
#pos(e_350, { assigned(4,2), assigned(1,3), assigned(2,1), assigned(3,2), assigned(4,3), assigned(3,1), assigned(3,3), assigned(1,2) }, { assigned(2,2), assigned(1,1), assigned(2,3) }).

%2, 14
#pos(e_351, { assigned(1,3), assigned(1,1), assigned(2,1), assigned(2,3), assigned(1,2), assigned(4,1) }, { assigned(3,3), assigned(3,2), assigned(2,2) }).

%1, 2
#pos(e_352, { assigned(3,1), assigned(1,3) }, { assigned(2,2), assigned(3,2), assigned(3,3), assigned(2,3), assigned(1,1) }).

%2, 14
#pos(e_353, { assigned(1,3), assigned(3,1), assigned(3,3), assigned(4,1), assigned(2,1), assigned(2,2), assigned(1,2), assigned(3,2) }, { assigned(2,3), assigned(1,1) }).

%3, 14
#pos(e_354, { assigned(1,3), assigned(4,2), assigned(2,3), assigned(3,2), assigned(3,1) }, { assigned(2,1), assigned(3,3) }).

%2, 14
#pos(e_355, { assigned(3,3), assigned(1,3), assigned(4,1), assigned(4,3), assigned(2,3) }, { assigned(3,1), assigned(2,2), assigned(2,1), assigned(1,2) }).

%0, 2
#pos(e_356, { assigned(3,3), assigned(3,1), assigned(1,2) }, { assigned(1,3), assigned(3,2), assigned(1,1), assigned(2,3), assigned(2,2) }).

%2, 4
#pos(e_357, { assigned(3,3), assigned(4,3), assigned(3,2), assigned(4,1), assigned(1,1) }, { assigned(2,3), assigned(2,2), assigned(3,1), assigned(1,2), assigned(1,3), assigned(2,1) }).

%1, 6
#pos(e_358, { assigned(4,1), assigned(1,1), assigned(4,3), assigned(2,1) }, { assigned(1,3), assigned(3,1), assigned(3,3), assigned(3,2), assigned(2,2) }).

%3, 8
#pos(e_359, { assigned(4,1), assigned(1,3), assigned(4,2), assigned(3,2), assigned(2,2), assigned(3,1) }, { assigned(2,1), assigned(1,2), assigned(3,3), assigned(2,3), assigned(1,1) }).

%1, 2
#pos(e_360, { assigned(2,1), assigned(1,1), assigned(4,3) }, { assigned(3,1), assigned(3,3), assigned(1,2), assigned(1,3), assigned(3,2), assigned(2,3), assigned(2,2) }).

%2, 12
#pos(e_361, { assigned(1,3), assigned(1,1), assigned(4,3), assigned(3,3), assigned(2,3) }, { assigned(2,1), assigned(3,2) }).

%0, 6
#pos(e_362, { assigned(1,2), assigned(4,3), assigned(3,1), assigned(3,3), assigned(2,3) }, { assigned(2,1), assigned(2,2), assigned(3,2), assigned(1,1), assigned(1,3) }).

%2, 10
#pos(e_363, { assigned(1,3), assigned(2,2), assigned(3,1), assigned(2,3), assigned(2,1) }, { assigned(1,2), assigned(3,2) }).

%3, 4
#pos(e_364, { assigned(1,3), assigned(3,2), assigned(4,2), assigned(4,1), assigned(2,1) }, { assigned(1,2), assigned(3,3), assigned(2,3), assigned(2,2), assigned(3,1), assigned(1,1) }).

%0, 8
#pos(e_365, { assigned(3,3), assigned(4,3), assigned(3,1) }, { assigned(2,3), assigned(3,2), assigned(1,2), assigned(1,3) }).

%1, 2
#pos(e_366, { assigned(1,2), assigned(1,1) }, { assigned(3,2), assigned(3,3), assigned(1,3), assigned(2,2), assigned(2,3), assigned(3,1) }).

%2, 8
#pos(e_367, { assigned(3,2), assigned(4,2), assigned(3,3), assigned(2,3), assigned(2,1), assigned(2,2) }, { assigned(3,1), assigned(1,1), assigned(1,3), assigned(1,2) }).

%4, 4
#pos(e_368, { assigned(3,2), assigned(4,2), assigned(1,1), assigned(3,3), assigned(1,3) }, { assigned(3,1), assigned(2,2), assigned(2,1), assigned(1,2) }).

%2, 6
#pos(e_369, { assigned(4,3), assigned(2,3), assigned(1,1), assigned(3,2), assigned(3,1), assigned(1,2) }, { assigned(3,3), assigned(1,3), assigned(2,2), assigned(2,1) }).

%2, 12
#pos(e_370, { assigned(2,2), assigned(4,3), assigned(2,1), assigned(3,3), assigned(1,1), assigned(1,3), assigned(3,1) }, { assigned(2,3), assigned(1,2), assigned(3,2) }).

%1, 0
#pos(e_371, { assigned(2,2) }, { assigned(2,1), assigned(1,1), assigned(3,2), assigned(1,2), assigned(2,3), assigned(3,1) }).

%4, 30
#pos(e_372, { assigned(2,2), assigned(3,2), assigned(1,3), assigned(3,3), assigned(1,2), assigned(2,3), assigned(2,1), assigned(4,2), assigned(1,1), assigned(3,1) }, {  }).

%3, 18
#pos(e_373, { assigned(4,1), assigned(4,2), assigned(4,3), assigned(2,1), assigned(3,1), assigned(2,3), assigned(1,1), assigned(1,3) }, { assigned(3,3), assigned(2,2), assigned(1,2), assigned(3,2) }).

%1, 4
#pos(e_374, { assigned(4,2), assigned(3,1), assigned(4,1), assigned(2,2), assigned(3,3) }, { assigned(1,3), assigned(3,2), assigned(1,1), assigned(2,3), assigned(2,1), assigned(1,2) }).

%2, 14
#pos(e_375, { assigned(4,2), assigned(3,3), assigned(3,1), assigned(2,2), assigned(2,3), assigned(3,2), assigned(2,1) }, { assigned(1,3), assigned(1,1) }).

%3, 10
#pos(e_376, { assigned(3,2), assigned(2,1), assigned(4,2), assigned(1,1), assigned(3,3) }, { assigned(2,2), assigned(3,1), assigned(1,3), assigned(1,2) }).

%3, 8
#pos(e_377, { assigned(1,1), assigned(4,2), assigned(3,3), assigned(3,2), assigned(2,3), assigned(4,3) }, { assigned(2,2), assigned(1,3), assigned(1,2), assigned(2,1) }).

%0, 4
#pos(e_378, { assigned(4,3), assigned(3,1), assigned(2,1), assigned(1,2), assigned(3,3) }, { assigned(3,2), assigned(2,2), assigned(1,1), assigned(2,3), assigned(1,3) }).

%3, 16
#pos(e_379, { assigned(1,3), assigned(2,2), assigned(3,3), assigned(1,1), assigned(3,1) }, { assigned(1,2), assigned(3,2) }).

%1, 8
#pos(e_380, { assigned(1,1), assigned(4,3), assigned(3,1), assigned(4,1), assigned(2,2), assigned(1,2) }, { assigned(3,3), assigned(2,1), assigned(2,3), assigned(3,2), assigned(1,3) }).

%2, 4
#pos(e_381, { assigned(1,2), assigned(1,1), assigned(2,1), assigned(4,2) }, { assigned(2,2), assigned(2,3), assigned(3,2), assigned(3,1), assigned(3,3), assigned(1,3) }).

%3, 8
#pos(e_382, { assigned(4,1), assigned(2,2), assigned(1,1) }, { assigned(3,1), assigned(3,3), assigned(2,3), assigned(3,2) }).

%3, 14
#pos(e_383, { assigned(4,2), assigned(1,1), assigned(2,1), assigned(4,1), assigned(3,3), assigned(3,2) }, { assigned(2,2), assigned(1,3), assigned(3,1) }).

%1, 6
#pos(e_384, { assigned(4,2), assigned(4,3), assigned(3,3), assigned(3,1), assigned(4,1), assigned(1,2) }, { assigned(3,2), assigned(2,2), assigned(1,1), assigned(2,1), assigned(2,3), assigned(1,3) }).

%2, 20
#pos(e_385, { assigned(4,1), assigned(1,3), assigned(3,3), assigned(1,2), assigned(2,2) }, { assigned(1,1), assigned(3,2), assigned(3,1) }).

%3, 20
#pos(e_386, { assigned(4,3), assigned(3,1), assigned(3,2), assigned(2,1), assigned(1,1), assigned(4,1), assigned(4,2), assigned(2,2), assigned(3,3) }, { assigned(1,2), assigned(1,3), assigned(2,3) }).

%2, 6
#pos(e_387, { assigned(2,3), assigned(4,3), assigned(3,1) }, { assigned(2,2), assigned(3,3), assigned(1,2), assigned(1,1) }).

%2, 14
#pos(e_388, { assigned(2,3), assigned(4,1), assigned(1,1), assigned(2,1), assigned(1,2), assigned(3,1), assigned(3,2) }, { assigned(2,2), assigned(3,3), assigned(1,3) }).

%4, 14
#pos(e_389, { assigned(4,2), assigned(1,3), assigned(1,1), assigned(1,2), assigned(3,2), assigned(4,1), assigned(2,2) }, { assigned(2,3), assigned(3,1), assigned(3,3), assigned(2,1) }).

%2, 8
#pos(e_390, { assigned(3,1), assigned(1,1), assigned(2,1), assigned(2,3), assigned(4,2), assigned(4,3) }, { assigned(3,2), assigned(1,3), assigned(2,2), assigned(3,3), assigned(1,2) }).

%2, 10
#pos(e_391, { assigned(2,3), assigned(4,3), assigned(4,1), assigned(4,2), assigned(3,1) }, { assigned(1,2), assigned(2,2), assigned(1,1), assigned(2,1), assigned(1,3) }).

%2, 4
#pos(e_392, { assigned(4,2), assigned(4,1), assigned(4,3) }, { assigned(1,2), assigned(2,1), assigned(1,1), assigned(2,2), assigned(3,1) }).

%2, 4
#pos(e_393, { assigned(1,1), assigned(1,2), assigned(2,3), assigned(4,2) }, { assigned(3,3), assigned(3,2), assigned(1,3) }).

%3, 26
#pos(e_394, { assigned(2,3), assigned(1,2), assigned(3,1), assigned(4,3), assigned(4,1), assigned(2,2), assigned(3,2) }, { assigned(3,3), assigned(1,3) }).

%2, 14
#pos(e_395, { assigned(3,3), assigned(2,1), assigned(1,3), assigned(3,2), assigned(2,2), assigned(2,3) }, { assigned(3,1), assigned(1,2), assigned(1,1) }).

%3, 10
#pos(e_396, { assigned(2,3), assigned(1,3), assigned(1,1), assigned(3,2), assigned(2,1), assigned(3,3), assigned(1,2) }, { assigned(2,2), assigned(3,1) }).

%1, 6
#pos(e_397, { assigned(3,3), assigned(2,3), assigned(1,3), assigned(2,1) }, { assigned(2,2), assigned(3,1), assigned(1,1), assigned(3,2), assigned(1,2) }).

%3, 20
#pos(e_398, { assigned(4,3), assigned(3,2), assigned(4,2), assigned(3,1), assigned(1,2), assigned(2,2) }, { assigned(3,3), assigned(1,3) }).

%2, 2
#pos(e_399, { assigned(3,2), assigned(1,3), assigned(2,2), assigned(4,1) }, { assigned(3,3), assigned(2,1), assigned(1,2), assigned(3,1), assigned(1,1), assigned(2,3) }).

%2, 10
#pos(e_400, { assigned(2,2), assigned(2,1), assigned(2,3), assigned(3,1), assigned(3,2), assigned(1,3) }, { assigned(1,1) }).


#modeo(3, assigned(var(day), var(time)), (positive)).
#modeo(1, type(var(day),var(time),const(type)), (positive)).
#modeo(1, neq(var(day),var(day)), (positive, symmetric, anti_reflexive)).
#constant(type, jmc).
#weight(1).
#weight(-1).
#maxv(4).


#brave_ordering(e_2, e_1, <).

#brave_ordering(e_3, e_4, <).

#brave_ordering(e_7, e_8, <).

#brave_ordering(e_9, e_10, <).

#brave_ordering(e_11, e_12, <).

#brave_ordering(e_15, e_16, <).

#brave_ordering(e_20, e_19, <).

#brave_ordering(e_24, e_23, <).

#brave_ordering(e_27, e_28, <).

#brave_ordering(e_29, e_30, <).

#brave_ordering(e_33, e_34, <).

#brave_ordering(e_36, e_35, <).

#brave_ordering(e_39, e_40, <).

#brave_ordering(e_41, e_42, <).

#brave_ordering(e_44, e_43, <).

#brave_ordering(e_48, e_47, <).

#brave_ordering(e_51, e_52, <).

#brave_ordering(e_53, e_54, <).

#brave_ordering(e_56, e_55, <).

#brave_ordering(e_60, e_59, <).

#brave_ordering(e_61, e_62, <).

#brave_ordering(e_64, e_63, <).

#brave_ordering(e_68, e_67, <).

#brave_ordering(e_70, e_69, <).

#brave_ordering(e_71, e_72, <).

#brave_ordering(e_75, e_76, <).

#brave_ordering(e_78, e_77, <).

#brave_ordering(e_80, e_79, <).

#brave_ordering(e_84, e_83, <).

#brave_ordering(e_88, e_87, <).

#brave_ordering(e_94, e_93, <).

#brave_ordering(e_95, e_96, <).

#brave_ordering(e_97, e_98, <).

#brave_ordering(e_103, e_104, <).

#brave_ordering(e_106, e_105, <).

#brave_ordering(e_108, e_107, <).

#brave_ordering(e_109, e_110, <).

#brave_ordering(e_119, e_120, <).

#brave_ordering(e_121, e_122, <).

#brave_ordering(e_124, e_123, <).

#brave_ordering(e_125, e_126, <).

#brave_ordering(e_128, e_127, <).

#brave_ordering(e_132, e_131, <).

#brave_ordering(e_133, e_134, <).

#brave_ordering(e_135, e_136, <).

#brave_ordering(e_137, e_138, <).

#brave_ordering(e_139, e_140, <).

#brave_ordering(e_144, e_143, <).

#brave_ordering(e_149, e_150, <).

#brave_ordering(e_154, e_153, <).

#brave_ordering(e_156, e_155, <).

#brave_ordering(e_157, e_158, <).

#brave_ordering(e_159, e_160, <).

#brave_ordering(e_163, e_164, <).

#brave_ordering(e_170, e_169, <).

#brave_ordering(e_171, e_172, <).

#brave_ordering(e_173, e_174, <).

#brave_ordering(e_179, e_180, <).

#brave_ordering(e_183, e_184, <).

#brave_ordering(e_188, e_187, <).

#brave_ordering(e_190, e_189, <).

#brave_ordering(e_192, e_191, <).

#brave_ordering(e_194, e_193, <).

#brave_ordering(e_196, e_195, <).

#brave_ordering(e_198, e_197, <).

#brave_ordering(e_201, e_202, <).

#brave_ordering(e_207, e_208, <).

#brave_ordering(e_212, e_211, <).

#brave_ordering(e_213, e_214, <).

#brave_ordering(e_216, e_215, <).

#brave_ordering(e_219, e_220, <).

#brave_ordering(e_221, e_222, <).

#brave_ordering(e_224, e_223, <).

#brave_ordering(e_225, e_226, <).

#brave_ordering(e_228, e_227, <).

#brave_ordering(e_229, e_230, <).

#brave_ordering(e_232, e_231, <).

#brave_ordering(e_245, e_246, <).

#brave_ordering(e_248, e_247, <).

#brave_ordering(e_249, e_250, <).

#brave_ordering(e_254, e_253, <).

#brave_ordering(e_256, e_255, <).

#brave_ordering(e_257, e_258, <).

#brave_ordering(e_260, e_259, <).

#brave_ordering(e_261, e_262, <).

#brave_ordering(e_265, e_266, <).

#brave_ordering(e_271, e_272, <).

#brave_ordering(e_273, e_274, <).

#brave_ordering(e_279, e_280, <).

#brave_ordering(e_281, e_282, <).

#brave_ordering(e_283, e_284, <).

#brave_ordering(e_286, e_285, <).

#brave_ordering(e_290, e_289, <).

#brave_ordering(e_295, e_296, <).

#brave_ordering(e_300, e_299, <).

#brave_ordering(e_301, e_302, <).

#brave_ordering(e_306, e_305, <).

#brave_ordering(e_309, e_310, <).

#brave_ordering(e_311, e_312, <).

#brave_ordering(e_313, e_314, <).

#brave_ordering(e_316, e_315, <).

#brave_ordering(e_317, e_318, <).

#brave_ordering(e_320, e_319, <).

#brave_ordering(e_326, e_325, <).

#brave_ordering(e_327, e_328, <).

#brave_ordering(e_332, e_331, <).

#brave_ordering(e_333, e_334, <).

#brave_ordering(e_336, e_335, <).

#brave_ordering(e_338, e_337, <).

#brave_ordering(e_339, e_340, <).

#brave_ordering(e_341, e_342, <).

#brave_ordering(e_343, e_344, <).

#brave_ordering(e_347, e_348, <).

#brave_ordering(e_349, e_350, <).

#brave_ordering(e_352, e_351, <).

#brave_ordering(e_353, e_354, <).

#brave_ordering(e_358, e_357, <).

#brave_ordering(e_363, e_364, <).

#brave_ordering(e_365, e_366, <).

#brave_ordering(e_369, e_370, <).

#brave_ordering(e_380, e_379, <).

#brave_ordering(e_381, e_382, <).

#brave_ordering(e_387, e_388, <).

#brave_ordering(e_392, e_391, <).

#brave_ordering(e_393, e_394, <).

#brave_ordering(e_395, e_396, <).

#brave_ordering(e_397, e_398, <).

#brave_ordering(e_399, e_400, <).


#cautious_ordering(e_5, e_6, <).

#cautious_ordering(e_13, e_14, <).

#cautious_ordering(e_17, e_18, <).

#cautious_ordering(e_22, e_21, <).

#cautious_ordering(e_26, e_25, <).

#cautious_ordering(e_31, e_32, <).

#cautious_ordering(e_37, e_38, <).

#cautious_ordering(e_46, e_45, <).

#cautious_ordering(e_50, e_49, <).

#cautious_ordering(e_58, e_57, <).

#cautious_ordering(e_65, e_66, <).

#cautious_ordering(e_73, e_74, <).

#cautious_ordering(e_81, e_82, <).

#cautious_ordering(e_85, e_86, <).

#cautious_ordering(e_89, e_90, <).

#cautious_ordering(e_91, e_92, <).

#cautious_ordering(e_99, e_100, <).

#cautious_ordering(e_101, e_102, <).

#cautious_ordering(e_111, e_112, <).

#cautious_ordering(e_113, e_114, <).

#cautious_ordering(e_115, e_116, <).

#cautious_ordering(e_118, e_117, <).

#cautious_ordering(e_130, e_129, <).

#cautious_ordering(e_141, e_142, <).

#cautious_ordering(e_146, e_145, <).

#cautious_ordering(e_147, e_148, <).

#cautious_ordering(e_151, e_152, <).

#cautious_ordering(e_162, e_161, <).

#cautious_ordering(e_166, e_165, <).

#cautious_ordering(e_167, e_168, <).

#cautious_ordering(e_175, e_176, <).

#cautious_ordering(e_177, e_178, <).

#cautious_ordering(e_181, e_182, <).

#cautious_ordering(e_186, e_185, <).

#cautious_ordering(e_200, e_199, <).

#cautious_ordering(e_204, e_203, <).

#cautious_ordering(e_205, e_206, <).

#cautious_ordering(e_209, e_210, <).

#cautious_ordering(e_217, e_218, <).

#cautious_ordering(e_234, e_233, <).

#cautious_ordering(e_235, e_236, <).

#cautious_ordering(e_238, e_237, <).

#cautious_ordering(e_239, e_240, <).

#cautious_ordering(e_241, e_242, <).

#cautious_ordering(e_244, e_243, <).

#cautious_ordering(e_252, e_251, <).

#cautious_ordering(e_264, e_263, <).

#cautious_ordering(e_268, e_267, <).

#cautious_ordering(e_269, e_270, <).

#cautious_ordering(e_275, e_276, <).

#cautious_ordering(e_278, e_277, <).

#cautious_ordering(e_287, e_288, <).

#cautious_ordering(e_292, e_291, <).

#cautious_ordering(e_294, e_293, <).

#cautious_ordering(e_297, e_298, <).

#cautious_ordering(e_304, e_303, <).

#cautious_ordering(e_308, e_307, <).

#cautious_ordering(e_322, e_321, <).

#cautious_ordering(e_323, e_324, <).

#cautious_ordering(e_329, e_330, <).

#cautious_ordering(e_345, e_346, <).

#cautious_ordering(e_356, e_355, <).

#cautious_ordering(e_360, e_359, <).

#cautious_ordering(e_362, e_361, <).

#cautious_ordering(e_367, e_368, <).

#cautious_ordering(e_371, e_372, <).

#cautious_ordering(e_374, e_373, <).

#cautious_ordering(e_375, e_376, <).

#cautious_ordering(e_378, e_377, <).

#cautious_ordering(e_384, e_383, <).

#cautious_ordering(e_385, e_386, <).

#cautious_ordering(e_390, e_389, <).

