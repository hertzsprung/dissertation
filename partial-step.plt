load "step.plt"

plot '-' using 1:2 with filledcurves fillcolor rgbcolor '#999999' notitle, \
     'shave-curve.dat' using 1:2 smooth csplines notitle lt -1 lw 2
0 0
1 0
1 0.3
0 0.3
0 0

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

1 1
2 1
2 1.3
1 1.3
1 1

2 1
3 1
3 1.1
2 1.1
2 1

3 2
4 2
4 2.2
3 2.2
3 2
e
