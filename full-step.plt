load "step.plt"

plot '-' using 1:2 with filledcurves fs pattern 2 notitle lt -1, \
     'shave-curve.dat' using 1:2 smooth csplines notitle lt -1 lw 2
1 0
2 0
2 1
1 1
1 0

2 0 
3 0
3 1
2 1
2 0

3 0
4 0
4 1
3 1
3 0

3 1
4 1
4 2
3 2
3 1
e
