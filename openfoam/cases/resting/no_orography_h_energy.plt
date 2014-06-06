set style data lines

set xlabel "t (s)"
set ylabel "w (ms^-1)"
set yrange [-4e-07:4e-07]
set key outside

plot	'noOrography/h/energy.dat' using 1:2 title 'KE', \
	'noOrography/h/energy.dat' using 1:3 title 'internal', \
	'noOrography/h/energy.dat' using 1:4 title 'potential', \
	'noOrography/h/energy.dat' using 1:5 title 'total'
