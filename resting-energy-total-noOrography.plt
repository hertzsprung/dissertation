load 'resting-energy.plt'
unset ylabel
set yrange [*:*]
set ytics 1e-13
set key at 5,8.5e-14 top right

plot 'openfoam/cases/resting/noOrography/h/energy.dat' using ($1/3600):5 title 'Regular grid' lc rgbcolor '#ae017e' lt 4
