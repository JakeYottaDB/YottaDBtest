V3FN26 ;IW-KO-YS-TS,V3FN2,MVTS V9.10;15/6/96;
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1990-1996
 W !!,"49---V3FN26: $FNUMBER(numexpr,fncodexpr)  -6-"
 W !!,"fncodexpr is a ""-"""
 ;
73 S ^ABSN="30524",^ITEM="III-0524  numexpr=0000"
 S ^NEXT="74^V3FN26,V3FN27^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(0000,"-")
 S ^VCORR="0" D ^VEXAMINE
 ;
74 S ^ABSN="30525",^ITEM="III-0525  numexpr=1"
 S ^NEXT="75^V3FN26,V3FN27^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(1,"-")
 S ^VCORR="1" D ^VEXAMINE
 ;
75 S ^ABSN="30526",^ITEM="III-0526  numexpr=-1"
 S ^NEXT="76^V3FN26,V3FN27^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(-1,"-")
 S ^VCORR="1" D ^VEXAMINE
 ;
76 S ^ABSN="30527",^ITEM="III-0527  numexpr=0020.00000"
 S ^NEXT="77^V3FN26,V3FN27^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(0020.00000,"-")
 S ^VCORR="20" D ^VEXAMINE
 ;
77 S ^ABSN="30528",^ITEM="III-0528  numexpr=-00020.00000"
 S ^NEXT="78^V3FN26,V3FN27^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(-00020.00000,"-")
 S ^VCORR="20" D ^VEXAMINE
 ;
78 S ^ABSN="30529",^ITEM="III-0529  numexpr=31267"
 S ^NEXT="79^V3FN26,V3FN27^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(31267,"-")
 S ^VCORR="31267" D ^VEXAMINE
 ;
79 S ^ABSN="30530",^ITEM="III-0530  numexpr=-31267"
 S ^NEXT="80^V3FN26,V3FN27^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(-31267,"-")
 S ^VCORR="31267" D ^VEXAMINE
 ;
80 S ^ABSN="30531",^ITEM="III-0531  numexpr=000000000000000000000000262999219"
 S ^NEXT="81^V3FN26,V3FN27^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(000000000000000000000000262999219,"-")
 S ^VCORR="262999219" D ^VEXAMINE
 ;
81 S ^ABSN="30532",^ITEM="III-0532  numexpr=-000000000000000000000000262999219"
 S ^NEXT="82^V3FN26,V3FN27^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(-000000000000000000000000262999219,"-")
 S ^VCORR="262999219" D ^VEXAMINE
 ;
82 S ^ABSN="30533",^ITEM="III-0533  numexpr=000.000789200"
 S ^NEXT="83^V3FN26,V3FN27^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(000.000789200,"-")
 S ^VCORR=".0007892" D ^VEXAMINE
 ;
83 S ^ABSN="30534",^ITEM="III-0534  numexpr=-000.000789200"
 S ^NEXT="84^V3FN26,V3FN27^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(-000.000789200,"-")
 S ^VCORR=".0007892" D ^VEXAMINE
 ;
84 S ^ABSN="30535",^ITEM="III-0535  numexpr=00670.00789200"
 S ^NEXT="85^V3FN26,V3FN27^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(00670.00789200,"-")
 S ^VCORR="670.007892" D ^VEXAMINE
 ;
85 S ^ABSN="30536",^ITEM="III-0536  numexpr=-00670.00789200"
 S ^NEXT="86^V3FN26,V3FN27^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(-00670.00789200,"-")
 S ^VCORR="670.007892" D ^VEXAMINE
 ;
86 S ^ABSN="30537",^ITEM="III-0537  numexpr=981000000000"
 S ^NEXT="87^V3FN26,V3FN27^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(981000000000,"-")
 S ^VCORR="981000000000" D ^VEXAMINE
 ;
87 S ^ABSN="30538",^ITEM="III-0538  numexpr=-981000000000"
 S ^NEXT="V3FN27^V3FN2,V3FN3^VV3" D ^V3PRESET
 S ^VCOMP=$FN(-981000000000,"-")
 S ^VCORR="981000000000" D ^VEXAMINE
 ;
END W !!,"End of 49 --- V3FN26",!
 K  Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
