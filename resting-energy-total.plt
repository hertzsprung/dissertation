set term epslatex color size 3.0,2.4
set termoption dash

set style data lines

set xlabel "$t$ (hours)"
set ylabel "$\\Delta E$ (\\si{\\joule})" offset 2
set xrange [0:5]
set ytics 1e-7
set yrange [-3e-7:2e-7]

plot 'openfoam/cases/resting/btf/schaerExp/h/energy.dat' using ($1/3600):5 title 'BTF' lc 0 lt 1, \
     'openfoam/cases/resting/sleve/schaerExp/h/energy.dat' using ($1/3600):5 title 'SLEVE' lc 0 lt 4, \
     'openfoam/cases/resting/snapCol/schaerExp/h/energy.dat' using ($1/3600):5 title 'SnapCol' lc 0 lt 2
