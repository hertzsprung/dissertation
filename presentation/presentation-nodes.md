Representation of Mountains in Atmosphere Models
================================================

Introduction
------------
NWP models approximate the solution of physical equations
Some models use a finite difference approximation where space is subdivided into a grid of cells
  (with figure, source: https://source.ggy.bris.ac.uk/wiki/NumMethodsPDEs)

What do we do when the grid encounters a mountain?  Several techniques:
- terrain following
  - most widely-used in operational NWP
  - basic terrain following
  - SLEVE
    - improvement over BTF
    - small-scale features smoothed faster than large-scale

  - as resolution increases, gradients get steeper 
  - can cause spurious wind (Steppeler 2013)
- cut cell
  + handles steeper terrain
  + less spurious wind
- others, e.g. unstructured mesh
  (figure source: Smolarkiewicz & Szmelter) http://ral.ucar.edu/hap/events/orographic-precip/images/2wed/am/day2-Wed_am_3-Orogunmesh2.ppt)

My goal: determine "best" type of grid over mountains

Results
-------
ADVECTION
- Continuous and discretised equation (show finite difference graph again, too)
- draw cartoon on board showing tracer, wind field aloft and zero near ground
- ASK AUDIENCE: which grid will be better, BTF or cut cell?
- BTF
- SnapCol (not quite cut cell but close enough)

RESTING ATMOSPHERE
- SnapCol has smaller max vertical velocities than BTF or SLEVE (with graph)

GRAVITY WAVES
- draw cartoon on board showing uniform wind flow
- show animation
- discovered 
  - Resting atmosphere: TF bad, cut cell good!
  - Gravity waves: TF good, cut cell possible issue -- TODO further work

