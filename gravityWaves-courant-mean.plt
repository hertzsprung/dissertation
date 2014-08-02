set term epslatex size 2.8,2.4
set style data lines
set key inside bottom right

set rmargin 2

set xlabel "$t$ (hours)"
set ylabel "$\\mathrm{\\overline{Co}}$" offset 2
set xtics 1

plot	'data/gravityWaves-btf-schaerExp-h/courant.dat' using ($1/3600):2 title 'BTF' lt 1, \
	'data/gravityWaves-sleve-schaerExp-h/courant.dat' using ($1/3600):2 title 'SLEVE' lt 2 lc rgbcolor '#75c050', \
	'data/gravityWaves-snapCol-schaerExp-h/courant.dat' using ($1/3600):2 title 'SnapCol' lt 3 lc rgbcolor '#e66101'

