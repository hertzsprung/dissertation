set term svg size 1024,768
set output 'energy.svg'
set style data lines
set multiplot layout 2,2

set xlabel "t (hours)"
set key outside top
set yrange [-10e-5:1e-5]

set title 'btf'
plot	'btf/schaerExp/h/energy.dat' using ($1/3600):2 title 'KE', \
	'btf/schaerExp/h/energy.dat' using ($1/3600):3 title 'internal', \
	'btf/schaerExp/h/energy.dat' using ($1/3600):4 title 'potential', \
	'btf/schaerExp/h/energy.dat' using ($1/3600):5 title 'total'

set title 'sleve'
plot	'sleve/schaerExp/h/energy.dat' using ($1/3600):2 title 'KE', \
	'sleve/schaerExp/h/energy.dat' using ($1/3600):3 title 'internal', \
	'sleve/schaerExp/h/energy.dat' using ($1/3600):4 title 'potential', \
	'sleve/schaerExp/h/energy.dat' using ($1/3600):5 title 'total'

set title 'snapCol'
plot	'snapCol/schaerExp/h/energy.dat' using ($1/3600):2 title 'KE', \
	'snapCol/schaerExp/h/energy.dat' using ($1/3600):3 title 'internal', \
	'snapCol/schaerExp/h/energy.dat' using ($1/3600):4 title 'potential', \
	'snapCol/schaerExp/h/energy.dat' using ($1/3600):5 title 'total'

set title 'snap'
plot	'snap/schaerExp/h/energy.dat' using ($1/3600):2 title 'KE', \
	'snap/schaerExp/h/energy.dat' using ($1/3600):3 title 'internal', \
	'snap/schaerExp/h/energy.dat' using ($1/3600):4 title 'potential', \
	'snap/schaerExp/h/energy.dat' using ($1/3600):5 title 'total'
