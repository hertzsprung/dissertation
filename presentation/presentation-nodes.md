Representation of Mountains in Atmosphere Models
================================================

Introduction
------------
NWP models approximate the solution of physical equations
Some models approximate by subdiving space into a grid of cells

What do we do when the grid encounters a mountain?  Several techniques:
- terrain following
  - most widely-used in operational NWP
  - basic terrain following
    - as resolution increases, gradients get steeper 
    - can cause spurious wind (Steppeler 2013)
- cut cell
  + handles steeper terrain
  + less spurious wind
- others, e.g. unstructured mesh

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
- thermal mixing should not be present without viscosity

Conclusions & Further work
--------------------------
- As slides
