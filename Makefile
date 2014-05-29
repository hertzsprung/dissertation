MAKEFLAGS += --no-builtin-rules
.DELETE_ON_ERROR:
.SUFFIXES:

include build/Makefile-executables
include build/Makefile-latex
include build/Makefile-openfoam
include build/Makefile-mesh
include build/Makefile-mesh-noOrography
include build/Makefile-mesh-2dMountain
include build/Makefile-mesh-snap
include build/Makefile-advection
include build/Makefile-resting

.PHONY: all clean

all: \
  all-latex \
  advection-noOrography-vanLeer \
  advection-noOrography-tvdLimitedCubicUpwindCPCFit \
  advection-btf-schaerCos-vanLeer \
  advection-btf-schaerCos-tvdLimitedCubicUpwindCPCFit \
  advection-snap-schaerCos-vanLeer \
  mesh-snap-schaerCos

clean: \
  clean-latex \
  clean-advection-noOrography-vanLeer \
  clean-advection-noOrography-tvdLimitedCubicUpwindCPCFit \
  clean-advection-btf-schaerCos-vanLeer \
  clean-advection-btf-schaerCos-tvdLimitedCubicUpwindCPCFit \
  clean-advection-snap-schaerCos-vanLeer \
  clean-mesh-noOrography \
  clean-mesh-btf-schaerCos \
  clean-mesh-snap-schaerCos

