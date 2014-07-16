load "step.plt"

set parametric
plot '-' using 1:2 with filledcurves fs pattern 2 notitle lt -1, \
     'shave-curve.dat' using 1:2 smooth csplines notitle lt -1 lw 2
0 0.2
0.88 1
1 1
1 0
0 0
0.02

1 1
1 1.3
0.88 1
1 1

1 1
1.87 1
1 1.3
1 1

1 0
2 0
2 0.85
1.87 1
1 1
1 0 

2 0 
3 0
3 1
2.56 1
2 0.85
2 0

2.56 1
2.91 2
3    2
3    1
2.56 1

2.91 2
3    2
3    2.2
2.91 2

3 1
4 1
4 1.5
3.74 2
3 2
3 1

3 2
3.74 2
3 2.2
3 2

3 0
4 0
4 1
3 1
3 0


e