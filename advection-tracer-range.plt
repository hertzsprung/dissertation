load "tracer-range.plt"
set term epslatex color size 6.0,2.0
set yrange [0.5:5.5]
set ytics ("Regular grid" 1, "SnapCol" 2, "SLEVE" 3, "BTF" 4, "Analytic" 5)

plot 'advection-tracer-range.dat' using 1:2:($3-$1):(0) with vectors arrowstyle 1 notitle, \
     '-' using 1:2 with impulse lt 0 lc 0 notitle
1 5.5
