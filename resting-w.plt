set term epslatex color size 3.3,2.4
set termoption dash

set style data lines
set xrange [0:5]
set logscale y
set key at 1.6,1e-5 left box samplen 2
set xlabel "$t$ (hours)" offset 0,0.5
set ylabel "$\\mathrm{max}(w)$ (\\si{\\meter\\per\\second})" offset 3

set bmargin 2.5
set rmargin 1
set tmargin 1

plot 'openfoam/cases/resting/btf/schaerExp/h/energy.dat' using ($1/3600):6 title 'BTF' lc 0 lt 1, \
     'openfoam/cases/resting/sleve/schaerExp/h/energy.dat' using ($1/3600):6 title 'SLEVE' lc rgbcolor '#75c050' lt 2, \
     'openfoam/cases/resting/snapCol/schaerExp/h/energy.dat' using ($1/3600):6 title 'SnapCol' lc rgbcolor '#e66101' lt 3, \
     'openfoam/cases/resting/noOrography/h/energy.dat' using ($1/3600):6 title 'Regular grid' lc rgbcolor '#ae017e' lt 4

