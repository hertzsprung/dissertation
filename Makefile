.PHONY: all clean
.DELETE_ON_ERROR:

all: all-latex advection-noOrography mesh-btfSchaerCos

clean: \
  clean-latex \
  clean-advection-noOrography \
  clean-mesh-noOrography \
  clean-mesh-btfSchaerCos

include build/Makefile-latex
include build/Makefile-mesh
include build/Makefile-mesh-noOrography
include build/Makefile-mesh-2dMountain
include build/Makefile-advection-noOrography
