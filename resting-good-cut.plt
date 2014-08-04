set term epslatex color size 2.6,2.2
load "step.plt"

set style line 2 lc rgb 'black' pt 7 

set parametric

set arrow from 2.12,0.94 to 1.96,0.95 heads front

plot '-' using 1:2 with filledcurves fillcolor rgbcolor '#999999' notitle, \
     '-' using 1:2 with points ls 2 notitle
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
0.25 0.75
1.96 0.95
2.12 0.94
0.48 1.52
1.55 1.53
2.35 1.5
3.93 1.85
0.5 2.5
1.5 2.5
2.5 2.5
3.55 2.55
e
