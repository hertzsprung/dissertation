load 'resting-energy.plt'
unset ylabel

set yrange [*:*]

plot 'openfoam/cases/resting/snapCol/schaerExp/h/energy.dat' using ($1/3600):4 title '$E_P$' lc 0 lt 1, \
     '' using ($1/3600):2 title '$E_K$' lc 0 lt 2, \
     '' using ($1/3600):3 title '$E_I$' lc 0 lt 4