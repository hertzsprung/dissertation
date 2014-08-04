load 'resting-energy.plt'
unset ylabel
set yrange [*:*]

plot 'openfoam/cases/resting/snapCol/schaerExp/h/energy.dat' using ($1/3600):5 title 'SnapCol' lc rgbcolor '#e66101' lt 3
