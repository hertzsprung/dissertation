set style data lines

set xlabel "t (s)"
set ylabel "w (ms^-1)"
set key outside

plot	'snap/schaerExp/h/energy.dat' using 1:2 title 'KE', \
	'snap/schaerExp/h/energy.dat' using 1:3 title 'internal', \
	'snap/schaerExp/h/energy.dat' using 1:4 title 'potential', \
	'snap/schaerExp/h/energy.dat' using 1:5 title 'total'
