set term epslatex color size 5,2.8
set termoption dashed
set style data linespoints

set xrange [288:292]
set x2range [0.96:1.0]
set yrange [0:1000]
set xlabel "$\\theta$ (\\si{\\kelvin})"
set x2label "$\\exner$"
set ylabel "$z$ (\\si{\\kilo\\meter})" offset 2
set xtics nomirror
set x2tics
set key inside right center

plot 'data/gravityWaves-btf-schaerExp-h-exnerTheta.dat' using 2:1 axes x2y1 title 'BTF $\exner$' lt 1 lc 0, \
     'data/gravityWaves-snapCol-schaerExp-h-exnerTheta.dat' using 2:1 axes x2y1 title 'SnapCol $\exner$' lt 3 lc 0, \
     'data/gravityWaves-btf-schaerExp-h-exnerTheta.dat' using 3:1 title 'BTF $\theta$' lt 2 lc 0, \
     'data/gravityWaves-snapCol-schaerExp-h-exnerTheta.dat' using 3:1 title 'SnapCol $\theta$' lt 4 lc 0
