set term epslatex color size 5,3.2
set termoption dashed
set style data linespoints

set xrange [288:292]
set x2range [0.96:1.0]
set yrange [0:1200]
set xlabel "$\\theta$ (\\si{\\kelvin})"
set x2label "$\\exner$"
set ylabel "$z$ (\\si{\\kilo\\meter})" offset 2
set xtics nomirror
set x2tics
set key at 292,900 right top

plot 'data/gravityWaves-sleve-schaerExp-h-exnerTheta.dat' using 2:1 axes x2y1 title 'SLEVE $\exner$' lt 1 lc rgbcolor '#75c050', \
     'data/gravityWaves-sleve-schaerExp-h-exnerTheta.dat' using 3:1 title 'SLEVE $\theta$' lt 2 lc rgbcolor '#75c050', \
     'data/gravityWaves-snapCol-schaerExp-h-exnerTheta.dat' using 3:1 title 'SnapCol $\theta$' lt 4 lc rgbcolor '#e66101' , \
     'data/gravityWaves-snapCol-schaerExp-doubleHigh-h-exnerTheta.dat' using 3:1 title 'SnapCol $h_0 = \SI{500}{\meter}$ $\theta$' lt 6 lc rgbcolor '#e66101'
