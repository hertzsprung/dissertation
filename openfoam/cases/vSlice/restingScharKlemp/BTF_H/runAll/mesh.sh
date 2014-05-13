#!/bin/bash -e

# mesh generation
# create initial block mesh based on data in constant/polyMesh/blockMeshDict
blockMesh
# add a mountain range based on data in constant/add2dMountainDict
#add2dMountain
# plot the mesh based on parameters in constant/gmtDicts/mesh
#plotPatchData mesh
#gv constant/mesh.eps &

