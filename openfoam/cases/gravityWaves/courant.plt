set term svg size 1024,768
set output 'courant.svg'
set style data lines
set multiplot layout 2,1

set xlabel "t (hours)"
set key outside top

set title "max Co"
plot	'btf/schaerExp/h/courant.dat' using ($1/3600):3 title 'btf/h', \
	'sleve/schaerExp/h/courant.dat' using ($1/3600):3 title 'sleve/h', \
	'snapCol/schaerExp/h/courant.dat' using ($1/3600):3 title 'snapCol/h', \
	'snap/schaerExp/h/courant.dat' using ($1/3600):3 title 'snap/h'

set title "mean Co"
plot	'btf/schaerExp/h/courant.dat' using ($1/3600):2 title 'btf/h', \
	'sleve/schaerExp/h/courant.dat' using ($1/3600):2 title 'sleve/h', \
	'snapCol/schaerExp/h/courant.dat' using ($1/3600):2 title 'snapCol/h', \
	'snap/schaerExp/h/courant.dat' using ($1/3600):2 title 'snap/h'
