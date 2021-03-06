V3TR03 ;IW-KO-YS-TS,V3TR,MVTS V9.10;15/6/96;PART-90
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1990-1996
 W !!,"9---V3TR03: $TRANSLATE function -3-"
 W !!,"expr1 is a numlit",!
 ;
1 S ^ABSN="30119",^ITEM="III-119  expr1 is 123456789012"
 S ^NEXT="2^V3TR03,V3TR04^V3TR,V3TEXT^VV3" D ^V3PRESET
 S ^VCOMP=$TR(123456789012,"12")
 S ^VCORR="34567890" D ^VEXAMINE
 ;
2 S ^ABSN="30120",^ITEM="III-120  expr1 is -1.1, expr2 is a period"
 S ^NEXT="3^V3TR03,V3TR04^V3TR,V3TEXT^VV3" D ^V3PRESET
 S ^VCOMP=$TR(-1.1,".")
 S ^VCORR="-11" D ^VEXAMINE
 ;
3 S ^ABSN="30121",^ITEM="III-121  expr1 is -1.1, expr2 is a minus"
 S ^NEXT="4^V3TR03,V3TR04^V3TR,V3TEXT^VV3" D ^V3PRESET
 S ^VCOMP=$tr(-1.1,"-")
 S ^VCORR="1.1" D ^VEXAMINE
 ;
4 S ^ABSN="30122",^ITEM="III-122  expr1 is 1.23E1"
 S ^NEXT="5^V3TR03,V3TR04^V3TR,V3TEXT^VV3" D ^V3PRESET
 S ^VCOMP=$TR(1.23E1,"1")
 S ^VCORR="2.3" D ^VEXAMINE
 ;
5 S ^ABSN="30123",^ITEM="III-123  expr1 is ""1.23E1"""
 S ^NEXT="6^V3TR03,V3TR04^V3TR,V3TEXT^VV3" D ^V3PRESET
 S ^VCOMP=$TR("1.23E1","E")
 S ^VCORR="1.231" D ^VEXAMINE
 ;
 W !!,"III-124  expr1 is a lvn",!
 ;
6 S ^ABSN="30124",^ITEM="III-124  expr1 is a lvn"
 S ^NEXT="7^V3TR03,V3TR04^V3TR,V3TEXT^VV3" D ^V3PRESET
 s a("a","aa")="abcdefghij"
 S ^VCOMP=$TR(a("a","aa"),"a")
 S ^VCORR="bcdefghij" D ^VEXAMINE
 ;
 W !!,"III-125  expr1 is a gvn",!
 ;
7 S ^ABSN="30125",^ITEM="III-125  expr1 is a gvn"
 S ^NEXT="8^V3TR03,V3TR04^V3TR,V3TEXT^VV3" D ^V3PRESET
 k ^VV s ^VV("a","aa")="abcdefghij"
 S ^VCOMP=$TR(^VV("a","aa"),"a")
 S ^VCORR="bcdefghij" D ^VEXAMINE K ^VV
 ;
 W !!,"III-126  expr1 has unary operator",!
 ;
8 S ^ABSN="30126",^ITEM="III-126  expr1 has unary operator"
 S ^NEXT="9^V3TR03,V3TR04^V3TR,V3TEXT^VV3" D ^V3PRESET
 S ^VCOMP=$TR(-+-+-''123,"-")
 S ^VCORR="1" D ^VEXAMINE
 ;
 W !!,"III-127  expr1 has binary operator",!
 ;
9 S ^ABSN="30127",^ITEM="III-127  expr1 has binary operator"
 S ^NEXT="10^V3TR03,V3TR04^V3TR,V3TEXT^VV3" D ^V3PRESET
 S ^VCOMP=$TR(123/10#10\1+1-1*1_121,"1")
 S ^VCORR="22" D ^VEXAMINE
 ;
 W !!,"III-128  expr1 has function",!
 ;
10 S ^ABSN="30128",^ITEM="III-128  expr1 has function"
 S ^NEXT="11^V3TR03,V3TR04^V3TR,V3TEXT^VV3" D ^V3PRESET
 S ^VCOMP=$TR($TR($E($P("ABC,BCD,CDE",","),1,2),"B"),"A")
 S ^VCORR="" D ^VEXAMINE
 ;
 W !!,"III-129  expr1 has indirection",!
 ;
11 S ^ABSN="30129",^ITEM="III-129  expr1 has indirection"
 S ^NEXT="12^V3TR03,V3TR04^V3TR,V3TEXT^VV3" D ^V3PRESET
 k ^VV s ^VV("a","b")="ab",ab="^VV(""a"")",b1="b",b2="b1"
 S ^VCOMP=$TR(@ab@(@b2),"a")
 S ^VCORR="b" D ^VEXAMINE k ^VV
 ;
 W !!,"expr2 is a numlit",!
 ;
12 S ^ABSN="30130",^ITEM="III-130  expr2 is 123456789012"
 S ^NEXT="13^V3TR03,V3TR04^V3TR,V3TEXT^VV3" D ^V3PRESET
 S ^VCOMP=$TR("012A345B",123456789012)
 S ^VCORR="AB" D ^VEXAMINE
 ;
13 S ^ABSN="30131",^ITEM="III-131  expr2 is -0.10"
 S ^NEXT="14^V3TR03,V3TR04^V3TR,V3TEXT^VV3" D ^V3PRESET
 S ^VCOMP=$TR("-012",-0.10)
 S ^VCORR="02" D ^VEXAMINE
 ;
14 S ^ABSN="30132",^ITEM="III-132  expr2 is 1.23E1"
 S ^NEXT="15^V3TR03,V3TR04^V3TR,V3TEXT^VV3" D ^V3PRESET
 S ^VCOMP=$TR("-0123.456E789",1.23E1)
 S ^VCORR="-0456E789" D ^VEXAMINE
 ;
15 S ^ABSN="30133",^ITEM="III-133  expr2 is ""1.23E1"""
 S ^NEXT="V3TR04^V3TR,V3TEXT^VV3" D ^V3PRESET
 S ^VCOMP=$TR("-0123.456E789","1.23E1")
 S ^VCORR="-0456789" D ^VEXAMINE
 ;
END W !!,"End of 9 --- V3TR03",!
 K  k ^VV Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
