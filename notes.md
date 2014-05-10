1. What type of grid (also called 'mesh') is "best" over orography?
   - terrain following
   - cut cell (also called 'shaved cell')
   - unstructured (Smolarkiewicz & Szmelter 2011)

2. How does the "curl free pressure gradient" model that I describe in Weller and Sharhrokhi compare with other models?

- What test case(s) should I subject the Weller and Sharhrokhi model to?
  - integration time
  - advection type
    - resting atmosphere (Good et al 2013, ...)
    - uniform horizontal advection
    - zero wind below mountain top, sin^2 in middle layer, constant wind above (Schar et al 2002 via Good et al 2013)
  - terrain type
    - no terrain (Norman et al 2011)
    - step function (Gallus and Klemp 1999)
    - Witch of Agnesi (Rising bubble, Good et al 2013)
    - plateau (Gallus and Klemp 1999)
    - Sinusoidal (Klemp 2011 via Good et al 2013)
    - Circular Gaussian (Zaengl 2012)
    - Schlaer (Schlaer et al 2002 via Zaengl 2012)
  - stability
    - neutrally stable (N=0) (Rising bubble, Good et al 2013)
    - N constant (Klemp 2011 via Good et al 2013)
    - inversion layer (Good et al 2013, Klemp 2011)
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

Paper summaries
===============
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
- Some focus on storage size
- Tests: warm bubble, cold bubble (density current), gravity wave over orography test from Gallus & Klemp, warm bubble advected around circular osctacle

Smolarkiewicz & Szmelter 2011
-----------------------------
- Very mathsy
- Two unstructed meshes: one mimicking BTF, one pure triangles
- Two equation sets: anelastic and psuedo-incompressible
- Test: stratospheric gravity wave breaking

OpenFOAM
========
- Ubuntu 14.04 installation http://openfoamwiki.net/index.php/Installation/Linux/OpenFOAM-2.3.0/Ubuntu#Ubuntu_14.04
- Generic Mapping Tools (GMT) http://gmt.soest.hawaii.edu/
- *would be good to tree diff Hilary's OpenFoam tree with vanilla install*
- runAll/mesh.sh creates mesh and adds mountain
- add2DMountain /export/elder/data-06/sws02hs/OpenFOAM/sws02hs-2.3.0/applications/utilities
  - BTF, HTF, SLEVE (Schar et al 2002)
  - ScharExp, ScharCos, ScharCosSmooth, AgnesiWitch, flatMountain
