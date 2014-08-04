set term epslatex color size 5.5,3.0
set termoption dashed
set style data linespoints

set xrange [287.5:292]
set yrange [0:1200]
set xlabel "$\\theta$ (\\si{\\kelvin})"
set ylabel "$z$ (\\si{\\kilo\\meter})" offset 2
set key at 292,900 right top

plot 'openfoam/cases/wobblyThetaAdvection/btf/schaerExp/cubicUpwindCPCFit/theta.dat' using 2:1 title 'BTF' lt 1 lc 0, \
     'openfoam/cases/wobblyThetaAdvection/snapCol/schaerExp/cubicUpwindCPCFit/theta.dat' using 2:1 title 'SnapCol' lc rgbcolor '#e66101' lt 4
