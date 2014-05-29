MAKEFLAGS += --no-builtin-rules
.DELETE_ON_ERROR:
.SUFFIXES:

include build/Makefile-latex
include build/Makefile-executables
include build/Makefile-mesh
include build/Makefile-mesh-noOrography
include build/Makefile-mesh-2dMountain
include build/Makefile-mesh-snap
include build/Makefile-advection

.PHONY: all clean

all: \
  all-latex \
  advection-noOrography \
  advection-btf-schaerCos-vanLeer \
  mesh-snap-schaerCos

clean: \
  clean-latex \
  clean-advection-noOrography \
  clean-advection-btf-schaerCos-vanLeer \
  clean-mesh-noOrography \
  clean-mesh-btf-schaerCos \
  clean-mesh-snap-schaerCos

