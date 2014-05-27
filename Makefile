.PHONY: all clean

all: all-latex advection-noOrography

clean: clean-latex clean-advection-noOrography clean-mesh-noOrography

include build/Makefile-latex
include build/Makefile-mesh-noOrography
include build/Makefile-advection-noOrography
