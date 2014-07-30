set termoption dashed
set zeroaxis
set xrange [-0.8:1.05]
set yrange [0.5:5.5]
set xtics 0.2
set style arrow 1 heads size screen 0.008,90
set ytics ("Regular grid" 1, "SnapCol" 2, "SLEVE" 3, "BTF" 4, "Analytic" 5)

plot 'advection-tracer-range.dat' using 1:2:($3-$1):(0) with vectors arrowstyle 1 notitle, \
     '-' using 1:2 with impulse lt 0 lc 0 notitle
1 5.5
