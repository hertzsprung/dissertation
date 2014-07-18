set xrange [-25e3:25e3]

a=25e3
zt=25e3
hm=3000
lambda=8e3
u0 = 10

h(x) = cos(pi*x/lambda)**2 * hm * cos(pi*x/(2*a))**2
dhdx(x) = - hm * pi * (cos(pi*x/(2*a))**2 * sin(2*pi*x/lambda) / lambda + cos(pi*x/lambda)**2 * sin(pi*x/a) / (2*a))
w(x, z) = zt * dhdx(x) * (z - zt) / (zt-h(x))**2

plot w(x, 5000), w(x, 1000)
