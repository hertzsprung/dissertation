set style data lines

set xlabel "t (s)"
set ylabel "w (ms^-1)"
set yrange [-4e-07:4e-07]
set key outside

#plot	'noOrography/energy.dat' using 1:5 title 'noOrography' lt -1, \
#	'btf/schaerExp/energy.dat' using 1:5 title 'btf_h schaerExp' lc 2 lt 1, \
#	'sleve/schaerExp/energy.dat' using 1:5 title 'sleve_h schaerExp' lc 3 lt 1

plot	'btf/schaerExp/energy.dat' using 1:2 title 'KE', \
	'btf/schaerExp/energy.dat' using 1:3 title 'internal', \
	'btf/schaerExp/energy.dat' using 1:4 title 'potential', \
	'btf/schaerExp/energy.dat' using 1:5 title 'total'

#plot	'snap/schaerExp/energy.dat' using 1:5 title 'snappyHexMesh schaerExp' lc 1, \
