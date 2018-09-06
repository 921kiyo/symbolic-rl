slot(1..3,1..3).

neq(1, 2).
neq(1, 3).
%neq(1, 4).
%neq(1, 5).
neq(2, 1).
neq(2, 3).
%neq(2, 4).
%neq(2, 5).
neq(3, 1).
neq(3, 2).
%neq(3, 4).
%neq(3, 5).
%neq(4, 1).
%neq(4, 2).
%neq(4, 3).
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
%type(4,1,ccc).
%type(4,2,jmc).
%type(4,3,ccc).
%type(5,1,ccc).
%type(5,2,ccc).
%type(5,3,ccc).

0 { assigned(X, Y) } 1 :- slot(X,Y).


%2, 2
#pos(e_1, { assigned(2,3), assigned(3,2), assigned(2,1), assigned(1,1) }, { assigned(2,2), assigned(3,3), assigned(1,3), assigned(3,1) }).

%3, 4
#pos(e_2, { assigned(3,2), assigned(3,1), assigned(2,2), assigned(1,3) }, { assigned(2,3), assigned(3,3) }).

%3, 8
#pos(e_3, { assigned(3,3), assigned(3,2), assigned(2,3), assigned(1,3), assigned(1,1), assigned(1,2) }, { assigned(2,1), assigned(3,1) }).

%0, 4
#pos(e_4, { assigned(3,1), assigned(2,3), assigned(1,2), assigned(2,1) }, { assigned(1,1), assigned(3,2), assigned(3,3), assigned(1,3) }).

%3, 8
#pos(e_5, { assigned(1,3), assigned(2,1), assigned(3,2), assigned(3,1) }, { assigned(1,2), assigned(2,3) }).

%1, 4
#pos(e_6, { assigned(2,3), assigned(3,3), assigned(2,2), assigned(1,1), assigned(3,1) }, { assigned(1,2), assigned(1,3), assigned(3,2) }).

%2, 4
#pos(e_7, { assigned(1,2), assigned(1,1) }, { assigned(1,3), assigned(2,2), assigned(3,1), assigned(3,3) }).

%1, 8
#pos(e_8, { assigned(2,2), assigned(3,3), assigned(1,3), assigned(1,2), assigned(3,1) }, { assigned(2,1), assigned(1,1) }).

%3, 10
#pos(e_9, { assigned(1,2), assigned(3,1), assigned(3,2), assigned(1,1), assigned(1,3), assigned(3,3), assigned(2,2) }, { assigned(2,3), assigned(2,1) }).

%2, 2
#pos(e_10, { assigned(3,2), assigned(1,3), assigned(3,1) }, { assigned(2,3), assigned(1,1), assigned(1,2), assigned(3,3) }).

%2, 2
#pos(e_11, { assigned(1,1), assigned(1,3), assigned(2,3) }, { assigned(1,2), assigned(2,1), assigned(3,3), assigned(2,2), assigned(3,1) }).

%0, 0
#pos(e_12, { assigned(3,1) }, { assigned(1,3), assigned(2,2), assigned(1,1), assigned(2,3), assigned(3,2), assigned(2,1) }).

%2, 4
#pos(e_13, { assigned(3,1), assigned(3,2) }, { assigned(2,2), assigned(1,1), assigned(3,3) }).

%0, 2
#pos(e_14, { assigned(3,1), assigned(3,3) }, { assigned(2,2), assigned(3,2), assigned(1,3), assigned(2,1), assigned(1,1), assigned(1,2) }).

%0, 0
#pos(e_15, { assigned(3,1) }, { assigned(2,2), assigned(1,3), assigned(1,1), assigned(1,2), assigned(3,2), assigned(2,1), assigned(2,3), assigned(3,3) }).

%2, 4
#pos(e_16, { assigned(1,1), assigned(2,3) }, { assigned(3,2), assigned(3,1), assigned(1,2) }).

%2, 2
#pos(e_17, { assigned(3,3), assigned(3,2), assigned(3,1) }, { assigned(2,2), assigned(1,3), assigned(2,1) }).

%2, 8
#pos(e_18, { assigned(3,1), assigned(2,2), assigned(1,3), assigned(2,1) }, { assigned(1,2) }).

%2, 6
#pos(e_19, { assigned(3,2), assigned(1,3), assigned(1,2), assigned(2,1), assigned(2,3) }, { assigned(2,2), assigned(1,1), assigned(3,3) }).

%2, 2
#pos(e_20, { assigned(3,2), assigned(1,3), assigned(2,3) }, { assigned(3,3), assigned(1,2), assigned(2,2), assigned(1,1) }).

%3, 6
#pos(e_21, { assigned(1,3), assigned(2,3), assigned(3,1), assigned(3,2), assigned(1,1) }, { assigned(1,2), assigned(2,1), assigned(3,3) }).

%2, 8
#pos(e_22, { assigned(2,2), assigned(2,1), assigned(3,3), assigned(1,1) }, { assigned(1,3), assigned(1,2) }).

%2, 2
#pos(e_23, { assigned(1,3), assigned(1,1) }, { assigned(2,1), assigned(3,2), assigned(2,2), assigned(2,3), assigned(1,2), assigned(3,3) }).

%1, 10
#pos(e_24, { assigned(3,1), assigned(1,2), assigned(2,3), assigned(1,3), assigned(2,2) }, {  }).

%1, 0
#pos(e_25, { assigned(1,2), assigned(2,3), assigned(1,1) }, { assigned(2,2), assigned(3,3), assigned(3,1) }).

%1, 4
#pos(e_26, { assigned(1,3), assigned(2,3), assigned(2,1), assigned(3,1) }, { assigned(1,1), assigned(3,2), assigned(3,3), assigned(2,2), assigned(1,2) }).

%1, 8
#pos(e_27, { assigned(2,1), assigned(1,1), assigned(2,3) }, { assigned(3,2), assigned(1,2) }).

%3, 6
#pos(e_28, { assigned(1,2), assigned(1,1), assigned(3,1), assigned(2,3), assigned(3,2) }, { assigned(2,1), assigned(3,3) }).

%0, 0
#pos(e_29, {  }, { assigned(1,1), assigned(1,3), assigned(2,2), assigned(1,2), assigned(2,3) }).

%3, 10
#pos(e_30, { assigned(1,1), assigned(2,3), assigned(1,3), assigned(3,2) }, { assigned(1,2) }).

%3, 4
#pos(e_31, { assigned(2,2), assigned(1,1) }, { assigned(2,1), assigned(1,2), assigned(2,3) }).

%1, 2
#pos(e_32, { assigned(1,3), assigned(2,3) }, { assigned(2,2), assigned(1,1), assigned(3,2), assigned(3,1) }).

%1, 8
#pos(e_33, { assigned(2,2), assigned(2,1), assigned(1,2) }, { assigned(3,2), assigned(1,3) }).

%2, 2
#pos(e_34, { assigned(3,1), assigned(1,1), assigned(3,2) }, { assigned(3,3), assigned(2,1), assigned(1,2), assigned(2,2), assigned(1,3) }).

%2, 2
#pos(e_35, { assigned(1,3), assigned(1,1), assigned(3,3) }, { assigned(3,1), assigned(2,1), assigned(1,2), assigned(2,3), assigned(3,2) }).

%2, 8
#pos(e_36, { assigned(3,2), assigned(2,3), assigned(3,1), assigned(2,1) }, { assigned(2,2), assigned(1,1), assigned(1,2) }).

%1, 0
#pos(e_37, { assigned(3,1), assigned(3,2) }, { assigned(3,3), assigned(2,3), assigned(1,3), assigned(2,2), assigned(1,1), assigned(2,1) }).

%1, 2
#pos(e_38, { assigned(3,3), assigned(1,3) }, { assigned(3,1), assigned(1,2), assigned(2,2), assigned(3,2), assigned(2,3), assigned(1,1), assigned(2,1) }).

%3, 14
#pos(e_39, { assigned(1,3), assigned(1,1), assigned(2,2), assigned(3,1), assigned(2,1) }, { assigned(1,2) }).

%1, 2
#pos(e_40, { assigned(1,2), assigned(3,2) }, { assigned(2,3), assigned(1,3), assigned(1,1), assigned(3,3), assigned(3,1), assigned(2,1), assigned(2,2) }).

%2, 2
#pos(e_41, { assigned(1,3), assigned(2,2), assigned(1,1), assigned(2,3) }, { assigned(2,1), assigned(3,3), assigned(1,2), assigned(3,1) }).

%3, 6
#pos(e_42, { assigned(1,1), assigned(1,2), assigned(3,3), assigned(1,3) }, { assigned(3,1), assigned(2,3), assigned(2,2) }).

%2, 12
#pos(e_43, { assigned(1,1), assigned(3,3), assigned(1,3), assigned(2,3), assigned(2,1) }, { assigned(1,2), assigned(3,2) }).

%3, 6
#pos(e_44, { assigned(1,3), assigned(2,2), assigned(2,1), assigned(3,3), assigned(1,1), assigned(3,2) }, { assigned(3,1), assigned(1,2), assigned(2,3) }).

%1, 0
#pos(e_45, { assigned(2,1), assigned(3,2) }, { assigned(3,1), assigned(1,2), assigned(3,3), assigned(2,2), assigned(1,1) }).

%2, 2
#pos(e_46, { assigned(1,3), assigned(2,2) }, { assigned(1,1), assigned(3,3), assigned(1,2) }).

%2, 2
#pos(e_47, { assigned(1,3), assigned(2,2), assigned(3,2) }, { assigned(2,1), assigned(1,1) }).

%1, 6
#pos(e_48, { assigned(1,2), assigned(3,2), assigned(2,2) }, { assigned(3,1), assigned(1,3), assigned(2,3) }).

%0, 2
#pos(e_49, { assigned(3,1), assigned(2,1) }, { assigned(2,2), assigned(1,3), assigned(3,2), assigned(1,2), assigned(1,1), assigned(2,3) }).

%2, 0
#pos(e_50, { assigned(3,1), assigned(1,3), assigned(3,2) }, { assigned(2,2), assigned(1,2), assigned(2,3), assigned(2,1), assigned(1,1) }).

%0, 0
#pos(e_51, { assigned(2,2) }, { assigned(3,1), assigned(3,3), assigned(2,3), assigned(1,1), assigned(1,3), assigned(3,2), assigned(1,2), assigned(2,1) }).

%0, 2
#pos(e_52, { assigned(3,1), assigned(3,3) }, { assigned(1,2), assigned(1,1), assigned(1,3), assigned(3,2) }).

%1, 2
#pos(e_53, { assigned(2,1), assigned(1,3), assigned(1,2), assigned(3,1) }, { assigned(3,3), assigned(3,2), assigned(2,3), assigned(2,2), assigned(1,1) }).

%2, 2
#pos(e_54, { assigned(3,2) }, { assigned(2,1), assigned(1,1), assigned(2,2), assigned(3,1) }).

%2, 2
#pos(e_55, { assigned(1,3), assigned(1,1) }, { assigned(2,3), assigned(3,1), assigned(3,2), assigned(2,2) }).

%2, 6
#pos(e_56, { assigned(3,1), assigned(2,1), assigned(1,2), assigned(1,3), assigned(1,1) }, { assigned(3,2), assigned(2,2), assigned(3,3), assigned(2,3) }).

%3, 10
#pos(e_57, { assigned(2,1), assigned(3,3), assigned(1,1), assigned(3,1), assigned(3,2), assigned(1,2) }, {  }).

%2, 2
#pos(e_58, { assigned(2,2), assigned(1,3) }, { assigned(3,2), assigned(2,1), assigned(3,3), assigned(3,1), assigned(1,2) }).

%3, 8
#pos(e_59, { assigned(2,2), assigned(1,1), assigned(3,2) }, { assigned(1,2), assigned(3,3) }).

%0, 2
#pos(e_60, { assigned(2,1), assigned(3,1) }, { assigned(1,1), assigned(3,3), assigned(2,3), assigned(1,3) }).

%3, 6
#pos(e_61, { assigned(3,2), assigned(1,3), assigned(2,1), assigned(1,2), assigned(1,1), assigned(2,3) }, { assigned(2,2), assigned(3,1), assigned(3,3) }).

%1, 0
#pos(e_62, { assigned(3,1), assigned(1,2), assigned(1,3) }, { assigned(2,2), assigned(3,2), assigned(1,1), assigned(3,3), assigned(2,1), assigned(2,3) }).

%2, 8
#pos(e_63, { assigned(1,1), assigned(3,2), assigned(2,1), assigned(3,1) }, { assigned(1,3), assigned(2,3) }).

%3, 2
#pos(e_64, { assigned(1,3), assigned(1,2) }, { assigned(2,1), assigned(3,3), assigned(2,3), assigned(2,2) }).

%2, 4
#pos(e_65, { assigned(3,1), assigned(1,2), assigned(1,3), assigned(3,2) }, { assigned(2,3), assigned(1,1) }).

%3, 0
#pos(e_66, { assigned(1,3), assigned(3,2), assigned(1,1) }, { assigned(2,3), assigned(3,3), assigned(2,2), assigned(1,2), assigned(2,1), assigned(3,1) }).

%1, 2
#pos(e_67, { assigned(3,1), assigned(2,3), assigned(1,2) }, { assigned(2,1), assigned(2,2) }).

%0, 2
#pos(e_68, { assigned(2,2), assigned(2,3), assigned(3,1), assigned(2,1) }, { assigned(3,3), assigned(1,1), assigned(3,2), assigned(1,2), assigned(1,3) }).

%3, 8
#pos(e_69, { assigned(2,3), assigned(3,1), assigned(3,2), assigned(1,1), assigned(1,3) }, { assigned(1,2), assigned(2,1), assigned(2,2) }).

%1, 0
#pos(e_70, { assigned(3,2), assigned(2,1), assigned(2,3) }, { assigned(1,3), assigned(2,2), assigned(3,1), assigned(3,3), assigned(1,1), assigned(1,2) }).

%2, 6
#pos(e_71, { assigned(3,2), assigned(1,2), assigned(2,2) }, { assigned(2,3), assigned(2,1), assigned(1,3) }).

%1, 0
#pos(e_72, { assigned(3,3), assigned(3,1), assigned(3,2) }, { assigned(2,2), assigned(2,1), assigned(1,2), assigned(1,3), assigned(2,3), assigned(1,1) }).

%2, 2
#pos(e_73, { assigned(3,1), assigned(1,3), assigned(3,2) }, { assigned(1,2), assigned(2,1), assigned(3,3), assigned(2,2) }).

%2, 4
#pos(e_74, { assigned(1,3), assigned(1,1), assigned(2,1) }, { assigned(3,1), assigned(1,2) }).

%1, 4
#pos(e_75, { assigned(3,3), assigned(2,1), assigned(2,3), assigned(1,2), assigned(1,1) }, { assigned(1,3), assigned(2,2), assigned(3,1), assigned(3,2) }).

%3, 8
#pos(e_76, { assigned(1,3), assigned(3,1), assigned(3,2), assigned(1,1) }, { assigned(3,3) }).

%1, 8
#pos(e_77, { assigned(2,3), assigned(3,3), assigned(3,1), assigned(2,2) }, { assigned(1,3) }).

%1, 2
#pos(e_78, { assigned(3,2), assigned(3,1), assigned(1,2), assigned(3,3) }, { assigned(2,2), assigned(1,1), assigned(2,3), assigned(1,3) }).

%1, 0
#pos(e_79, { assigned(3,2) }, { assigned(1,3), assigned(2,1), assigned(1,2), assigned(3,1), assigned(1,1), assigned(2,2) }).

%3, 4
#pos(e_80, { assigned(3,2), assigned(1,2), assigned(1,3), assigned(2,3) }, { assigned(3,1), assigned(2,2), assigned(3,3), assigned(2,1) }).

%0, 0
#pos(e_81, { assigned(2,1), assigned(2,3) }, { assigned(2,2), assigned(1,2), assigned(3,2), assigned(3,3), assigned(1,1), assigned(1,3), assigned(3,1) }).

%0, 2
#pos(e_82, { assigned(3,3), assigned(2,2) }, { assigned(3,1), assigned(1,3), assigned(2,3), assigned(2,1) }).

%2, 6
#pos(e_83, { assigned(2,2), assigned(1,3), assigned(1,1), assigned(1,2), assigned(2,1), assigned(3,3) }, { assigned(2,3), assigned(3,2) }).

%2, 8
#pos(e_84, { assigned(3,1), assigned(2,1) }, { assigned(1,2), assigned(3,3), assigned(2,3), assigned(1,3) }).

%3, 14
#pos(e_85, { assigned(3,2), assigned(1,2), assigned(3,3), assigned(3,1), assigned(1,1) }, { assigned(2,1) }).

%1, 2
#pos(e_86, { assigned(3,3), assigned(1,3) }, { assigned(2,1), assigned(3,1), assigned(1,1), assigned(1,2), assigned(2,2) }).

%0, 0
#pos(e_87, { assigned(3,1), assigned(2,3) }, { assigned(2,1), assigned(1,2), assigned(2,2), assigned(1,1) }).

%2, 2
#pos(e_88, { assigned(3,3), assigned(1,3) }, { assigned(3,1), assigned(2,2), assigned(2,3), assigned(1,1) }).

%1, 4
#pos(e_89, { assigned(3,1), assigned(3,3), assigned(1,3), assigned(1,2), assigned(2,2) }, { assigned(2,3), assigned(3,2), assigned(1,1) }).

%1, 6
#pos(e_90, { assigned(2,1), assigned(2,3), assigned(1,2), assigned(2,2), assigned(1,1) }, { assigned(3,2), assigned(3,1) }).

%2, 2
#pos(e_91, { assigned(3,3), assigned(1,3), assigned(3,2) }, { assigned(2,2), assigned(3,1), assigned(1,1), assigned(1,2) }).

%1, 2
#pos(e_92, { assigned(2,1), assigned(1,1), assigned(2,2), assigned(2,3) }, { assigned(3,1), assigned(3,3), assigned(1,3), assigned(3,2), assigned(1,2) }).

%2, 2
#pos(e_93, { assigned(2,3), assigned(1,3) }, { assigned(3,3), assigned(1,1), assigned(1,2) }).

%3, 10
#pos(e_94, { assigned(2,3), assigned(1,3), assigned(1,1), assigned(2,2), assigned(2,1), assigned(3,3) }, { assigned(3,1) }).

%3, 14
#pos(e_95, { assigned(2,1), assigned(2,3), assigned(2,2), assigned(1,3), assigned(1,2) }, {  }).

%2, 4
#pos(e_96, { assigned(1,1), assigned(2,1) }, { assigned(3,1), assigned(3,3), assigned(2,2), assigned(1,2), assigned(3,2) }).

%2, 2
#pos(e_97, { assigned(3,1), assigned(3,2), assigned(1,3), assigned(1,2) }, { assigned(2,1), assigned(2,3), assigned(2,2), assigned(3,3), assigned(1,1) }).

%3, 2
#pos(e_98, { assigned(1,3), assigned(2,1), assigned(1,1), assigned(3,2) }, { assigned(3,3), assigned(2,2), assigned(2,3), assigned(1,2), assigned(3,1) }).

%1, 8
#pos(e_99, { assigned(1,3), assigned(1,2) }, { assigned(3,2), assigned(3,1), assigned(1,1) }).

%0, 2
#pos(e_100, { assigned(2,2), assigned(2,3), assigned(2,1), assigned(3,3) }, { assigned(1,2), assigned(3,1) }).

%1, 8
#pos(e_101, { assigned(2,3), assigned(1,1), assigned(2,2) }, { assigned(1,2), assigned(3,2) }).

%1, 0
#pos(e_102, { assigned(3,2) }, { assigned(1,1), assigned(2,3), assigned(3,3), assigned(3,1), assigned(1,3), assigned(2,1), assigned(1,2), assigned(2,2) }).

%2, 14
#pos(e_103, { assigned(3,1), assigned(1,3), assigned(3,3), assigned(2,1), assigned(2,2), assigned(1,2) }, {  }).

%1, 2
#pos(e_104, { assigned(1,3), assigned(2,2), assigned(3,3) }, { assigned(3,2), assigned(3,1), assigned(1,2), assigned(2,3) }).

%1, 8
#pos(e_105, { assigned(2,3), assigned(2,1), assigned(1,2), assigned(3,1), assigned(2,2) }, { assigned(3,3), assigned(1,3) }).

%1, 10
#pos(e_106, { assigned(2,1), assigned(1,3), assigned(3,3), assigned(3,1) }, { assigned(3,2) }).

%1, 2
#pos(e_107, { assigned(2,3), assigned(2,2) }, { assigned(3,2), assigned(1,2), assigned(1,3) }).

%1, 10
#pos(e_108, { assigned(1,3), assigned(2,1), assigned(2,3) }, { assigned(3,2), assigned(1,1) }).

%2, 4
#pos(e_109, { assigned(1,1), assigned(2,3), assigned(2,2) }, { assigned(3,3), assigned(2,1), assigned(1,2), assigned(1,3) }).

%1, 2
#pos(e_110, { assigned(2,1), assigned(3,1), assigned(1,2), assigned(1,3) }, { assigned(3,2), assigned(2,3), assigned(2,2), assigned(3,3), assigned(1,1) }).

%1, 2
#pos(e_111, { assigned(2,2), assigned(2,3), assigned(3,3), assigned(1,1) }, { assigned(1,2), assigned(3,1), assigned(1,3), assigned(3,2), assigned(2,1) }).

%2, 6
#pos(e_112, { assigned(1,1), assigned(3,1), assigned(1,2), assigned(1,3), assigned(2,2) }, { assigned(2,3), assigned(2,1) }).

%2, 4
#pos(e_113, { assigned(3,1), assigned(3,2) }, { assigned(2,2), assigned(1,2), assigned(2,1), assigned(1,3) }).

%1, 6
#pos(e_114, { assigned(2,2), assigned(1,2), assigned(2,1), assigned(3,2) }, { assigned(1,1) }).

%2, 0
#pos(e_115, { assigned(3,2), assigned(1,1) }, { assigned(1,3), assigned(3,1), assigned(2,2), assigned(3,3), assigned(1,2), assigned(2,3), assigned(2,1) }).

%2, 2
#pos(e_116, { assigned(3,1), assigned(1,3), assigned(1,2) }, { assigned(2,1), assigned(3,2), assigned(2,2), assigned(2,3) }).

%1, 6
#pos(e_117, { assigned(2,3), assigned(3,2), assigned(1,2), assigned(2,2) }, { assigned(1,1), assigned(3,3), assigned(1,3), assigned(2,1), assigned(3,1) }).

%0, 0
#pos(e_118, { assigned(1,2), assigned(3,1) }, { assigned(2,3), assigned(1,3), assigned(2,1), assigned(3,3), assigned(3,2) }).

%0, 2
#pos(e_119, { assigned(3,3), assigned(1,2), assigned(2,1) }, { assigned(3,1), assigned(1,3), assigned(1,1), assigned(2,2) }).

%2, 4
#pos(e_120, { assigned(3,2), assigned(3,3), assigned(2,1), assigned(1,3) }, { assigned(1,2), assigned(3,1), assigned(1,1), assigned(2,3) }).

%1, 6
#pos(e_121, { assigned(2,3), assigned(3,2), assigned(3,3), assigned(2,2), assigned(3,1) }, { assigned(1,3), assigned(1,2), assigned(1,1) }).

%2, 4
#pos(e_122, { assigned(1,1), assigned(2,1), assigned(1,2), assigned(3,2), assigned(3,3) }, { assigned(1,3), assigned(2,2), assigned(2,3) }).

%2, 4
#pos(e_123, { assigned(2,2), assigned(3,2), assigned(2,1) }, { assigned(2,3), assigned(1,1) }).

%0, 0
#pos(e_124, { assigned(2,2), assigned(3,3) }, { assigned(3,1), assigned(3,2), assigned(1,3), assigned(1,2), assigned(1,1) }).

%1, 8
#pos(e_125, { assigned(2,2), assigned(1,2), assigned(2,3), assigned(3,2), assigned(3,3) }, { assigned(1,1), assigned(1,3) }).

%1, 2
#pos(e_126, { assigned(3,1), assigned(1,3), assigned(3,3) }, { assigned(2,3), assigned(1,2), assigned(2,2), assigned(1,1), assigned(3,2), assigned(2,1) }).

%1, 2
#pos(e_127, { assigned(2,3), assigned(3,2), assigned(3,3) }, { assigned(2,2), assigned(1,1), assigned(1,2), assigned(1,3), assigned(3,1), assigned(2,1) }).

%1, 6
#pos(e_128, { assigned(2,2), assigned(1,2), assigned(3,1) }, { assigned(1,3), assigned(1,1), assigned(2,1), assigned(3,3), assigned(2,3) }).

%1, 2
#pos(e_129, { assigned(2,3), assigned(3,1), assigned(2,1) }, { assigned(2,2), assigned(1,2), assigned(1,3), assigned(1,1) }).

%3, 14
#pos(e_130, { assigned(2,1), assigned(3,1), assigned(3,2), assigned(1,2), assigned(3,3), assigned(2,3) }, { assigned(2,2) }).

%2, 10
#pos(e_131, { assigned(3,2), assigned(3,1), assigned(2,3), assigned(2,2), assigned(3,3), assigned(1,1), assigned(2,1) }, { assigned(1,2), assigned(1,3) }).

%1, 8
#pos(e_132, { assigned(3,3), assigned(2,2), assigned(1,2), assigned(1,1) }, { assigned(3,2), assigned(1,3) }).

%1, 2
#pos(e_133, { assigned(1,2), assigned(2,1) }, { assigned(3,1), assigned(3,3), assigned(3,2) }).

%1, 0
#pos(e_134, { assigned(3,2) }, { assigned(1,2), assigned(3,3), assigned(1,3), assigned(1,1), assigned(2,2), assigned(2,3), assigned(3,1), assigned(2,1) }).

%1, 8
#pos(e_135, { assigned(1,1), assigned(2,2), assigned(1,2), assigned(3,1), assigned(2,1) }, { assigned(1,3), assigned(3,2), assigned(2,3), assigned(3,3) }).

%2, 2
#pos(e_136, { assigned(3,3), assigned(1,2) }, { assigned(1,3), assigned(3,1), assigned(2,2) }).

%1, 10
#pos(e_137, { assigned(3,2), assigned(1,2), assigned(2,2), assigned(3,1) }, { assigned(1,1), assigned(1,3) }).

%1, 4
#pos(e_138, { assigned(2,1), assigned(2,3), assigned(3,3), assigned(2,2), assigned(3,2) }, { assigned(1,1), assigned(1,2), assigned(3,1), assigned(1,3) }).

%0, 4
#pos(e_139, { assigned(2,1), assigned(2,2), assigned(3,3), assigned(2,3), assigned(1,2) }, { assigned(3,1), assigned(1,1), assigned(3,2), assigned(1,3) }).

%2, 8
#pos(e_140, { assigned(2,1), assigned(1,1), assigned(1,3) }, { assigned(1,2), assigned(2,2), assigned(3,3) }).

%3, 14
#pos(e_141, { assigned(3,2), assigned(3,3), assigned(2,3), assigned(1,2), assigned(2,2) }, {  }).

%2, 10
#pos(e_142, { assigned(1,2), assigned(2,2), assigned(1,3), assigned(2,3), assigned(2,1) }, { assigned(3,3), assigned(3,2) }).

%0, 0
#pos(e_143, { assigned(2,2), assigned(3,3), assigned(3,1) }, { assigned(2,1), assigned(2,3), assigned(1,1), assigned(3,2) }).

%0, 2
#pos(e_144, { assigned(3,1), assigned(2,1) }, { assigned(1,1), assigned(1,3), assigned(3,3), assigned(1,2), assigned(2,2) }).

%2, 2
#pos(e_145, { assigned(1,3), assigned(3,3), assigned(2,1) }, { assigned(1,1), assigned(2,3), assigned(1,2), assigned(2,2), assigned(3,1) }).

%1, 6
#pos(e_146, { assigned(1,3), assigned(2,3), assigned(3,1), assigned(2,2) }, { assigned(2,1), assigned(3,2), assigned(1,1) }).

%1, 2
#pos(e_147, { assigned(1,1), assigned(3,3), assigned(2,3) }, { assigned(2,1), assigned(3,2), assigned(3,1), assigned(2,2) }).

%3, 8
#pos(e_148, { assigned(2,3), assigned(3,1), assigned(3,2) }, { assigned(2,1), assigned(1,2) }).

%0, 0
#pos(e_149, { assigned(2,1) }, { assigned(3,2), assigned(1,1), assigned(3,1), assigned(3,3), assigned(1,2) }).

%2, 2
#pos(e_150, { assigned(1,3) }, { assigned(2,1), assigned(2,3), assigned(2,2), assigned(1,2) }).

%3, 2
#pos(e_151, { assigned(1,3), assigned(1,1) }, { assigned(2,1), assigned(2,2), assigned(2,3) }).

%2, 2
#pos(e_152, { assigned(1,3), assigned(3,2), assigned(1,2) }, { assigned(3,1), assigned(3,3), assigned(2,1), assigned(1,1), assigned(2,3) }).

%0, 2
#pos(e_153, { assigned(2,3), assigned(2,1) }, { assigned(1,2), assigned(2,2), assigned(3,2), assigned(1,3) }).

%3, 14
#pos(e_154, { assigned(1,3), assigned(3,3), assigned(1,2), assigned(1,1), assigned(3,2), assigned(2,3), assigned(2,2) }, { assigned(2,1) }).

%2, 12
#pos(e_155, { assigned(1,3), assigned(3,1), assigned(3,3), assigned(1,1), assigned(1,2), assigned(2,3) }, { assigned(3,2), assigned(2,2) }).

%0, 2
#pos(e_156, { assigned(3,3), assigned(2,3) }, { assigned(1,3), assigned(1,1), assigned(3,1), assigned(2,2), assigned(1,2), assigned(2,1), assigned(3,2) }).

%1, 4
#pos(e_157, { assigned(3,2), assigned(2,3), assigned(2,1), assigned(1,2) }, { assigned(1,3), assigned(2,2), assigned(1,1) }).

%0, 2
#pos(e_158, { assigned(3,1), assigned(2,1) }, { assigned(1,2), assigned(2,2), assigned(3,3), assigned(2,3), assigned(1,1), assigned(3,2) }).

%2, 2
#pos(e_159, { assigned(3,2), assigned(3,3), assigned(2,1), assigned(1,3) }, { assigned(2,2), assigned(1,2) }).

%2, 8
#pos(e_160, { assigned(2,1), assigned(1,1), assigned(1,3), assigned(1,2), assigned(2,2), assigned(3,1) }, { assigned(3,2), assigned(2,3), assigned(3,3) }).

%0, 0
#pos(e_161, { assigned(2,1), assigned(2,3) }, { assigned(3,2), assigned(1,1), assigned(3,3), assigned(1,2), assigned(3,1), assigned(1,3) }).

%1, 2
#pos(e_162, { assigned(3,2), assigned(2,3) }, { assigned(1,1), assigned(1,3), assigned(3,1), assigned(2,2) }).

%2, 14
#pos(e_163, { assigned(2,3), assigned(3,1), assigned(2,2), assigned(3,3), assigned(2,1) }, { assigned(1,1) }).

%3, 8
#pos(e_164, { assigned(2,2), assigned(3,3), assigned(2,3), assigned(1,1), assigned(1,3), assigned(3,2) }, { assigned(3,1), assigned(1,2), assigned(2,1) }).

%1, 6
#pos(e_165, { assigned(2,3), assigned(1,2), assigned(1,3) }, { assigned(2,1), assigned(3,2) }).

%1, 2
#pos(e_166, { assigned(2,2), assigned(2,3), assigned(1,3) }, { assigned(1,2), assigned(3,1), assigned(3,2), assigned(2,1) }).

%3, 6
#pos(e_167, { assigned(1,2), assigned(2,2), assigned(1,3), assigned(3,2), assigned(1,1) }, { assigned(2,3), assigned(3,3), assigned(2,1) }).

%2, 2
#pos(e_168, { assigned(3,2) }, { assigned(1,1), assigned(2,3), assigned(3,3), assigned(1,2) }).

%1, 0
#pos(e_169, { assigned(1,1), assigned(2,3) }, { assigned(2,2), assigned(2,1), assigned(1,3), assigned(1,2), assigned(3,3), assigned(3,2), assigned(3,1) }).

%1, 10
#pos(e_170, { assigned(3,3), assigned(2,3), assigned(2,1), assigned(1,2), assigned(3,1), assigned(2,2) }, { assigned(3,2), assigned(1,3) }).

%2, 4
#pos(e_171, { assigned(3,2), assigned(3,3), assigned(2,1), assigned(3,1) }, { assigned(2,3), assigned(1,2), assigned(2,2), assigned(1,1) }).

%3, 6
#pos(e_172, { assigned(1,3), assigned(1,1), assigned(3,3), assigned(3,2), assigned(2,3) }, { assigned(1,2), assigned(3,1), assigned(2,2), assigned(2,1) }).

%1, 0
#pos(e_173, { assigned(1,1), assigned(1,2) }, { assigned(3,2), assigned(3,1), assigned(2,2) }).

%3, 8
#pos(e_174, { assigned(1,3), assigned(2,2), assigned(2,3) }, { assigned(3,1), assigned(2,1) }).

%1, 10
#pos(e_175, { assigned(3,3), assigned(1,2), assigned(1,1), assigned(2,2) }, { assigned(3,2) }).

%1, 6
#pos(e_176, { assigned(1,3), assigned(3,3) }, { assigned(2,1), assigned(1,1), assigned(3,1) }).

%2, 6
#pos(e_177, { assigned(2,3), assigned(1,3), assigned(3,1), assigned(3,2), assigned(3,3) }, { assigned(1,1), assigned(1,2) }).

%3, 8
#pos(e_178, { assigned(3,3), assigned(1,3), assigned(3,2), assigned(2,2), assigned(1,1), assigned(1,2) }, { assigned(2,1), assigned(2,3), assigned(3,1) }).

%2, 8
#pos(e_179, { assigned(1,2), assigned(1,1), assigned(2,3), assigned(1,3), assigned(2,1), assigned(3,3) }, { assigned(2,2), assigned(3,2) }).

%3, 12
#pos(e_180, { assigned(3,2), assigned(2,3), assigned(2,1), assigned(1,3), assigned(3,3), assigned(3,1), assigned(1,1) }, { assigned(1,2), assigned(2,2) }).

%1, 6
#pos(e_181, { assigned(1,3), assigned(3,3), assigned(2,3), assigned(2,1), assigned(1,2) }, { assigned(3,2), assigned(2,2), assigned(1,1), assigned(3,1) }).

%2, 4
#pos(e_182, { assigned(1,2), assigned(3,2) }, { assigned(3,1), assigned(2,2), assigned(2,1), assigned(1,1), assigned(2,3) }).

%1, 6
#pos(e_183, { assigned(3,3), assigned(3,1), assigned(2,2), assigned(3,2) }, { assigned(2,1), assigned(2,3), assigned(1,1), assigned(1,3) }).

%3, 8
#pos(e_184, { assigned(3,3), assigned(1,3), assigned(3,2), assigned(3,1), assigned(1,1), assigned(2,1) }, { assigned(2,2), assigned(2,3), assigned(1,2) }).

%1, 2
#pos(e_185, { assigned(2,3), assigned(1,3), assigned(1,2), assigned(3,1) }, { assigned(3,2), assigned(2,2), assigned(1,1), assigned(2,1), assigned(3,3) }).

%2, 8
#pos(e_186, { assigned(3,3), assigned(1,3), assigned(3,2), assigned(2,3), assigned(1,2) }, { assigned(2,1), assigned(3,1), assigned(2,2) }).

%2, 2
#pos(e_187, { assigned(2,3), assigned(1,1), assigned(2,1) }, { assigned(2,2), assigned(1,3) }).

%1, 2
#pos(e_188, { assigned(3,1), assigned(2,3), assigned(1,2) }, { assigned(3,3), assigned(3,2), assigned(1,3) }).

%2, 8
#pos(e_189, { assigned(2,3), assigned(3,2), assigned(1,2), assigned(2,2), assigned(2,1) }, { assigned(3,3), assigned(1,1) }).

%2, 4
#pos(e_190, { assigned(1,3), assigned(2,3), assigned(1,1), assigned(2,1), assigned(1,2) }, { assigned(3,2), assigned(3,3), assigned(2,2), assigned(3,1) }).

%2, 12
#pos(e_191, { assigned(1,3), assigned(2,1), assigned(2,3) }, { assigned(1,2), assigned(3,2) }).

%2, 2
#pos(e_192, { assigned(1,1), assigned(3,2), assigned(2,2) }, { assigned(2,3), assigned(1,2), assigned(3,1), assigned(3,3), assigned(2,1), assigned(1,3) }).

%2, 4
#pos(e_193, { assigned(3,2), assigned(3,3), assigned(3,1) }, { assigned(2,2), assigned(2,1) }).

%1, 6
#pos(e_194, { assigned(1,2), assigned(3,2), assigned(2,2), assigned(3,1) }, { assigned(2,3), assigned(1,1), assigned(2,1), assigned(3,3) }).

%2, 2
#pos(e_195, { assigned(3,2), assigned(1,1), assigned(1,2) }, { assigned(2,2), assigned(2,3), assigned(2,1), assigned(3,3), assigned(3,1), assigned(1,3) }).

%1, 4
#pos(e_196, { assigned(1,2), assigned(2,2), assigned(3,1), assigned(1,1) }, { assigned(1,3) }).

%2, 12
#pos(e_197, { assigned(1,2), assigned(3,3), assigned(1,3), assigned(2,3), assigned(2,2), assigned(3,1) }, { assigned(1,1), assigned(2,1) }).

%2, 0
#pos(e_198, { assigned(3,2), assigned(1,3) }, { assigned(3,1), assigned(3,3), assigned(1,2), assigned(1,1), assigned(2,3), assigned(2,1), assigned(2,2) }).

%0, 2
#pos(e_199, { assigned(3,1), assigned(2,2) }, { assigned(3,3), assigned(1,2), assigned(1,3) }).

%2, 4
#pos(e_200, { assigned(3,2), assigned(2,2) }, { assigned(1,3), assigned(3,1), assigned(1,2) }).

%2, 2
#pos(e_201, { assigned(1,3), assigned(3,2), assigned(2,2) }, { assigned(2,3), assigned(3,3), assigned(3,1), assigned(1,1), assigned(1,2), assigned(2,1) }).

%1, 4
#pos(e_202, { assigned(3,1), assigned(1,3), assigned(2,3), assigned(2,1) }, { assigned(1,2), assigned(1,1), assigned(3,2), assigned(2,2), assigned(3,3) }).

%2, 6
#pos(e_203, { assigned(3,2), assigned(1,1), assigned(3,1), assigned(3,3), assigned(2,1) }, { assigned(1,3), assigned(2,3), assigned(1,2), assigned(2,2) }).

%2, 0
#pos(e_204, { assigned(1,3), assigned(3,2) }, { assigned(3,3), assigned(2,3), assigned(3,1), assigned(2,2), assigned(2,1), assigned(1,2), assigned(1,1) }).

%2, 6
#pos(e_205, { assigned(1,2), assigned(3,2), assigned(2,2), assigned(1,1) }, { assigned(1,3), assigned(3,3), assigned(2,3), assigned(3,1), assigned(2,1) }).

%1, 4
#pos(e_206, { assigned(3,1), assigned(1,2), assigned(2,3), assigned(3,3) }, { assigned(1,3), assigned(2,2), assigned(1,1) }).

%2, 8
#pos(e_207, { assigned(1,2), assigned(3,1), assigned(1,3), assigned(2,1) }, { assigned(2,2), assigned(3,2) }).

%0, 2
#pos(e_208, { assigned(3,3), assigned(2,3), assigned(1,2) }, { assigned(3,1), assigned(2,1), assigned(2,2), assigned(1,1), assigned(3,2), assigned(1,3) }).

%2, 8
#pos(e_209, { assigned(3,1), assigned(1,3), assigned(2,1), assigned(1,1) }, { assigned(2,2), assigned(3,3), assigned(1,2), assigned(3,2) }).

%1, 8
#pos(e_210, { assigned(3,3), assigned(2,2), assigned(1,1), assigned(1,2) }, { assigned(2,3) }).

%2, 4
#pos(e_211, { assigned(2,2), assigned(1,3), assigned(3,1), assigned(1,1), assigned(3,3) }, { assigned(1,2), assigned(3,2), assigned(2,1) }).

%1, 4
#pos(e_212, { assigned(1,1), assigned(3,3) }, { assigned(1,3), assigned(2,2), assigned(1,2) }).

%2, 8
#pos(e_213, { assigned(1,2), assigned(3,2), assigned(3,1), assigned(2,2) }, { assigned(1,3), assigned(3,3), assigned(2,3) }).

%3, 2
#pos(e_214, { assigned(3,2), assigned(2,3), assigned(1,1) }, { assigned(2,2), assigned(2,1), assigned(3,3) }).

%3, 6
#pos(e_215, { assigned(3,2), assigned(3,3), assigned(1,2), assigned(1,1) }, { assigned(2,2), assigned(2,3), assigned(2,1) }).

%2, 8
#pos(e_216, { assigned(3,2), assigned(3,3), assigned(2,3), assigned(2,2), assigned(2,1) }, { assigned(1,2), assigned(3,1), assigned(1,1) }).

%2, 2
#pos(e_217, { assigned(2,3), assigned(2,2), assigned(1,3), assigned(1,1) }, { assigned(3,2), assigned(2,1), assigned(1,2), assigned(3,3) }).

%0, 4
#pos(e_218, { assigned(1,2), assigned(3,3), assigned(2,2), assigned(3,1), assigned(2,3) }, { assigned(1,1), assigned(3,2), assigned(1,3), assigned(2,1) }).

%1, 6
#pos(e_219, { assigned(1,2), assigned(2,1), assigned(3,3), assigned(2,3) }, { assigned(1,1), assigned(2,2), assigned(3,2) }).

%3, 18
#pos(e_220, { assigned(2,2), assigned(3,3), assigned(3,1), assigned(1,2), assigned(1,3), assigned(1,1), assigned(3,2), assigned(2,3), assigned(2,1) }, {  }).

%1, 2
#pos(e_221, { assigned(2,1), assigned(1,2), assigned(3,2) }, { assigned(1,1), assigned(3,1), assigned(2,2), assigned(2,3), assigned(3,3), assigned(1,3) }).

%1, 4
#pos(e_222, { assigned(3,1), assigned(3,2), assigned(2,2) }, { assigned(3,3), assigned(1,2), assigned(2,3), assigned(1,3) }).

%1, 6
#pos(e_223, { assigned(2,2), assigned(2,1), assigned(3,3), assigned(3,1) }, { assigned(1,1) }).

%1, 8
#pos(e_224, { assigned(3,1), assigned(2,2), assigned(1,2), assigned(1,1) }, { assigned(3,2), assigned(3,3), assigned(2,3) }).

%0, 0
#pos(e_225, { assigned(3,3) }, { assigned(3,2), assigned(2,2), assigned(1,1), assigned(1,3) }).

%1, 10
#pos(e_226, { assigned(2,2), assigned(2,1), assigned(3,3), assigned(3,1), assigned(2,3), assigned(1,2), assigned(1,1) }, { assigned(3,2), assigned(1,3) }).

%2, 8
#pos(e_227, { assigned(2,1), assigned(2,3), assigned(1,1), assigned(1,3), assigned(3,1) }, { assigned(3,2), assigned(3,3), assigned(1,2) }).

%3, 10
#pos(e_228, { assigned(1,2), assigned(1,1), assigned(3,2), assigned(2,2), assigned(1,3), assigned(2,1), assigned(3,3) }, { assigned(3,1) }).

%3, 8
#pos(e_229, { assigned(1,1), assigned(2,3), assigned(1,3), assigned(3,2), assigned(1,2), assigned(3,3) }, { assigned(2,2), assigned(3,1), assigned(2,1) }).

%1, 4
#pos(e_230, { assigned(3,3), assigned(1,3), assigned(2,1), assigned(3,1) }, { assigned(2,3), assigned(1,1), assigned(3,2), assigned(2,2) }).

%3, 4
#pos(e_231, { assigned(1,3), assigned(2,3), assigned(3,2), assigned(3,1) }, { assigned(1,2), assigned(2,1), assigned(3,3) }).

%2, 2
#pos(e_232, { assigned(2,1), assigned(1,3), assigned(3,2), assigned(3,1) }, { assigned(1,1), assigned(2,2), assigned(3,3), assigned(2,3), assigned(1,2) }).

%2, 10
#pos(e_233, { assigned(3,1), assigned(3,3), assigned(1,2), assigned(2,2), assigned(1,1), assigned(2,3) }, { assigned(1,3), assigned(2,1) }).

%1, 10
#pos(e_234, { assigned(3,3), assigned(1,2), assigned(2,3), assigned(3,1), assigned(2,2), assigned(1,3) }, { assigned(1,1), assigned(3,2) }).

%3, 8
#pos(e_235, { assigned(3,2), assigned(1,1), assigned(2,2), assigned(3,1), assigned(2,1) }, { assigned(3,3), assigned(1,2), assigned(2,3) }).

%1, 2
#pos(e_236, { assigned(1,1), assigned(2,3) }, { assigned(2,2), assigned(1,3), assigned(3,3), assigned(3,1), assigned(3,2), assigned(1,2) }).

%1, 6
#pos(e_237, { assigned(2,1), assigned(2,3) }, { assigned(3,2), assigned(1,2), assigned(1,3), assigned(3,3), assigned(2,2) }).

%0, 2
#pos(e_238, { assigned(1,2) }, { assigned(1,3), assigned(3,3), assigned(3,1), assigned(3,2), assigned(1,1) }).

%1, 10
#pos(e_239, { assigned(1,2), assigned(2,3), assigned(3,1) }, { assigned(3,2), assigned(1,3) }).

%2, 4
#pos(e_240, { assigned(3,3), assigned(1,3), assigned(2,1), assigned(1,2) }, { assigned(2,3), assigned(1,1), assigned(3,1) }).

%2, 10
#pos(e_241, { assigned(1,1), assigned(3,1), assigned(1,3), assigned(2,2), assigned(1,2) }, { assigned(3,2), assigned(2,1) }).

%3, 8
#pos(e_242, { assigned(2,1), assigned(2,2), assigned(3,2), assigned(1,1), assigned(1,2), assigned(1,3) }, { assigned(3,1), assigned(2,3), assigned(3,3) }).

%2, 8
#pos(e_243, { assigned(3,1), assigned(1,1), assigned(2,2), assigned(3,2) }, { assigned(3,3), assigned(2,3), assigned(1,2) }).

%2, 2
#pos(e_244, { assigned(2,1), assigned(1,2) }, { assigned(1,1), assigned(3,1), assigned(2,2), assigned(2,3) }).

%1, 4
#pos(e_245, { assigned(2,3), assigned(2,2), assigned(3,2) }, { assigned(3,1), assigned(2,1), assigned(1,3), assigned(1,2) }).

%2, 6
#pos(e_246, { assigned(1,1), assigned(3,1), assigned(3,3), assigned(2,1), assigned(3,2) }, { assigned(2,2), assigned(1,2), assigned(2,3), assigned(1,3) }).

%2, 4
#pos(e_247, { assigned(3,2), assigned(2,1), assigned(3,3) }, { assigned(2,3), assigned(2,2), assigned(3,1) }).

%2, 8
#pos(e_248, { assigned(3,2), assigned(2,2), assigned(1,3), assigned(3,3), assigned(2,3) }, { assigned(1,2), assigned(3,1) }).

%2, 0
#pos(e_249, { assigned(3,3), assigned(3,2), assigned(1,1) }, { assigned(1,2), assigned(2,2), assigned(3,1), assigned(2,3), assigned(2,1) }).

%2, 2
#pos(e_250, { assigned(1,1), assigned(1,2), assigned(3,2) }, { assigned(2,3), assigned(2,2), assigned(2,1), assigned(3,1) }).

%2, 10
#pos(e_251, { assigned(2,2), assigned(1,3), assigned(1,2), assigned(2,1), assigned(2,3), assigned(1,1), assigned(3,3) }, { assigned(3,1), assigned(3,2) }).

%2, 4
#pos(e_252, { assigned(3,3), assigned(2,2), assigned(3,2), assigned(1,1), assigned(2,1) }, { assigned(3,1), assigned(1,3), assigned(1,2), assigned(2,3) }).

%0, 4
#pos(e_253, { assigned(3,3), assigned(2,2) }, { assigned(3,1), assigned(1,1), assigned(3,2) }).

%3, 2
#pos(e_254, { assigned(3,3), assigned(3,2) }, { assigned(2,2), assigned(2,1), assigned(3,1) }).

%1, 6
#pos(e_255, { assigned(3,3), assigned(1,1), assigned(2,1), assigned(3,1) }, { assigned(1,2), assigned(3,2), assigned(2,2), assigned(1,3) }).

%2, 2
#pos(e_256, { assigned(2,2), assigned(1,2), assigned(1,1), assigned(1,3) }, { assigned(3,1), assigned(2,1), assigned(3,3), assigned(3,2), assigned(2,3) }).

%1, 2
#pos(e_257, { assigned(3,3), assigned(1,1) }, { assigned(1,3), assigned(3,2), assigned(3,1), assigned(2,2) }).

%2, 8
#pos(e_258, { assigned(2,2), assigned(3,2), assigned(1,1), assigned(2,3), assigned(1,2), assigned(2,1) }, { assigned(3,3), assigned(3,1), assigned(1,3) }).

%3, 6
#pos(e_259, { assigned(1,1), assigned(2,2), assigned(1,3), assigned(3,1), assigned(3,2) }, { assigned(1,2), assigned(2,1), assigned(2,3) }).

%1, 6
#pos(e_260, { assigned(1,3), assigned(2,3), assigned(3,1), assigned(3,3) }, { assigned(1,1), assigned(3,2), assigned(1,2), assigned(2,2) }).

%2, 4
#pos(e_261, { assigned(2,2), assigned(1,2), assigned(2,1), assigned(1,3), assigned(1,1) }, { assigned(3,3), assigned(2,3), assigned(3,2), assigned(3,1) }).

%1, 0
#pos(e_262, { assigned(2,3), assigned(1,1), assigned(2,2) }, { assigned(3,3), assigned(2,1), assigned(1,2), assigned(1,3), assigned(3,1), assigned(3,2) }).

%2, 4
#pos(e_263, { assigned(1,3), assigned(1,1), assigned(3,1), assigned(1,2), assigned(3,3) }, { assigned(2,3), assigned(2,1), assigned(3,2), assigned(2,2) }).

%1, 2
#pos(e_264, { assigned(2,1), assigned(1,2), assigned(1,3), assigned(2,3) }, { assigned(2,2), assigned(3,2), assigned(3,3), assigned(1,1) }).

%1, 2
#pos(e_265, { assigned(2,2) }, { assigned(2,3), assigned(3,3), assigned(3,1), assigned(1,3), assigned(1,1) }).

%3, 8
#pos(e_266, { assigned(3,2), assigned(2,2), assigned(3,1), assigned(1,1), assigned(1,3), assigned(1,2) }, { assigned(3,3) }).

%1, 2
#pos(e_267, { assigned(3,3), assigned(3,1), assigned(1,3) }, { assigned(2,1), assigned(3,2), assigned(2,2), assigned(1,1), assigned(1,2), assigned(2,3) }).

%2, 8
#pos(e_268, { assigned(2,3), assigned(1,3), assigned(2,1), assigned(1,2), assigned(3,1) }, { assigned(2,2), assigned(3,2), assigned(3,3) }).

%3, 4
#pos(e_269, { assigned(1,1), assigned(3,1), assigned(2,3), assigned(1,3) }, { assigned(2,2), assigned(1,2), assigned(3,3) }).

%1, 8
#pos(e_270, { assigned(3,1), assigned(3,3), assigned(2,3), assigned(1,3) }, { assigned(2,2), assigned(1,2), assigned(1,1) }).

%1, 0
#pos(e_271, { assigned(2,1), assigned(3,2), assigned(3,3) }, { assigned(1,1), assigned(2,3), assigned(1,3), assigned(2,2), assigned(1,2) }).

%1, 4
#pos(e_272, { assigned(1,3), assigned(1,2), assigned(2,2) }, { assigned(1,1), assigned(2,3), assigned(3,2) }).

%1, 2
#pos(e_273, { assigned(2,2), assigned(3,2) }, { assigned(1,2), assigned(2,3), assigned(3,1), assigned(3,3), assigned(1,1) }).

%2, 2
#pos(e_274, { assigned(2,2) }, { assigned(3,3), assigned(2,1), assigned(1,1), assigned(1,2), assigned(2,3) }).

%3, 8
#pos(e_275, { assigned(1,2), assigned(3,2), assigned(1,1), assigned(2,1) }, { assigned(2,3), assigned(3,3), assigned(3,1) }).

%2, 12
#pos(e_276, { assigned(3,3), assigned(1,2), assigned(2,3) }, { assigned(2,2), assigned(3,2) }).

%1, 0
#pos(e_277, { assigned(3,1), assigned(1,2) }, { assigned(1,1), assigned(2,2), assigned(2,3), assigned(3,2), assigned(3,3), assigned(2,1) }).

%1, 4
#pos(e_278, { assigned(1,2), assigned(2,2), assigned(1,3), assigned(2,3) }, { assigned(3,1), assigned(1,1), assigned(2,1), assigned(3,3), assigned(3,2) }).

%0, 0
#pos(e_279, { assigned(2,1), assigned(2,2) }, { assigned(1,3), assigned(3,1), assigned(3,2), assigned(1,2) }).

%1, 8
#pos(e_280, { assigned(3,3), assigned(3,1), assigned(2,1), assigned(1,3), assigned(2,3) }, { assigned(3,2), assigned(1,2), assigned(1,1), assigned(2,2) }).

%0, 0
#pos(e_281, { assigned(1,2) }, { assigned(2,2), assigned(3,1), assigned(2,3), assigned(2,1) }).

%3, 4
#pos(e_282, { assigned(1,3), assigned(3,2), assigned(1,1), assigned(2,3), assigned(1,2) }, { assigned(2,1), assigned(3,1), assigned(2,2), assigned(3,3) }).

%3, 18
#pos(e_283, { assigned(2,1), assigned(3,1), assigned(1,1), assigned(1,2), assigned(2,2), assigned(2,3), assigned(3,3), assigned(3,2) }, {  }).

%2, 8
#pos(e_284, { assigned(1,1), assigned(2,1), assigned(3,2), assigned(2,2), assigned(2,3), assigned(3,1) }, { assigned(1,2), assigned(1,3), assigned(3,3) }).

%2, 2
#pos(e_285, { assigned(1,1), assigned(2,3), assigned(3,2), assigned(3,3) }, { assigned(3,1), assigned(1,2), assigned(1,3), assigned(2,2), assigned(2,1) }).

%1, 2
#pos(e_286, { assigned(1,3), assigned(2,2), assigned(3,1), assigned(3,3) }, { assigned(1,2), assigned(1,1), assigned(2,3), assigned(2,1), assigned(3,2) }).

%2, 6
#pos(e_287, { assigned(1,3), assigned(1,2), assigned(2,2) }, { assigned(3,1), assigned(1,1) }).

%1, 2
#pos(e_288, { assigned(1,2), assigned(1,3), assigned(2,3), assigned(2,1) }, { assigned(1,1), assigned(3,2), assigned(3,3), assigned(3,1) }).

%1, 4
#pos(e_289, { assigned(2,3), assigned(2,1), assigned(1,1) }, { assigned(3,1), assigned(1,3) }).

%1, 6
#pos(e_290, { assigned(2,1), assigned(1,1), assigned(3,1) }, { assigned(1,3), assigned(3,2), assigned(1,2), assigned(3,3), assigned(2,2), assigned(2,3) }).

%2, 8
#pos(e_291, { assigned(2,2), assigned(2,3), assigned(3,3), assigned(3,2), assigned(1,3) }, { assigned(2,1), assigned(1,2), assigned(1,1), assigned(3,1) }).

%2, 4
#pos(e_292, { assigned(2,1), assigned(3,3), assigned(1,1) }, { assigned(2,2), assigned(1,2) }).

%1, 2
#pos(e_293, { assigned(1,1), assigned(2,2) }, { assigned(1,3), assigned(3,2), assigned(3,3), assigned(3,1) }).

%1, 6
#pos(e_294, { assigned(3,3), assigned(2,3), assigned(1,3) }, { assigned(2,2), assigned(3,1), assigned(1,2) }).

%2, 8
#pos(e_295, { assigned(1,1), assigned(3,3), assigned(1,3) }, { assigned(2,1), assigned(3,2) }).

%0, 0
#pos(e_296, { assigned(2,2) }, { assigned(3,1), assigned(1,1), assigned(2,1), assigned(1,3), assigned(3,2), assigned(1,2) }).

%2, 4
#pos(e_297, { assigned(1,3), assigned(1,1), assigned(2,2), assigned(1,2), assigned(3,1) }, { assigned(3,3), assigned(3,2), assigned(2,1), assigned(2,3) }).

%2, 6
#pos(e_298, { assigned(1,2), assigned(3,3), assigned(1,1), assigned(2,3) }, { assigned(2,1), assigned(3,2), assigned(2,2) }).

%0, 4
#pos(e_299, { assigned(3,3), assigned(2,2), assigned(3,1), assigned(2,1), assigned(1,2) }, { assigned(1,3), assigned(3,2) }).

%1, 2
#pos(e_300, { assigned(1,3), assigned(3,3), assigned(3,1) }, { assigned(2,1), assigned(3,2), assigned(1,1), assigned(2,2), assigned(1,2), assigned(2,3) }).

%0, 2
#pos(e_301, { assigned(2,3), assigned(2,1), assigned(3,1) }, { assigned(3,3), assigned(2,2), assigned(1,2), assigned(1,1), assigned(3,2), assigned(1,3) }).

%2, 10
#pos(e_302, { assigned(3,1), assigned(1,2), assigned(3,2) }, { assigned(2,2), assigned(1,3) }).

%2, 12
#pos(e_303, { assigned(3,3), assigned(1,1), assigned(1,2), assigned(2,3), assigned(2,1), assigned(1,3), assigned(3,1) }, { assigned(2,2), assigned(3,2) }).

%3, 12
#pos(e_304, { assigned(2,3), assigned(3,2), assigned(1,3), assigned(1,2) }, { assigned(3,1) }).

%1, 2
#pos(e_305, { assigned(3,1), assigned(2,1), assigned(2,3) }, { assigned(3,3), assigned(1,2), assigned(2,2), assigned(1,1) }).

%3, 10
#pos(e_306, { assigned(1,2), assigned(1,3), assigned(2,1), assigned(1,1), assigned(3,2), assigned(2,3) }, { assigned(3,3), assigned(2,2) }).

%3, 10
#pos(e_307, { assigned(3,2), assigned(1,2), assigned(2,3), assigned(2,2) }, { assigned(3,3) }).

%1, 2
#pos(e_308, { assigned(1,1), assigned(3,3) }, { assigned(1,2), assigned(2,3), assigned(2,2), assigned(3,2) }).

%1, 2
#pos(e_309, { assigned(3,1), assigned(3,3), assigned(3,2) }, { assigned(1,2), assigned(2,3), assigned(1,3), assigned(1,1) }).

%1, 8
#pos(e_310, { assigned(2,2), assigned(2,3), assigned(3,3), assigned(2,1), assigned(3,1) }, { assigned(3,2), assigned(1,3), assigned(1,2) }).

%0, 2
#pos(e_311, { assigned(3,1), assigned(2,3), assigned(3,3) }, { assigned(1,2), assigned(2,2), assigned(1,3), assigned(3,2), assigned(2,1), assigned(1,1) }).

%1, 0
#pos(e_312, { assigned(1,1), assigned(3,3), assigned(2,2) }, { assigned(1,2), assigned(2,1), assigned(1,3), assigned(2,3) }).

%3, 10
#pos(e_313, { assigned(3,3), assigned(1,3), assigned(2,2), assigned(1,2), assigned(1,1) }, { assigned(2,3), assigned(2,1) }).

%0, 2
#pos(e_314, { assigned(2,1) }, { assigned(1,3), assigned(1,1), assigned(3,1), assigned(3,2), assigned(3,3) }).

%1, 6
#pos(e_315, { assigned(3,1), assigned(2,2), assigned(1,2), assigned(1,3), assigned(3,3), assigned(2,1) }, { assigned(3,2), assigned(2,3) }).

%2, 6
#pos(e_316, { assigned(1,1), assigned(3,3), assigned(1,3), assigned(3,1) }, { assigned(2,1), assigned(2,3) }).

%2, 0
#pos(e_317, { assigned(1,3), assigned(3,2) }, { assigned(3,1), assigned(1,1), assigned(2,3), assigned(2,1), assigned(2,2), assigned(1,2), assigned(3,3) }).

%0, 4
#pos(e_318, { assigned(2,2), assigned(2,3), assigned(3,3), assigned(1,2) }, { assigned(3,2) }).

%1, 2
#pos(e_319, { assigned(1,2), assigned(3,2) }, { assigned(2,3), assigned(2,2), assigned(3,3), assigned(1,1), assigned(2,1) }).

%2, 8
#pos(e_320, { assigned(2,3), assigned(2,1), assigned(3,1), assigned(3,2) }, { assigned(1,1) }).

%2, 4
#pos(e_321, { assigned(3,3), assigned(1,1), assigned(1,2), assigned(3,2) }, { assigned(1,3), assigned(2,3), assigned(2,2), assigned(2,1) }).

%2, 2
#pos(e_322, { assigned(2,3), assigned(3,2), assigned(3,3), assigned(1,1) }, { assigned(1,2), assigned(2,1), assigned(1,3), assigned(3,1), assigned(2,2) }).

%2, 10
#pos(e_323, { assigned(3,1), assigned(2,2), assigned(1,2), assigned(1,3), assigned(2,1), assigned(3,2) }, {  }).

%1, 2
#pos(e_324, { assigned(2,1), assigned(3,1), assigned(1,3) }, { assigned(3,3), assigned(1,2), assigned(2,3), assigned(1,1) }).

%1, 0
#pos(e_325, { assigned(1,3), assigned(2,1), assigned(1,2) }, { assigned(1,1), assigned(3,3), assigned(2,3), assigned(3,1), assigned(3,2) }).

%0, 2
#pos(e_326, { assigned(1,2), assigned(3,1) }, { assigned(1,3), assigned(3,2), assigned(2,2), assigned(3,3), assigned(2,3) }).

%2, 4
#pos(e_327, { assigned(1,3), assigned(2,3), assigned(2,1), assigned(1,1) }, { assigned(3,2), assigned(3,1) }).

%0, 0
#pos(e_328, { assigned(3,1), assigned(2,2) }, { assigned(1,2), assigned(2,3), assigned(1,1), assigned(3,3), assigned(3,2) }).

%0, 4
#pos(e_329, { assigned(3,3), assigned(3,1), assigned(2,1), assigned(2,3) }, { assigned(1,3), assigned(2,2), assigned(1,1), assigned(1,2), assigned(3,2) }).

%2, 6
#pos(e_330, { assigned(2,1), assigned(1,1), assigned(3,3) }, { assigned(1,3), assigned(3,1) }).

%1, 6
#pos(e_331, { assigned(1,3), assigned(2,1), assigned(3,1), assigned(2,2) }, { assigned(3,2), assigned(3,3) }).

%3, 6
#pos(e_332, { assigned(2,2), assigned(3,1), assigned(3,2), assigned(3,3), assigned(1,1), assigned(1,3) }, { assigned(2,3), assigned(1,2), assigned(2,1) }).

%1, 8
#pos(e_333, { assigned(2,2), assigned(3,3), assigned(2,1), assigned(2,3), assigned(1,1) }, { assigned(3,2), assigned(1,2), assigned(1,3) }).

%2, 2
#pos(e_334, { assigned(2,2) }, { assigned(3,3), assigned(2,1), assigned(1,2), assigned(2,3) }).

%1, 4
#pos(e_335, { assigned(3,1), assigned(3,2), assigned(2,1), assigned(2,2) }, { assigned(1,3), assigned(2,3), assigned(1,1), assigned(3,3) }).

%2, 4
#pos(e_336, { assigned(2,2), assigned(2,3), assigned(3,3) }, { assigned(1,2), assigned(3,1), assigned(2,1) }).

%1, 0
#pos(e_337, { assigned(2,1), assigned(1,3) }, { assigned(3,1), assigned(1,2), assigned(1,1), assigned(2,3), assigned(2,2) }).

%1, 2
#pos(e_338, { assigned(3,1), assigned(1,1), assigned(1,2), assigned(2,3) }, { assigned(3,3), assigned(2,2), assigned(1,3) }).

%2, 6
#pos(e_339, { assigned(2,2), assigned(1,2), assigned(2,3), assigned(1,3), assigned(2,1) }, { assigned(3,2), assigned(3,1) }).

%3, 8
#pos(e_340, { assigned(2,2), assigned(1,3), assigned(2,1), assigned(1,1), assigned(3,2) }, { assigned(2,3), assigned(3,3), assigned(3,1) }).

%1, 2
#pos(e_341, { assigned(3,2), assigned(2,1), assigned(3,1) }, { assigned(1,3), assigned(3,3), assigned(1,2), assigned(2,3) }).

%2, 14
#pos(e_342, { assigned(2,2), assigned(2,1), assigned(1,3), assigned(1,1), assigned(2,3), assigned(3,3), assigned(1,2) }, { assigned(3,2) }).

%2, 6
#pos(e_343, { assigned(3,2) }, { assigned(1,3), assigned(2,2), assigned(1,2), assigned(3,3) }).

%1, 4
#pos(e_344, { assigned(1,1), assigned(2,2) }, { assigned(3,2), assigned(2,3), assigned(3,3) }).

%1, 6
#pos(e_345, { assigned(2,2), assigned(1,3), assigned(2,3), assigned(3,3) }, { assigned(3,2), assigned(3,1), assigned(1,2), assigned(2,1) }).

%2, 2
#pos(e_346, { assigned(3,2), assigned(1,2), assigned(3,3), assigned(1,1) }, { assigned(1,3), assigned(2,2) }).

%1, 2
#pos(e_347, { assigned(1,1), assigned(3,3), assigned(3,1) }, { assigned(2,3), assigned(1,3), assigned(2,2), assigned(3,2), assigned(1,2), assigned(2,1) }).

%2, 6
#pos(e_348, { assigned(3,2), assigned(2,1) }, { assigned(3,3), assigned(1,3), assigned(1,2), assigned(2,3), assigned(2,2) }).

%2, 10
#pos(e_349, { assigned(3,1), assigned(1,2), assigned(3,3), assigned(3,2), assigned(2,2), assigned(1,1) }, { assigned(1,3), assigned(2,1) }).

%1, 2
#pos(e_350, { assigned(3,2), assigned(2,2), assigned(3,1), assigned(3,3) }, { assigned(2,1), assigned(1,2), assigned(2,3), assigned(1,3), assigned(1,1) }).

%1, 4
#pos(e_351, { assigned(2,2), assigned(2,1), assigned(1,2), assigned(1,3), assigned(3,3) }, { assigned(3,2), assigned(3,1) }).

%3, 4
#pos(e_352, { assigned(3,3), assigned(1,3), assigned(3,2) }, { assigned(2,3), assigned(2,1), assigned(2,2) }).

%2, 4
#pos(e_353, { assigned(2,1), assigned(3,2), assigned(1,2) }, { assigned(3,3), assigned(3,1) }).

%0, 0
#pos(e_354, { assigned(2,1) }, { assigned(3,1), assigned(1,1), assigned(3,3), assigned(3,2), assigned(1,2), assigned(1,3) }).

%2, 2
#pos(e_355, { assigned(3,1) }, { assigned(2,1), assigned(2,3), assigned(1,2), assigned(1,3), assigned(2,2), assigned(3,3) }).

%2, 6
#pos(e_356, { assigned(2,2), assigned(2,1), assigned(3,1), assigned(1,3), assigned(1,1) }, { assigned(3,2), assigned(3,3), assigned(2,3) }).

%0, 2
#pos(e_357, { assigned(1,2), assigned(2,1), assigned(2,3), assigned(3,1) }, { assigned(3,3), assigned(3,2), assigned(1,1), assigned(1,3) }).

%2, 6
#pos(e_358, { assigned(3,1), assigned(2,1), assigned(1,1), assigned(2,3), assigned(3,2) }, { assigned(1,3), assigned(2,2), assigned(3,3), assigned(1,2) }).

%1, 4
#pos(e_359, { assigned(1,2), assigned(1,3), assigned(2,2), assigned(3,1), assigned(2,3) }, { assigned(3,3) }).

%1, 2
#pos(e_360, { assigned(3,3), assigned(2,1) }, { assigned(2,2), assigned(3,1), assigned(2,3) }).

%1, 2
#pos(e_361, { assigned(2,2), assigned(3,2) }, { assigned(1,3), assigned(1,2), assigned(3,3), assigned(2,3), assigned(3,1) }).

%2, 8
#pos(e_362, { assigned(3,3), assigned(1,1), assigned(1,2), assigned(2,1) }, { assigned(3,1) }).

%3, 14
#pos(e_363, { assigned(3,2), assigned(3,1), assigned(3,3), assigned(1,1), assigned(2,3), assigned(2,2) }, { assigned(2,1) }).

%3, 2
#pos(e_364, { assigned(1,2), assigned(1,3), assigned(3,2) }, { assigned(2,1), assigned(3,1) }).

%0, 0
#pos(e_365, { assigned(3,1), assigned(2,3) }, { assigned(1,1), assigned(1,2), assigned(2,1) }).

%1, 10
#pos(e_366, { assigned(2,1), assigned(1,2), assigned(3,1), assigned(3,3), assigned(1,3), assigned(2,3), assigned(2,2) }, { assigned(3,2), assigned(1,1) }).

%2, 8
#pos(e_367, { assigned(2,3), assigned(3,3), assigned(1,1), assigned(3,1) }, { assigned(2,1), assigned(1,2), assigned(3,2) }).

%1, 2
#pos(e_368, { assigned(2,2), assigned(3,2), assigned(3,3) }, { assigned(3,1), assigned(1,2), assigned(1,3), assigned(1,1), assigned(2,3) }).

%1, 0
#pos(e_369, { assigned(2,3), assigned(1,1) }, { assigned(3,1), assigned(3,2), assigned(1,3), assigned(3,3), assigned(2,2), assigned(2,1), assigned(1,2) }).

%1, 2
#pos(e_370, { assigned(1,2), assigned(2,3), assigned(1,3) }, { assigned(3,1), assigned(1,1), assigned(2,2), assigned(3,2), assigned(3,3) }).

%1, 0
#pos(e_371, { assigned(2,1) }, { assigned(3,3), assigned(3,1), assigned(1,1), assigned(2,2) }).

%1, 6
#pos(e_372, { assigned(2,2), assigned(1,3), assigned(2,3) }, { assigned(2,1), assigned(3,2), assigned(1,2) }).

%1, 8
#pos(e_373, { assigned(3,3), assigned(3,1), assigned(2,3), assigned(2,2), assigned(1,3) }, { assigned(1,2), assigned(3,2) }).

%2, 0
#pos(e_374, { assigned(1,2), assigned(1,1) }, { assigned(2,3), assigned(3,1), assigned(3,2), assigned(2,1) }).

%2, 4
#pos(e_375, { assigned(2,1), assigned(2,3) }, { assigned(3,3), assigned(1,1), assigned(3,1) }).

%2, 8
#pos(e_376, { assigned(1,1), assigned(3,3), assigned(3,1), assigned(2,2), assigned(3,2) }, { assigned(1,3) }).

%2, 4
#pos(e_377, { assigned(1,2), assigned(1,3), assigned(3,3), assigned(2,1) }, { assigned(2,2), assigned(3,1) }).

%1, 4
#pos(e_378, { assigned(1,1), assigned(3,1), assigned(1,2), assigned(2,3) }, { assigned(1,3), assigned(3,2), assigned(2,2) }).

%2, 4
#pos(e_379, { assigned(2,2), assigned(3,3), assigned(1,1) }, { assigned(1,3), assigned(2,3), assigned(3,1) }).

%1, 2
#pos(e_380, { assigned(3,3), assigned(2,1), assigned(1,3) }, { assigned(3,2), assigned(2,2) }).

%1, 2
#pos(e_381, { assigned(2,3) }, { assigned(3,3), assigned(3,2), assigned(2,2), assigned(2,1) }).

%1, 6
#pos(e_382, { assigned(3,3), assigned(3,1), assigned(1,1) }, { assigned(2,2), assigned(1,2), assigned(1,3) }).

%3, 4
#pos(e_383, { assigned(1,3), assigned(2,2), assigned(3,2) }, { assigned(1,2), assigned(3,3) }).

%1, 0
#pos(e_384, { assigned(1,1), assigned(1,2), assigned(3,3) }, { assigned(3,2), assigned(2,1), assigned(2,2), assigned(3,1), assigned(2,3), assigned(1,3) }).

%2, 4
#pos(e_385, { assigned(1,3), assigned(3,3), assigned(3,2) }, { assigned(2,2), assigned(1,1) }).

%1, 2
#pos(e_386, {  }, { assigned(3,2), assigned(2,1), assigned(1,1), assigned(2,2), assigned(2,3) }).

%2, 2
#pos(e_387, { assigned(2,2), assigned(3,2), assigned(1,3) }, { assigned(2,3), assigned(3,3), assigned(2,1), assigned(1,2), assigned(1,1), assigned(3,1) }).

%1, 2
#pos(e_388, { assigned(2,2), assigned(2,1), assigned(1,3) }, { assigned(2,3), assigned(3,1), assigned(1,2), assigned(1,1) }).

%1, 8
#pos(e_389, { assigned(2,3), assigned(3,1), assigned(1,3), assigned(2,1) }, { assigned(1,2) }).

%1, 2
#pos(e_390, { assigned(3,2), assigned(1,2), assigned(2,1), assigned(2,3) }, { assigned(3,1), assigned(1,1), assigned(1,3) }).

%3, 4
#pos(e_391, { assigned(1,1), assigned(2,3), assigned(3,2), assigned(1,3) }, { assigned(2,2), assigned(3,3), assigned(1,2) }).

%2, 2
#pos(e_392, { assigned(1,1), assigned(3,2) }, { assigned(1,3), assigned(2,3), assigned(2,2), assigned(3,3), assigned(1,2) }).

%0, 0
#pos(e_393, {  }, { assigned(2,2), assigned(3,3), assigned(1,2), assigned(3,1), assigned(1,3), assigned(3,2) }).

%2, 6
#pos(e_394, { assigned(2,1), assigned(3,3), assigned(1,1), assigned(3,1) }, { assigned(1,2), assigned(1,3), assigned(2,3), assigned(2,2) }).

%1, 2
#pos(e_395, { assigned(1,1) }, { assigned(3,2), assigned(2,1), assigned(1,3), assigned(1,2) }).

%2, 4
#pos(e_396, { assigned(1,3), assigned(1,2), assigned(2,3) }, { assigned(2,1), assigned(3,3), assigned(3,1) }).

%1, 4
#pos(e_397, { assigned(2,2) }, { assigned(2,1), assigned(3,3), assigned(3,1), assigned(1,1) }).

%2, 2
#pos(e_398, { assigned(1,3), assigned(3,1), assigned(1,1) }, { assigned(2,3), assigned(2,1), assigned(3,2), assigned(3,3) }).

%2, 6
#pos(e_399, { assigned(3,1), assigned(3,2), assigned(3,3) }, { assigned(1,3), assigned(2,1) }).

%2, 8
#pos(e_400, { assigned(3,1), assigned(2,3), assigned(1,1), assigned(1,2), assigned(2,1) }, { assigned(2,2), assigned(3,3), assigned(3,2) }).


#modeo(3, assigned(var(day), var(time)), (positive)).
#modeo(1, type(var(day),var(time),const(type)), (positive)).
#modeo(1, neq(var(day),var(day)), (positive, symmetric, anti_reflexive)).
#constant(type, jmc).
#weight(1).
#weight(-1).
#maxv(4).


#brave_ordering(e_1, e_2, <).

#brave_ordering(e_8, e_7, <).

#brave_ordering(e_17, e_18, <).

#brave_ordering(e_20, e_19, <).

#brave_ordering(e_24, e_23, <).

#brave_ordering(e_25, e_26, <).

#brave_ordering(e_27, e_28, <).

#brave_ordering(e_32, e_31, <).

#brave_ordering(e_35, e_36, <).

#brave_ordering(e_37, e_38, <).

#brave_ordering(e_41, e_42, <).

#brave_ordering(e_45, e_46, <).

#brave_ordering(e_48, e_47, <).

#brave_ordering(e_51, e_52, <).

#brave_ordering(e_53, e_54, <).

#brave_ordering(e_63, e_64, <).

#brave_ordering(e_68, e_67, <).

#brave_ordering(e_73, e_74, <).

#brave_ordering(e_78, e_77, <).

#brave_ordering(e_81, e_82, <).

#brave_ordering(e_83, e_84, <).

#brave_ordering(e_86, e_85, <).

#brave_ordering(e_87, e_88, <).

#brave_ordering(e_89, e_90, <).

#brave_ordering(e_96, e_95, <).

#brave_ordering(e_100, e_99, <).

#brave_ordering(e_102, e_101, <).

#brave_ordering(e_104, e_103, <).

#brave_ordering(e_105, e_106, <).

#brave_ordering(e_107, e_108, <).

#brave_ordering(e_110, e_109, <).

#brave_ordering(e_114, e_113, <).

#brave_ordering(e_115, e_116, <).

#brave_ordering(e_127, e_128, <).

#brave_ordering(e_134, e_133, <).

#brave_ordering(e_135, e_136, <).

#brave_ordering(e_142, e_141, <).

#brave_ordering(e_143, e_144, <).

#brave_ordering(e_146, e_145, <).

#brave_ordering(e_147, e_148, <).

#brave_ordering(e_149, e_150, <).

#brave_ordering(e_152, e_151, <).

#brave_ordering(e_158, e_157, <).

#brave_ordering(e_159, e_160, <).

#brave_ordering(e_166, e_165, <).

#brave_ordering(e_169, e_170, <).

#brave_ordering(e_173, e_174, <).

#brave_ordering(e_176, e_175, <).

#brave_ordering(e_181, e_182, <).

#brave_ordering(e_188, e_187, <).

#brave_ordering(e_190, e_189, <).

#brave_ordering(e_192, e_191, <).

#brave_ordering(e_194, e_193, <).

#brave_ordering(e_196, e_195, <).

#brave_ordering(e_198, e_197, <).

#brave_ordering(e_199, e_200, <).

#brave_ordering(e_210, e_209, <).

#brave_ordering(e_212, e_211, <).

#brave_ordering(e_213, e_214, <).

#brave_ordering(e_216, e_215, <).

#brave_ordering(e_221, e_222, <).

#brave_ordering(e_223, e_224, <).

#brave_ordering(e_232, e_231, <).

#brave_ordering(e_234, e_233, <).

#brave_ordering(e_238, e_237, <).

#brave_ordering(e_239, e_240, <).

#brave_ordering(e_244, e_243, <).

#brave_ordering(e_247, e_248, <).

#brave_ordering(e_249, e_250, <).

#brave_ordering(e_253, e_254, <).

#brave_ordering(e_270, e_269, <).

#brave_ordering(e_271, e_272, <).

#brave_ordering(e_273, e_274, <).

#brave_ordering(e_276, e_275, <).

#brave_ordering(e_281, e_282, <).

#brave_ordering(e_288, e_287, <).

#brave_ordering(e_289, e_290, <).

#brave_ordering(e_292, e_291, <).

#brave_ordering(e_297, e_298, <).

#brave_ordering(e_299, e_300, <).

#brave_ordering(e_303, e_304, <).

#brave_ordering(e_308, e_307, <).

#brave_ordering(e_309, e_310, <).

#brave_ordering(e_315, e_316, <).

#brave_ordering(e_318, e_317, <).

#brave_ordering(e_319, e_320, <).

#brave_ordering(e_322, e_321, <).

#brave_ordering(e_326, e_325, <).

#brave_ordering(e_333, e_334, <).

#brave_ordering(e_335, e_336, <).

#brave_ordering(e_337, e_338, <).

#brave_ordering(e_344, e_343, <).

#brave_ordering(e_345, e_346, <).

#brave_ordering(e_347, e_348, <).

#brave_ordering(e_351, e_352, <).

#brave_ordering(e_360, e_359, <).

#brave_ordering(e_361, e_362, <).

#brave_ordering(e_364, e_363, <).

#brave_ordering(e_365, e_366, <).

#brave_ordering(e_371, e_372, <).

#brave_ordering(e_373, e_374, <).

#brave_ordering(e_375, e_376, <).

#brave_ordering(e_378, e_377, <).

#brave_ordering(e_380, e_379, <).

#brave_ordering(e_381, e_382, <).

#brave_ordering(e_388, e_387, <).

#brave_ordering(e_390, e_389, <).

#brave_ordering(e_395, e_396, <).

#brave_ordering(e_397, e_398, <).

#brave_ordering(e_399, e_400, <).


#cautious_ordering(e_4, e_3, <).

#cautious_ordering(e_6, e_5, <).

#cautious_ordering(e_10, e_9, <).

#cautious_ordering(e_12, e_11, <).

#cautious_ordering(e_14, e_13, <).

#cautious_ordering(e_15, e_16, <).

#cautious_ordering(e_22, e_21, <).

#cautious_ordering(e_29, e_30, <).

#cautious_ordering(e_33, e_34, <).

#cautious_ordering(e_40, e_39, <).

#cautious_ordering(e_43, e_44, <).

#cautious_ordering(e_49, e_50, <).

#cautious_ordering(e_55, e_56, <).

#cautious_ordering(e_58, e_57, <).

#cautious_ordering(e_60, e_59, <).

#cautious_ordering(e_62, e_61, <).

#cautious_ordering(e_65, e_66, <).

#cautious_ordering(e_70, e_69, <).

#cautious_ordering(e_72, e_71, <).

#cautious_ordering(e_75, e_76, <).

#cautious_ordering(e_79, e_80, <).

#cautious_ordering(e_92, e_91, <).

#cautious_ordering(e_93, e_94, <).

#cautious_ordering(e_97, e_98, <).

#cautious_ordering(e_111, e_112, <).

#cautious_ordering(e_118, e_117, <).

#cautious_ordering(e_119, e_120, <).

#cautious_ordering(e_121, e_122, <).

#cautious_ordering(e_124, e_123, <).

#cautious_ordering(e_126, e_125, <).

#cautious_ordering(e_129, e_130, <).

#cautious_ordering(e_132, e_131, <).

#cautious_ordering(e_138, e_137, <).

#cautious_ordering(e_139, e_140, <).

#cautious_ordering(e_153, e_154, <).

#cautious_ordering(e_156, e_155, <).

#cautious_ordering(e_161, e_162, <).

#cautious_ordering(e_163, e_164, <).

#cautious_ordering(e_168, e_167, <).

#cautious_ordering(e_171, e_172, <).

#cautious_ordering(e_177, e_178, <).

#cautious_ordering(e_179, e_180, <).

#cautious_ordering(e_183, e_184, <).

#cautious_ordering(e_185, e_186, <).

#cautious_ordering(e_202, e_201, <).

#cautious_ordering(e_204, e_203, <).

#cautious_ordering(e_206, e_205, <).

#cautious_ordering(e_208, e_207, <).

#cautious_ordering(e_218, e_217, <).

#cautious_ordering(e_219, e_220, <).

#cautious_ordering(e_225, e_226, <).

#cautious_ordering(e_227, e_228, <).

#cautious_ordering(e_230, e_229, <).

#cautious_ordering(e_236, e_235, <).

#cautious_ordering(e_241, e_242, <).

#cautious_ordering(e_245, e_246, <).

#cautious_ordering(e_252, e_251, <).

#cautious_ordering(e_255, e_256, <).

#cautious_ordering(e_257, e_258, <).

#cautious_ordering(e_260, e_259, <).

#cautious_ordering(e_262, e_261, <).

#cautious_ordering(e_264, e_263, <).

#cautious_ordering(e_265, e_266, <).

#cautious_ordering(e_267, e_268, <).

#cautious_ordering(e_277, e_278, <).

#cautious_ordering(e_279, e_280, <).

#cautious_ordering(e_284, e_283, <).

#cautious_ordering(e_286, e_285, <).

#cautious_ordering(e_293, e_294, <).

#cautious_ordering(e_296, e_295, <).

#cautious_ordering(e_301, e_302, <).

#cautious_ordering(e_305, e_306, <).

#cautious_ordering(e_311, e_312, <).

#cautious_ordering(e_314, e_313, <).

#cautious_ordering(e_324, e_323, <).

#cautious_ordering(e_328, e_327, <).

#cautious_ordering(e_329, e_330, <).

#cautious_ordering(e_331, e_332, <).

#cautious_ordering(e_339, e_340, <).

#cautious_ordering(e_341, e_342, <).

#cautious_ordering(e_350, e_349, <).

#cautious_ordering(e_354, e_353, <).

#cautious_ordering(e_355, e_356, <).

#cautious_ordering(e_357, e_358, <).

#cautious_ordering(e_368, e_367, <).

#cautious_ordering(e_369, e_370, <).

#cautious_ordering(e_384, e_383, <).

#cautious_ordering(e_386, e_385, <).

#cautious_ordering(e_392, e_391, <).

#cautious_ordering(e_393, e_394, <).

