set termoption dashed
set style data lines

set xrange [288:292]
set x2range [0.96:1.0]
set yrange [0:1000]
set xlabel "$\\theta$ \\si{\\kelvin}"
set x2label "$\\exner$"
set ylabel "$z$ \\si{\\kilo\\meter}"
set xtics nomirror
set x2tics

plot 'data/gravityWaves-btf-schaerExp-h-exnerTheta.dat' using 2:1 axes x2y1 title 'btf-h exner' lt 1 lc 1, \
     '' using 3:1 title 'btf-h theta' lt 1 lc 2, \
     'data/gravityWaves-snapCol-schaerExp-h-exnerTheta.dat' using 2:1 axes x2y1 title 'snapCol-h exner' lt 2 lc 1, \
     '' using 3:1 title 'snapCol-h theta' lt 2 lc 2
