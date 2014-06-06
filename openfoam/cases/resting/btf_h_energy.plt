set style data lines

set xlabel "t (s)"
set ylabel "w (ms^-1)"
set yrange [-4e-07:4e-07]
set key outside

plot	'btf/schaerExp/energy.dat' using 1:2 title 'KE', \
	'btf/schaerExp/energy.dat' using 1:3 title 'internal', \
	'btf/schaerExp/energy.dat' using 1:4 title 'potential', \
	'btf/schaerExp/energy.dat' using 1:5 title 'total'
