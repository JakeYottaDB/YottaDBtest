! Test sub-ranges where ending point is identical but greater starting point (10) is lexically before smaller starting point (3)
add -name x(10:20)  -region=BREG
add -name x(3:20)   -region=BREG
exit
add -region BREG -dyn=BREG -stdnullcoll
add -segment BREG -file=BREG.dat
change -region DEFAULT -stdnullcoll
show -name
show -map
