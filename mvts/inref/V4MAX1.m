V4MAX1 ;IW-YS-TS-KO,V4MAX,MVTS V9.10;15/6/96;MAXIMUM RANGE -1-
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1978-1996
 ;
 W !!,"121---V4MAX1: Maximum range -1-",!
 ;
1 W !,"IV-753  Numeric range ( 10**-25 to 10**25 )"
 S ^ABSN="40753",^ITEM="IV-753  Numeric range ( 10**-25 to 10**25 )"
 S ^NEXT="2^V4MAX1,V4MAX2^V4MAX,V4SSUB^VV4" D ^V4PRESET
 S ^VCOMP=""
 S A=-1E25,B=1E-25,C=999999999999999E-25,D=.999999999999999E25
 S A1="-1E25",B1="1E-25",C1="999999999999999E-25",D1=".999999999999999E25"
 S ^VCOMP=A_" "_-B_" "_C_" "_D_" "_(A-A1)_(B-B1)_(C1-C)_(D-D1)
 S ^VCORR="-10000000000000000000000000 -.0000000000000000000000001 .0000000000999999999999999 9999999999999990000000000 0000" D ^VEXAMINE
 ;
2 W !,"IV-754  Significant digit up to 15 digits"
 S ^ABSN="40754",^ITEM="IV-754  Local data"
 S ^NEXT="3^V4MAX1,V4MAX2^V4MAX,V4SSUB^VV4" D ^V4PRESET
 S ^VCOMP=""
 S A=-.999999999999999E25,A1="-.999999999999999E25",B=-999999999999999E-25,C=999999999999999E-25,D=+".999999999999999E25"
 S ^VCOMP=A_" "_B_" "_C_" "_D_" "_+A1_" "_(A1+.899999999999998E25)
 S ^VCORR="-9999999999999990000000000 -.0000000000999999999999999 .0000000000999999999999999 9999999999999990000000000 -9999999999999990000000000 -1000000000000010000000000" D ^VEXAMINE
 ;
3 S ^ABSN="40755",^ITEM="IV-755  Global data"
 S ^NEXT="V4MAX2^V4MAX,V4SSUB^VV4" D ^V4PRESET
 S ^VCOMP=""
 S ^V1=-.999999999999999E25,^V1(1)=-999999999999999E-25,^V1(2)=999999999999999E-25,^V1(3)=+".999999999999999E25",^V1(4)="-.999999999999999E25"
 S ^VCOMP=^V1_" "_^V1(1)_" "_^V1(2)_" "_^V1(3)_" "_+^V1(4)
 S ^VCORR="-9999999999999990000000000 -.0000000000999999999999999 .0000000000999999999999999 9999999999999990000000000 -9999999999999990000000000" D ^VEXAMINE
 k ^V1
 ;
END W !!,"End of 121 --- V4MAX1",!
 K  K ^V1 Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
