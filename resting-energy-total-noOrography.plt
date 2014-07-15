load 'resting-energy.plt'
unset ylabel
set yrange [*:*]
set ytics 1e-13

plot 'openfoam/cases/resting/noOrography/h/energy.dat' using ($1/3600):5 title 'Regular grid' lc 0 lt 3
