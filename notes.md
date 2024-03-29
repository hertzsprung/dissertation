1. What type of grid (also called 'mesh') is "best" over orography?
   - terrain following
   - cut cell (also called 'shaved cell')
   - partial step (Bonaventura)
   - unstructured (Smolarkiewicz & Szmelter 2011)

2. How does the "curl free pressure gradient" model that I describe in Weller and Sharhrokhi compare with other models?

Report
======
- Motivation
- Introduce TF and cut-cell grids
- Introduce Weller&Sharhrokhi model
  - fully-compressible equation set
  - coordinate system vs discretisation (Hilary says amounts to the same in the end)
  - advection scheme
  - dp/dx vs H operator
- Test cases
  - Advection (?)
  - Resting atmosphere
  - Gravity waves

  - noOrography (meaningless for gravity waves test?)
  - BTF, HTF, SLEVE
  - one or more snappy meshes

  - why choose these test cases?
  - what features are they designed to test?
  - what metrics are used to measure the results?
    - why are these metrics useful?
  - how do my results compare with those from the literature?


--------------------------------------------------------------------------------

- What test case(s) should I subject the Weller and Sharhrokhi model to?  Hypothesis?
  - 2D/3D
  - grid resolution
  - boundary conditions
  - timestep
  - integration time
  - advection type
    - resting atmosphere
    - uniform horizontal advection
    - zero wind below mountain top, sin^2 in middle layer, constant wind above (Schar et al 2002 via Good et al 2013)
  - terrain type
    - no terrain
    - step function (Gallus & Klemp 2000)
    - Witch of Agnesi
    - plateau
    - Circular Gaussian
    - Schaer
  - terrain height
  - terrain half-width
  - stability
    - N constant
    - inversion layer
  - temperature
    - isothermal
    - warm anomaly (Norman et al 2011, Jebens et al 2011)
  - density current (Norman et al 2011, Melvin et al 2010, Jebens et al 2011)
  - gravity waves (Norman et al 2011, Jebens et al 2011)
    - physically meaningful (happens in real life)
    - tests advection
    - needs smooth mountain
  - stratospheric gravity wave breaking (Smolarkiewicz & Szmelter 2011)
  - tracer advection (Good et al 2013)


  - tracer advection (Schaer et al 2002, also Good et al 2013)
    - doesn't test much for cut cells (except that we haven't screwed up)
    - only tests advection scheme (and mesh type)
    - doesn't have any momentum equations so doesn't test horiz pressure gradients or anything like that
    - hypothesise should work flawlessly for cut cell (since grid is regular aloft)
    - not so good for terrain-following
    - could compare TF/cut cell with regular grid with no orography, and/or an analytic solution
    - how to measure the error? M Rout suggests Leuenberger 2001, M Jones suggests Williamson et al 1992 error norms
    - choice of advection scheme?
  - rising bubble over orography (Good et al 2013 (did she get it from someone else?))
    - good test for terrain following, should be flawless for cut cell

- What metrics to use to measure the "best" type of grid?
- How to isolate the effects of the grid from other model implementation details?
  - Hilary has an OpenFOAM model which we can choose the grid for
  - Perform same test on multiple models having the same grid type

- "centre of a quadrilateral" (or, in 3D, centre of a hexahedron) is the centre of mass http://en.wikipedia.org/wiki/Quadrilateral#Remarkable_points_and_lines_in_a_convex_quadrilateral


advantages of TF
+ one-to-one transformation (Good et al 2013)
+ easier to implement variable vertical resolution (Good et al 2013)

disadvantages of TF
- spurious wind (Janjic 1989)
- horizontal diffusion (Zaengl 2002)
- gradients get steeper as resolution increases (Jebens et al 2011)

advantages of cut cells
+ less spurious wind (Good et al 2013)
+ better and handling steeper terrain (Good et al 2013, Klein et al 2009)

disadvantages of cut cells
- timestep restriction due to small cells
- boundary layer parameterisations rely on high res, uniform vertical resolution near the surface (Zaengl 2012)

Coordinate transform
====================
+ Rectangular domain
+ Simplifies lower boundary conditions
- Extra metric terms in equation set (not necessarily a problem) (G-C&S 1975)
- New singularities appear that weren't present in the original equation set (G-C&S 1975)


Cartesian coordinates
=====================
- complicates lower boundary because surface normal does not align with coordinate system (no normal flow)


Terrain-following
=================
+ cell sizes are nearly uniform (unlike cut cells that can be very small) -- permits use of explicit methods which are more easily parallelised (Jebens et al 2011)
- errors in resting atmosphere due to horizontal pressure gradient give rise to spurious vertical velocities aloft (Klemp 2011 via Good et al 2013)

Cut cell
========
- timestep restriction due to small cut-cells
  + thin-wall approximation artificially inflates volumes (Steppeler et al 2002, 2006 via Good et al 2013)
  + combine small cells near surface (Yamazaki & Satomura 2010 via Good et al 2013)
+ more accurate results (according to Yamazaki & Satomura 2010 via Good et al 2013)
- boundary layer parameterisations rely on high resolution, uniform vertical resolution near the surface (Zaengl 2012)

Paper summaries
===============
Key papers:
- Gallus & Klemp 2000
- Schaer et al 2002
- Weller & Shahrokhi 2014

Klemp et al 2003
----------------
- Terrain-following
- Analytic and numerical solutions

Gallus & Klemp 2000
-------------------
- Step-terrain
- Gravity wave and spurious vorticity production
- Analytic and numerical solutions
- Forcing vorticity=0 at corners "fixes" spurious voriticity but too restrictive in general
- Tests: Witch of Agnessi hill, N constant, U constant

Klemp 2011
----------
- Smoothed terrain following (STF)
- Selectively smooths small-scale terrain
- Well suited to height-based vertical coordinates since only computed once during initialisation
- Compared to BTF, HTF and SLEVE (from Schaer et al 2002)
- C grid
- Tests: resting atmosphere based on Klemp et al 2007, Schaer exp mountain, 2--3km inversion layer, 5hr integration
- Spurious circulations strongly dependent on vertical resolution but not horizontal

Rosatti et al 2005
------------------
- Cut cell
- C-type cartesian grid
- Very mathsy
- Subgrid velocity field construction with no-normal flow
- Tests: trajectory test with flow around a cylinder, water flow around curved channel, hydrostatic and NH lee wave tests from Gallus & Klemp 2000
- Good NH lee wave results obtained at coarser resolution than Gallus & Klemp 2000

Norman et al 2011
-----------------
- Finite volume
- Cartesian grid
- No orography
- Flux-based characteristic variables, seems a bit like semi-lag
- Very mathsy, matrix representation of Euler equations
- Stable even at large courant numbers
- Tests: warm bubble, density current and NH internal gravity wave

Jebens et al 2011
-----------------
- Cut cell
- Partial Jacobian, fancy maths
- Implicit treatment of cut cells, explicit in free atmosphere
- Some focus on storage size
- Tests: warm bubble, cold bubble (density current), gravity wave over orography test from Gallus & Klemp, warm bubble advected around circular osctacle

Smolarkiewicz & Szmelter 2011
-----------------------------
- Very mathsy
- Two unstructed meshes: one mimicking BTF, one pure triangles
- No clear advantage of either mesh is mentioned
- Two equation sets: anelastic and psuedo-incompressible
- Test: stratospheric gravity wave breaking, excited by small hill (Witch of Agnessi)

OpenFOAM
========
- Ubuntu 14.04 installation http://openfoamwiki.net/index.php/Installation/Linux/OpenFOAM-2.3.0/Ubuntu#Ubuntu_14.04
- Generic Mapping Tools (GMT) http://gmt.soest.hawaii.edu/
- *would be good to tree diff Hilary's OpenFoam tree with vanilla install*
- plotPatchData (custom OpenFOAM utility) uses psxy, part of GMT
- runAll/mesh.sh creates mesh and adds mountain
- add2DMountain /export/elder/data-06/sws02hs/OpenFOAM/sws02hs-2.3.0/applications/utilities, depends on ExnerTheta library
  - BTF, HTF, SLEVE (Schar et al 2002)
  - ScharExp, ScharCos, ScharCosSmooth, AgnesiWitch, flatMountain
- use snappyHexMesh for cut cells http://www.openfoam.org/mantisbt/view.php?id=1083
- TRiSK: http://www.geosci-model-dev.net/7/779/2014/gmd-7-779-2014.html
l1 = sum(mag(phi)*vol) / total_vol
l2 = sum(sqr(phi)*vol) / sqrt(l2/total_vol)
l0 = sum(phi*vol) / total_vol
./OpenFOAM-2.3.0/platforms/linux64GccDPOpt/lib/openmpi-1.6.5/libPstream.so
