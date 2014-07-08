load 'tf.plt'

set term epslatex color size 2.5,2.5

unset ytics

plot for [z=0:20] sleve(x*1000, z*1000)/1000 notitle lt 1 lc 0
