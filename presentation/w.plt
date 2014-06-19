set terminal svg size 1600,1200 fsize 28 linewidth 3
set output 'w.svg'
set style data lines

set xlabel "t (hours)"
set ylabel "w (ms^-1)"
set logscale y
set key outside above

plot	'noOrography/h/energy.dat' using ($1/3600):6 title 'No orography', \
	'btf/schaerExp/h/energy.dat' using ($1/3600):6 title 'Basic terrain following', \
	'sleve/schaerExp/energy.dat' using ($1/3600):6 title 'SLEVE terrain following', \
	'snapCol/schaerExp/h/energy.dat' using ($1/3600):6 title 'Cut cell style'
