set style data lines

set xlabel "t (s)"
set ylabel "w (ms^-1)"
set logscale y
set key outside

plot	'snap/schaerExp/energy.dat' using 1:6 title 'snappyHexMesh schaerExp', \
	'noOrography/h/energy.dat' using 1:6 title 'noOrography h', \
	'noOrography/dpdx/energy.dat' using 1:6 title 'noOrography dpdx', \
	'btf/schaerExp/h/energy.dat' using 1:6 title 'btf_h schaerExp', \
	'btf/schaerExp/dpdx/energy.dat' using 1:6 title 'btf_dpdx schaerExp', \
	'sleve/schaerExp/energy.dat' using 1:6 title 'sleve_h schaerExp'
