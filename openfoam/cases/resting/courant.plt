set term wxt size 1024,768
set style data lines
set multiplot layout 2,2

set xlabel "t (s)"
set key outside top

set logscale y
plot	'noOrography/h/courant.dat' using ($1/3600):2 title 'noOrography/h max Co', \
	'btf/schaerExp/h/courant.dat' using ($1/3600):2 title 'btf/h max Co', \
	'sleve/schaerExp/courant.dat' using ($1/3600):2 title 'sleve/h max Co', \
	'snapCol/schaerExp/h/courant.dat' using ($1/3600):2 title 'snapCol/h max Co', \
	'snap/schaerExp/h/courant.dat' using ($1/3600):2 title 'snap/h max Co'

unset logscale
plot	'noOrography/h/courant.dat' using ($1/3600):2 title 'noOrography/h max Co'

plot	'btf/schaerExp/h/courant.dat' using ($1/3600):2 title 'btf/h max Co', \
	'sleve/schaerExp/courant.dat' using ($1/3600):2 title 'sleve/h max Co'
	
plot	'snapCol/schaerExp/h/courant.dat' using ($1/3600):2 title 'snapCol/h max Co', \
	'snap/schaerExp/h/courant.dat' using ($1/3600):2 title 'snap/h max Co'
