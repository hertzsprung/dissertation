#!/bin/bash -e

# initial conditions
# initial files
rm -rf 0
mkdir 0
cp init_0/Exner_init constant
cp init_0/theta_init constant
cp init_0/Uf 0

# set initial theta profile (using data in constant/environmentalProperties)
setTheta

# set initialisation for H version (based in iterations and tolerance in system/fvSolution)
setExnerBalancedH

# change Exner BC from fixedValue to hydroStaticExner in initial conditions
sed -i 's/fixedValue;/fixedFluxBuoyantExner; gradient uniform 0;/g' 0/Exner

