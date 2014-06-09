set termoption dashed
set style data lines

set xlabel "t (s)"
set ylabel "w (ms^-1)"
set logscale y
set key outside

plot	'snap/schaerExp/h/energy.dat' using 1:6 title 'snappyHexMesh h schaerExp' lt 1 lc 1, \
	'snap/schaerExp/dpdx/energy.dat' using 1:6 title 'snappyHexMesh dpdx schaerExp' lt 2 lc 1, \
	'noOrography/h/energy.dat' using 1:6 title 'noOrography h' lt 1 lc 2, \
	'noOrography/dpdx/energy.dat' using 1:6 title 'noOrography dpdx' lt 2 lc 2, \
	'btf/schaerExp/h/energy.dat' using 1:6 title 'btf_h schaerExp' lt 1 lc 3, \
	'btf/schaerExp/dpdx/energy.dat' using 1:6 title 'btf_dpdx schaerExp' lt 2 lc 3, \
	'sleve/schaerExp/energy.dat' using 1:6 title 'sleve_h schaerExp' lt 1 lc 4
