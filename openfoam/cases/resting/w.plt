set style data lines

set xlabel "t (s)"
set ylabel "w (ms^-1)"
set logscale y
set key outside

plot	'snap/schaerCos/energy.dat' using 1:6 title 'snappyHexMesh', \
	'noOrography/energy.dat' using 1:6 title 'noOrography', \
	'btf/schaerCos/energy.dat' using 1:6 title 'btf_h'
