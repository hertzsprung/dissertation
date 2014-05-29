MAKEFLAGS += --no-builtin-rules
.DEFAULT_GOAL := all
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

all:: all-latex

clean:: clean-latex

