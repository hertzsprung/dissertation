set termoption dashed
set style data lines

set xlabel "t (s)"
set ylabel "w (ms^-1)"
set logscale y
set key outside

plot	'snap/schaerExp/energy.dat' using 1:6 title 'snappyHexMesh schaerExp' lc 1, \
	'noOrography/energy.dat' using 1:6 title 'noOrography' lt -1, \
	'btf/schaerExp/energy.dat' using 1:6 title 'btf_h schaerExp' lc 2 lt 1, \
	'sleve/schaerExp/energy.dat' using 1:6 title 'sleve_h schaerExp' lc 3 lt 1, \
	'snap/schaerCos/energy.dat' using 1:6 title 'snappyHexMesh schaerCos' lc 1 lt 3, \
	'btf/schaerCos/energy.dat' using 1:6 title 'btf_h schaerCos' lc 2 lt 3, \
	'sleve/schaerCos/energy.dat' using 1:6 title 'sleve_h schaerCos' lc 3 lt 3
