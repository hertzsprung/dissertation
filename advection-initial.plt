load "advection-terrain.plt"

set term epslatex color size 5.5,2.5
set style data lines

z1 = 4e3
z2 = 5e3
x0 = -50e3
z0 = 9e3
Ax = 25e3
Az = 3e3

u(z) = z >= z2 ? 1 : (z < z1 ? 0 : sin((pi/2) * (z - z1)/(z2 - z1))**2)
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

set lmargin at screen 0.3
set rmargin at screen 0.9
unset ylabel
unset ytics
set xtics autofreq

set xlabel "$x$ (\\si{\\kilo\\meter})"
set xrange [-150:150]
set trange [-25:25]
plot	t,schaerCos(t*1000)/1000 notitle lt 1 lc 0, \
	'openfoam/cases/advection/noOrography/vanLeer/0/contour.dat' using ($1/1000):($2/1000) notitle lt 1 lc 0 with lines

