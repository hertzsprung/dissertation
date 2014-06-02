#!/bin/bash -e

# plot graphs of energy and maximum vertical velocity
gmtPlot plots/energy.gmt
gmtPlot plots/w.gmt


# plot theta, veloctiy and theta difference at time 18000 based on
# parameters in constant/gmtDicts/theta and constant/gmtDicts/thetaDiff
time=18000
plotPatchData theta -time $time
gv $time/theta.eps &
sumFields $time thetaDiff $time theta 0 theta -scale0 1 -scale1 -1
plotPatchData thetaDiff -time $time
gv $time/thetaDiff.eps &

