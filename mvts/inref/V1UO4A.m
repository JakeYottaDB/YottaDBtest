V1UO4A ;IW-YS-TS,V1UO,MVTS V9.10;15/6/96;UNARY OPERATOR -10-
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1978-1996
 W !!,"30---V1UO4A: Unary operator -10-"
801 W !!,"I-801  Multiple unary operators"
8011 W !!,"I-801.1  Duplicate unary operators and a numlit"
80111 S ^ABSN="10328",^ITEM="I-801.1.1  ++0",^NEXT="80112^V1UO4A,V1UO4B^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP=++0 S ^VCORR="0" D ^VEXAMINE
80112 S ^ABSN="10329",^ITEM="I-801.1.2  +-0",^NEXT="80113^V1UO4A,V1UO4B^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP=+-0 S ^VCORR="0" D ^VEXAMINE
80113 S ^ABSN="10330",^ITEM="I-801.1.3  +'0",^NEXT="80114^V1UO4A,V1UO4B^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP=+'0 S ^VCORR="1" D ^VEXAMINE
80114 S ^ABSN="10331",^ITEM="I-801.1.4  -+0",^NEXT="80115^V1UO4A,V1UO4B^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP=-+0 S ^VCORR="0" D ^VEXAMINE
80115 S ^ABSN="10332",^ITEM="I-801.1.5  --0",^NEXT="80116^V1UO4A,V1UO4B^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP=--0 S ^VCORR="0" D ^VEXAMINE
80116 S ^ABSN="10333",^ITEM="I-801.1.6  -'0",^NEXT="80117^V1UO4A,V1UO4B^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP=-'0 S ^VCORR="-1" D ^VEXAMINE
80117 S ^ABSN="10334",^ITEM="I-801.1.7  '+0",^NEXT="80118^V1UO4A,V1UO4B^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP='+0 S ^VCORR="1" D ^VEXAMINE
80118 S ^ABSN="10335",^ITEM="I-801.1.8  '-0",^NEXT="80119^V1UO4A,V1UO4B^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP='-0 S ^VCORR="1" D ^VEXAMINE
80119 S ^ABSN="10336",^ITEM="I-801.1.9  ''0",^NEXT="801110^V1UO4A,V1UO4B^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP=''0 S ^VCORR="0" D ^VEXAMINE
 ;
801110 S ^ABSN="10337",^ITEM="I-801.1.10  ++intlit",^NEXT="801111^V1UO4A,V1UO4B^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP=++2 S ^VCORR="2" D ^VEXAMINE
801111 S ^ABSN="10338",^ITEM="I-801.1.11  +-intlit",^NEXT="801112^V1UO4A,V1UO4B^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP=+-2 S ^VCORR="-2" D ^VEXAMINE
801112 S ^ABSN="10339",^ITEM="I-801.1.12  +'intlit",^NEXT="801113^V1UO4A,V1UO4B^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP=+'2 S ^VCORR="0" D ^VEXAMINE
801113 S ^ABSN="10340",^ITEM="I-801.1.13  -+intlit",^NEXT="801114^V1UO4A,V1UO4B^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP=-+2 S ^VCORR="-2" D ^VEXAMINE
801114 S ^ABSN="10341",^ITEM="I-801.1.14  --intlit",^NEXT="801115^V1UO4A,V1UO4B^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP=--2 S ^VCORR="2" D ^VEXAMINE
801115 S ^ABSN="10342",^ITEM="I-801.1.15  -'intlit",^NEXT="801116^V1UO4A,V1UO4B^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP=-'2 S ^VCORR="0" D ^VEXAMINE
801116 S ^ABSN="10343",^ITEM="I-801.1.16  '+intlit",^NEXT="801117^V1UO4A,V1UO4B^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP='+2 S ^VCORR="0" D ^VEXAMINE
801117 S ^ABSN="10344",^ITEM="I-801.1.17  '-intlit",^NEXT="801118^V1UO4A,V1UO4B^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP='-2 S ^VCORR="0" D ^VEXAMINE
801118 S ^ABSN="10345",^ITEM="I-801.1.18  ''intlit",^NEXT="V1UO4B^V1UO,V1BOA^VV1" D ^V1PRESET
 S ^VCOMP=''2 S ^VCORR="1" D ^VEXAMINE
 ;
END W !!,"End of 30---V1UO4A",!
 K  Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
