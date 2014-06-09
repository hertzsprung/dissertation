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
include build/Makefile-mesh-snapCol
include build/Makefile-testcase
include build/Makefile-physical-testcase
include build/Makefile-advection
include build/Makefile-resting
include build/Makefile-gravityWaves

.PHONY: all clean

all:: all-latex

clean:: clean-latex

