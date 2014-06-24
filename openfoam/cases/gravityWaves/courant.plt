set term svg
set output 'courant.svg'
set style data lines

set xlabel "t (s)"
set key outside top

plot	'btf/schaerExp/h/courant.dat' using ($1/3600):2 title 'btf/h max Co', \
	'snapCol/schaerExp/h/courant.dat' using ($1/3600):2 title 'snapCol/h max Co', \
	'snap/schaerExp/h/courant.dat' using ($1/3600):2 title 'snap/h max Co'
