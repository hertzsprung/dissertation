set termoption dashed
set style data lines

set xlabel "t (s)"
set ylabel "w (ms^-1)"
set logscale y
set key outside

plot	'snap/schaerExp/energy.dat' using 1:6 title 'snappyHexMesh schaerExp' lc 1, \
	'noOrography/h/energy.dat' using 1:6 title 'noOrography' lt -1, \
	'btf/schaerExp/energy.dat' using 1:6 title 'btf_h schaerExp' lc 2 lt 1, \
	'sleve/schaerExp/energy.dat' using 1:6 title 'sleve_h schaerExp' lc 3 lt 1
