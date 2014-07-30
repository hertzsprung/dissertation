set rmargin 1

load "advection-terrain.plt"

set term epslatex color size 3,1.8
set termoption dashed

set style data lines

set xlabel "$x$ (\\si{\\kilo\\meter})"
set ylabel "$z$ (\\si{\\kilo\\meter})" offset 2
set xrange [-75:75]
set yrange [0:15]
set xtics 25
set ytics 5

set parametric
set trange [-25:25]
plot	t,schaerCos(t*1000)/1000 notitle lt 1 lc 0, \
\
	'openfoam/cases/advection/btf/schaerCos/cubicUpwindCPCFit/0/contour.dat' using ($1/1000):($2/1000) notitle lt 1 lc 0, \
	'openfoam/cases/advection/btf/schaerCos/cubicUpwindCPCFit/5000/contour.dat' using ($1/1000):($2/1000) notitle lt 1 lc 0, \
	'openfoam/cases/advection/btf/schaerCos/cubicUpwindCPCFit/10000/contour.dat' using ($1/1000):($2/1000) notitle lt 1 lc 0, \
	'data/advection-btf-schaerCos-cubicUpwindCPCFit/10000/negative-contours.dat' using ($1/1000):($2/1000) notitle lt 3 lc rgbcolor '#ff0000'
