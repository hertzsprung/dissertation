load 'tf.plt'

set term epslatex color size 2.5,2.5

set ylabel "$z$ (\\si{\\kilo\\meter})" offset 2

plot for [z=0:20] btf(schaerExp(x*1000), z*1000)/1000 notitle lt 1 lc 0
