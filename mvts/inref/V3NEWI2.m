V3NEWI2 ;IW-KO-YS-TS,V3NEW,MVTS V9.10;15/6/96;
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1990-1996
 W !!,"116---V3NEWI2: NEW -46-"
 ;
100 S ^ABSN="31007",^ITEM="III-1007  @""(A)"""
 S ^NEXT="101^V3NEWI2,V3NEWI3^V3NEW,V3ALDO^VV3" D ^V3PRESET K
 S ^VCOMP=""
 D NEWEXC1,CHECK
 S ^VCORR="000/11 1 1 0 10 1 0 0 aa(2)bc(2)#11 1 0 0 0 0 0 0 aa(2)#"
 D ^VEXAMINE
 ;
101 S ^ABSN="31008",^ITEM="III-1008  @A"
 S ^NEXT="102^V3NEWI2,V3NEWI3^V3NEW,V3ALDO^VV3" D ^V3PRESET K
 S ^VCOMP=""
 S A="(B)",B="B",C="C"
 D NEWEXC2,CHECK
 S ^VCORR="010/11 1 1 0 10 1 0 0 aa(2)bc(2)#1 0 1 0 1 0 0 0 (B)bC#"
 D ^VEXAMINE
 ;
102 S ^ABSN="31009",^ITEM="III-1009  @LVN(1,2,3,4)"
 S ^NEXT="103^V3NEWI2,V3NEWI3^V3NEW,V3ALDO^VV3" D ^V3PRESET K
 S ^VCOMP=""
 S A(2)="A(2)",B(2)="B(2)",C(2)="C(2)",LVN(1,2,3,4)="(C)"
 D NEWEXC3,CHECK
 S ^VCORR="0010/11 1 1 0 10 1 0 0 aa(2)bc(2)#10 1 10 1 10 1 0 0 A(2)B(2)c(2)#"
 D ^VEXAMINE
 ;
103 S ^ABSN="31010",^ITEM="III-1010  @^VV(00,2)"
 S ^NEXT="^V3NEWI3,V3NEWI4^V3NEW,V3ALDO^VV3" D ^V3PRESET K
 S ^VCOMP=""
 S A="A",A(2)="A(2)",B="B",B(2)="B(2)",C="C",C(2)="C(2)",^VV(0,2)="(D)"
 D NEWEXC4,CHECK
 S ^VCORR="000/11 1 1 0 10 1 0 0 aa(2)bc(2)#11 1 11 1 11 1 0 0 AA(2)BB(2)CC(2)#"
 D ^VEXAMINE K ^VV
 ;
END W !!,"End of 116 --- V3NEWI2",!
 K  K ^VV Q
 ;
NEWEXC1 ;
 NEW @"(A)"
 S ^VCOMP=^VCOMP_$D(A)_$D(B)_$D(C)_"/"    ;000/
 S A="a",A(2)="a(2)",B="b",C(2)="c(2)"
 D CHECK Q
 ;
NEWEXC2 ;
 NEW @A
 S ^VCOMP=^VCOMP_$D(A)_$D(B)_$D(C)_"/"    ;010/
 S A="a",A(2)="a(2)",B="b",C(2)="c(2)"
 D CHECK Q
 ;
NEWEXC3 ;
 NEW @LVN(1,2,3,4)
 S ^VCOMP=^VCOMP_$D(A)_$D(B)_$D(C)_"/"    ;0010/
 S A="a",A(2)="a(2)",B="b",C(2)="c(2)"
 D CHECK Q
 ;
NEWEXC4 ;
 NEW @^VV(00,2)
 S ^VCOMP=^VCOMP_$D(A)_$D(B)_$D(C)_"/"    ;000/
 S A="a",A(2)="a(2)",B="b",C(2)="c(2)"
 D CHECK Q
 ;
CHECK ;
 S ^VCOMP=^VCOMP_$D(A)_" "_$D(A(2))_" "
 S ^VCOMP=^VCOMP_$D(B)_" "_$D(B(2))_" "
 S ^VCOMP=^VCOMP_$D(C)_" "_$D(C(2))_" "
 S ^VCOMP=^VCOMP_$D(D)_" "_$D(D(2))_" "
 I $D(A)#10=1    S ^VCOMP=^VCOMP_A
 I $D(A(2))#10=1 S ^VCOMP=^VCOMP_A(2)
 I $D(B)#10=1    S ^VCOMP=^VCOMP_B
 I $D(B(2))#10=1 S ^VCOMP=^VCOMP_B(2)
 I $D(C)#10=1    S ^VCOMP=^VCOMP_C
 I $D(C(2))#10=1 S ^VCOMP=^VCOMP_C(2)
 I $D(D)#10=1    S ^VCOMP=^VCOMP_D
 I $D(D(2))#10=1 S ^VCOMP=^VCOMP_D(2)
 S ^VCOMP=^VCOMP_"#"
 Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
