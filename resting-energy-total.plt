load 'resting-energy.plt'

set ytics 1e-7
set yrange [-3e-7:2e-7]

plot 'openfoam/cases/resting/btf/schaerExp/h/energy.dat' using ($1/3600):5 title 'BTF' lc 0 lt 1, \
     'openfoam/cases/resting/sleve/schaerExp/h/energy.dat' using ($1/3600):5 title 'SLEVE' lc 0 lt 4, \
     'openfoam/cases/resting/snapCol/schaerExp/h/energy.dat' using ($1/3600):5 title 'SnapCol' lc 0 lt 2
