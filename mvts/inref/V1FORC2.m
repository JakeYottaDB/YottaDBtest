V1FORC2 ;IW-YS-TS,V1FORC,MVTS V9.10;15/6/96;FOR COMMAND -3.2-
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1978-1996
 W !!,"145---V1FORC2: FOR command -3.2-",!
373 W !,"I-373  FOR ... FOR ... QUIT ... FOR ... QUIT"
 S ^ABSN="11783",^ITEM="I-373  FOR ... FOR ... QUIT ... FOR ... QUIT",^NEXT="374^V1FORC2,V1IDNM^VV1" D ^V1PRESET
 S ^VCOMP=""
 F I=1:2:5 S ^VCOMP=^VCOMP_"  " F J=I/10:1:2 S ^VCOMP=^VCOMP_J_" " Q:I/10'=J  F K=J:0.1:0.7 S ^VCOMP=^VCOMP_K Q:K>.45  S ^VCOMP=^VCOMP_"-"
 S ^VCORR="  .1 .1-.2-.3-.4-.51.1   .3 .3-.4-.51.3   .5 .51.5 " D ^VEXAMINE
 ;
374 W !,"I-374  FOR ... FOR ... GOTO"
3741 S ^ABSN="11784",^ITEM="I-374.1  A forparameter",^NEXT="3742^V1FORC2,V1IDNM^VV1" D ^V1PRESET
 S VCOMP="" F I=1:1:3 S VCOMP=VCOMP_I_"*" F J=1:1:4 S VCOMP=VCOMP_J_" " I I>1,J>1 G G3741
 S VCOMP=VCOMP_"---"
G3741 S VCOMP=VCOMP_I_" "_J,^VCOMP=VCOMP,^VCORR="1*1 2 3 4 2*1 2 2 2" D ^VEXAMINE
 ;
3742 S ^ABSN="11785",^ITEM="I-374.2  List of forparameter",^NEXT="375^V1FORC2,V1IDNM^VV1" D ^V1PRESET
 S VCOMP=""
 F I="A","B","C" S VCOMP=VCOMP_I_"*" F J="X","Y",1:1:4 S VCOMP=VCOMP_J_" " IF I="B",J="Y" GOTO G3742 S VCOMP=VCOMP_"///"
 S VCOMP=VCOMP_"+++"
G3742 S VCOMP=VCOMP_I_" "_J,^VCOMP=VCOMP,^VCORR="A*X Y 1 2 3 4 B*X Y B Y" D ^VEXAMINE
 ;
375 W !,"I-375  FOR ... GOTO ... FOR"
 S ^ABSN="11786",^ITEM="I-375  FOR ... GOTO ... FOR",^NEXT="376^V1FORC2,V1IDNM^VV1" D ^V1PRESET
 S VCOMP=""
 F I=1:2:8,"A" S VCOMP=VCOMP_I_" " GOTO:I=5 G375 F K=2:2:7 S VCOMP=VCOMP_K_" "
 S VCOMP=VCOMP_"###"
G375 S VCOMP=VCOMP_I_K S ^VCOMP=VCOMP,^VCORR="1 2 4 6 3 2 4 6 5 56" D ^VEXAMINE
 ;
 G 376
G376 S VCOMP=VCOMP_I_J_K,^VCOMP=VCOMP,^VCORR=" 111.112. 121.122. 211.211" G G3761
376 W !,"I-376  FOR ... FOR ... FOR ... GOTO"
 S ^ABSN="11787",^ITEM="I-376  FOR ... FOR ... FOR ... GOTO",^NEXT="377^V1FORC2,V1IDNM^VV1" D ^V1PRESET
 S VCOMP="" F I=1:1:2 F J=1:1:2 S VCOMP=VCOMP_" " F K=1:1:2 S VCOMP=VCOMP_I_J_K_"." I I=2 G G376
 S VCOMP=VCOMP_"$$$"
G3761 D ^VEXAMINE
 ;
377 W !,"I-377  FOR ... GOTO ... QUIT"
 S ^ABSN="11788",^ITEM="I-377  FOR ... GOTO ... QUIT",^NEXT="378^V1FORC2,V1IDNM^VV1" D ^V1PRESET
 S ^VCOMP="",X=0
G3771 S X=100+X F I=X:5 S ^VCOMP=^VCOMP_I_" " G:X=100 G3771^V1FORC2 Q
 S ^VCOMP=^VCOMP_I S ^VCORR="100 200 200" D ^VEXAMINE
 ;
378 W !,"I-378  FOR ... QUIT ... FOR ... GOTO"
 S ^ABSN="11789",^ITEM="I-378  FOR ... QUIT ... FOR ... GOTO",^NEXT="379^V1FORC2,V1IDNM^VV1" D ^V1PRESET
 S ^VCOMP="",X=0
G3781 S X=X+1 F I=1:2 S ^VCOMP=^VCOMP_"  "_I Q:X=3  F J=2:2:4 S ^VCOMP=^VCOMP_J_" " G G3781^V1FORC2
 S ^VCOMP=^VCOMP_I_J S ^VCORR="  12   12   112" D ^VEXAMINE
 ;
379 W !,"I-379  FOR ... FOR ... QUIT ... GOTO"
 S ^ABSN="11790",^ITEM="I-379  FOR ... FOR ... QUIT ... GOTO",^NEXT="V1IDNM^VV1" D ^V1PRESET
 S ^VCOMP="",X=0
G379 S X=X+1
 F I=1:1:3 S ^VCOMP=^VCOMP_"*" F J=10:10:30 S ^VCOMP=^VCOMP_I_J_" " Q:I=2  G G379:X=1
 S ^VCOMP=^VCOMP_I_J S ^VCORR="*110 *110 120 130 *210 *310 320 330 330" D ^VEXAMINE
 ;
END W !!,"End of 145---V1FORC2",!
 K  Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
