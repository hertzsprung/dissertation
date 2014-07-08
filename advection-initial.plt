set term epslatex color size 5,2.5

a = 25e3
hm = 3e3
lambda = 8e3
z1 = 4e3
z2 = 5e3
x0 = -50e3
z0 = 9e3
Ax = 25e3
Az = 3e3

u(z) = z >= z2 ? 1 : (z < z1 ? 0 : sin((pi/2) * (z - z1)/(z2 - z1))**2)
schaerCos(x) = abs(x) < a ? hm*cos(pi*x/(2*a))**2 * cos(pi*x/lambda)**2 : 0

r(x, z) = sqrt(((x - x0)/Ax)**2 + ((z - z0)/Az)**2)
phi(x, z) = r(x, z) <= 1 ? cos(pi * r(x, z)/2) ** 2 : 0

set yrange [0:25]

set multiplot

set lmargin at screen 0.1
set rmargin at screen 0.25
set xrange [0:12]
set xtics 10
set xlabel "$u$ (\\si{\\meter\\per\\second})"
set ylabel "$z$ (\\si{\\kilo\\meter})" offset 2
set parametric
set trange [0:25]
plot u(t*1000)*10,t notitle lt 1 lc 0
unset parametric

set lmargin at screen 0.3
set rmargin at screen 0.9
unset ylabel
unset ytics
set xtics autofreq

set samples 500
set isosamples 500
set xlabel "$x$ (\\si{\\kilo\\meter})"
set xrange [-150:150]
set palette gray negative
set cbrange [0:1]
plot '++' using 1:2:(phi($1*1000,$2*1000)) with image notitle, \
                schaerCos(x*1000)/1000 notitle lt 1 lc 0

