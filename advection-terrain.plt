a = 25e3
hm = 3e3
lambda = 8e3

schaerCos(x) = abs(x) < a ? hm*cos(pi*x/(2*a))**2 * cos(pi*x/lambda)**2 : 0
