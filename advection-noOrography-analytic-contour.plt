set rmargin 1

load "advection-terrain.plt"

set term epslatex color size 2.7,1.8

set style data lines

set xlabel "$x$ (\\si{\\kilo\\meter})"
set xrange [-75:75]
set yrange [0:15]
set xtics 25
set ytics 5
set format y ""

set parametric
set trange [-25:25]
plot	'openfoam/cases/advection/noOrography/vanLeer/0/contour.dat' using ($1/1000):($2/1000) notitle lt 1 lc 0, \
	'openfoam/cases/advection/noOrography/vanLeer/0/contour.dat' using (($1/1000) + 50):($2/1000) notitle lt 1 lc 0, \
	'openfoam/cases/advection/noOrography/vanLeer/0/contour.dat' using (($1/1000) + 100):($2/1000) notitle lt 1 lc 0
