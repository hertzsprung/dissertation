1. What type of grid (also called 'mesh') is "best" over orography?
   - terrain following
   - cut cell (also called 'shaved cell')
   - partial step (Bonaventura)
   - unstructured (Smolarkiewicz & Szmelter 2011)

2. How does the "curl free pressure gradient" model that I describe in Weller and Sharhrokhi compare with other models?

- What test case(s) should I subject the Weller and Sharhrokhi model to?
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
    - stratospheric gravity wave breaking (Smolarkiewicz & Szmelter 2011)
  - tracer advection (Good et al 2013)

- What metrics to use to measure the "best" type of grid?
- How to isolate the effects of the grid from other model implementation details?
  - Hilary has an OpenFOAM model which we can choose the grid for
  - Perform same test on multiple models having the same grid type

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
- runAll/mesh.sh creates mesh and adds mountain
- add2DMountain /export/elder/data-06/sws02hs/OpenFOAM/sws02hs-2.3.0/applications/utilities
  - BTF, HTF, SLEVE (Schar et al 2002)
  - ScharExp, ScharCos, ScharCosSmooth, AgnesiWitch, flatMountain
