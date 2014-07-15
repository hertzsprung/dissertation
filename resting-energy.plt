set term epslatex color size 2.8,2.4
set termoption dash

set style data lines

set lmargin 5
set rmargin 1

set xlabel "$t$ (hours)"
set ylabel "$\\Delta E$ (\\si{\\joule})" offset 2
set xrange [0:5]
set yrange [-3e-7:2e-7]
