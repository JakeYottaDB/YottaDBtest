V4QUITE ;IW-KO-YS-TS,V4QUIT,MVTS V9.10;15/6/96;PART-94
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1994-1996
 ;
F4(X,Y,Z) ;
 NEW W,V
 S W="V(2,3)",V(2,3)="V(""A"")",V("A")="AA"
 Q @@X@(Y,Z)
A1() S B=2
 Q @A(1,B)
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
