1. What type of grid (also called 'mesh') is "best" over orography?
   - terrain following
   - cut cell (also called 'shaved cell')
   - some other type such as fully unstructured or nested refinement

2. How does the "curl free pressure gradient" model that I describe in Weller and Sharhrokhi compare with other models?

- What test case(s) should I subject the Weller and Sharhrokhi model to?
  - integration time
  - advection type
    - resting atmosphere (Good et al 2013, ...)
    - uniform horizontal advection
    - zero wind below mountain top, sin^2 in middle layer, constant wind above (Schar et al 2002 via Good et al 2013)
  - terrain type
    - no terrain
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
    - warm anomaly
  - gravity waves
  - tracer advection (Good et al 2013)

- What metrics to use to measure the "best" type of grid?
- How to isolate the effects of the grid from other model implementation details?
  - Hilary has an OpenFOAM model which we can choose the grid for
  - Perform same test on multiple models having the same grid type


Terrain-following
=================
- errors in resting atmosphere due to horizontal pressure gradient give rise to spurious vertical velocities aloft (Klemp 2011 via Good et al 2013)

Cut cell
========
- timestep restriction due to small cut-cells
  + thin-wall approximation artificially inflates volumes (Steppeler et al 2002, 2006 via Good et al 2013)
  + combine small cells near surface (Yamazaki & Satomura 2010 via Good et al 2013)
+ more accurate results (according to Yamazaki & Satomura 2010 via Good et al 2013)
