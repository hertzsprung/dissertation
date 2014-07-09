load "advection-terrain.plt"

set style data lines

set xrange [-75:75]
set yrange [0:15]
set xtics 25
set ytics 5

set parametric
set trange [-25:25]
plot	t,schaerCos(t*1000)/1000 notitle lt 1 lc 0, \
\
	'openfoam/cases/advection/btf/schaerCos/tvdLimitedCubicUpwindCPCFit/0/0.1.dat' using ($1/1000):($2/1000) notitle lt 1 lc 0, \
	'openfoam/cases/advection/btf/schaerCos/tvdLimitedCubicUpwindCPCFit/0/0.2.dat' using ($1/1000):($2/1000) notitle lt 1 lc 0, \
	'openfoam/cases/advection/btf/schaerCos/tvdLimitedCubicUpwindCPCFit/0/0.3.dat' using ($1/1000):($2/1000) notitle lt 1 lc 0, \
	'openfoam/cases/advection/btf/schaerCos/tvdLimitedCubicUpwindCPCFit/0/0.4.dat' using ($1/1000):($2/1000) notitle lt 1 lc 0, \
	'openfoam/cases/advection/btf/schaerCos/tvdLimitedCubicUpwindCPCFit/0/0.5.dat' using ($1/1000):($2/1000) notitle lt 1 lc 0, \
	'openfoam/cases/advection/btf/schaerCos/tvdLimitedCubicUpwindCPCFit/0/0.6.dat' using ($1/1000):($2/1000) notitle lt 1 lc 0, \
	'openfoam/cases/advection/btf/schaerCos/tvdLimitedCubicUpwindCPCFit/0/0.7.dat' using ($1/1000):($2/1000) notitle lt 1 lc 0, \
	'openfoam/cases/advection/btf/schaerCos/tvdLimitedCubicUpwindCPCFit/0/0.8.dat' using ($1/1000):($2/1000) notitle lt 1 lc 0, \
	'openfoam/cases/advection/btf/schaerCos/tvdLimitedCubicUpwindCPCFit/0/0.9.dat' using ($1/1000):($2/1000) notitle lt 1 lc 0, \
	'openfoam/cases/advection/btf/schaerCos/tvdLimitedCubicUpwindCPCFit/0/0.9.dat' using ($1/1000):($2/1000) notitle lt 1 lc 0, \
\
	'openfoam/cases/advection/btf/schaerCos/tvdLimitedCubicUpwindCPCFit/5000/0.1.dat' using ($1/1000):($2/1000) notitle lt 1 lc 0, \
	'openfoam/cases/advection/btf/schaerCos/tvdLimitedCubicUpwindCPCFit/5000/0.2.dat' using ($1/1000):($2/1000) notitle lt 1 lc 0, \
	'openfoam/cases/advection/btf/schaerCos/tvdLimitedCubicUpwindCPCFit/5000/0.3.dat' using ($1/1000):($2/1000) notitle lt 1 lc 0, \
	'openfoam/cases/advection/btf/schaerCos/tvdLimitedCubicUpwindCPCFit/5000/0.4.dat' using ($1/1000):($2/1000) notitle lt 1 lc 0, \
	'openfoam/cases/advection/btf/schaerCos/tvdLimitedCubicUpwindCPCFit/5000/0.5.dat' using ($1/1000):($2/1000) notitle lt 1 lc 0, \
	'openfoam/cases/advection/btf/schaerCos/tvdLimitedCubicUpwindCPCFit/5000/0.6.dat' using ($1/1000):($2/1000) notitle lt 1 lc 0, \
	'openfoam/cases/advection/btf/schaerCos/tvdLimitedCubicUpwindCPCFit/5000/0.7.dat' using ($1/1000):($2/1000) notitle lt 1 lc 0, \
	'openfoam/cases/advection/btf/schaerCos/tvdLimitedCubicUpwindCPCFit/5000/0.8.dat' using ($1/1000):($2/1000) notitle lt 1 lc 0, \
	'openfoam/cases/advection/btf/schaerCos/tvdLimitedCubicUpwindCPCFit/5000/0.9.dat' using ($1/1000):($2/1000) notitle lt 1 lc 0, \
\
	'openfoam/cases/advection/btf/schaerCos/tvdLimitedCubicUpwindCPCFit/10000/0.1.dat' using ($1/1000):($2/1000) notitle lt 1 lc 0, \
	'openfoam/cases/advection/btf/schaerCos/tvdLimitedCubicUpwindCPCFit/10000/0.2.dat' using ($1/1000):($2/1000) notitle lt 1 lc 0, \
	'openfoam/cases/advection/btf/schaerCos/tvdLimitedCubicUpwindCPCFit/10000/0.3.dat' using ($1/1000):($2/1000) notitle lt 1 lc 0, \
	'openfoam/cases/advection/btf/schaerCos/tvdLimitedCubicUpwindCPCFit/10000/0.4.dat' using ($1/1000):($2/1000) notitle lt 1 lc 0, \
	'openfoam/cases/advection/btf/schaerCos/tvdLimitedCubicUpwindCPCFit/10000/0.5.dat' using ($1/1000):($2/1000) notitle lt 1 lc 0, \
	'openfoam/cases/advection/btf/schaerCos/tvdLimitedCubicUpwindCPCFit/10000/0.6.dat' using ($1/1000):($2/1000) notitle lt 1 lc 0, \
	'openfoam/cases/advection/btf/schaerCos/tvdLimitedCubicUpwindCPCFit/10000/0.7.dat' using ($1/1000):($2/1000) notitle lt 1 lc 0, \
	'openfoam/cases/advection/btf/schaerCos/tvdLimitedCubicUpwindCPCFit/10000/0.8.dat' using ($1/1000):($2/1000) notitle lt 1 lc 0, \
	'openfoam/cases/advection/btf/schaerCos/tvdLimitedCubicUpwindCPCFit/10000/0.9.dat' using ($1/1000):($2/1000) notitle lt 1 lc 0