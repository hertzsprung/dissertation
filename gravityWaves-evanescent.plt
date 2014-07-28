set term epslatex color size 2.8,2.5
set termoption dashed

A=0.3
k=1
m=1
w(x,z)=A*exp(-m*z)*cos(k*x)

set xrange[-5:5]
set yrange[-1:9]
unset xlabel
unset ylabel
unset xtics
unset ytics
set key off

plot A*cos(k*x) with filledcurves above y1=-1 lt 0, \
   for [z=0:8] w(x,z)+z lt 1 lc 0, \
   '-' with impulse lc 0 lt 2 lw 2
0 9

