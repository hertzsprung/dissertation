set style data lines
set yrange [0:30000]
set x2label "exner"
set x2tics

plot 'data/gravityWaves-btf-schaerExp-h-exnerTheta.dat' using 2:1 axes x2y1 title 'exner', \
     '' using 3:1 title 'theta'
