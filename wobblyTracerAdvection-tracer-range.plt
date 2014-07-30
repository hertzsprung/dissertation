load "tracer-range.plt"

set term epslatex color size 6.0,1.3
set yrange [0.5:3.5]
set ytics ("SnapCol" 1, "BTF" 2, "Analytic" 3)
set lmargin 14.4

plot 'wobblyTracerAdvection-tracer-range.dat' using 1:2:($3-$1):(0) with vectors arrowstyle 1 notitle, \
     '-' using 1:2 with impulse lt 0 lc 0 notitle
1 3.5
