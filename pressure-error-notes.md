pressure gradient errors

Mesinger 1988
- there is no solution to the error
- it is not truncation error: increasing vertical resolution is likely to increase the error, not reduce it
- "noncancellation of errors", Smagorinsky et al 1967
- (AIUI) in pressure coordinates, we calculate horizontal gradient on constant pressure surface, not constant height surface
- (don't really understand this bit) must have hydrostatic consistency: must use same formula to calculate slope of sigma surface, and to interpolate onto constant pressure surface
- even with hydrostatic consistency, errors are not always small over steep sigma surfaces
- noise that's generated could affect nonlinear interactions

Gary 1973
- if pressure derivates are taken on sloping surface, they contain a hyrostatic (vertical) component.  the pressure gradient has two terms in sigma coords, and the hydrostatic component in those terms should cancel (but don't always)
- computational mode develops in sigma coordinates
- computational mode can be eliminated by computing gradient of geopotential along pressure surfaces (Smagorinksy 1967) because interpolation of data from sigma to pressure produces diffusion

Mesinger 1982 (why does error increase with vertical resolution?)

Mahrer 1984
Best technique around (according to Mesinger 1988, and backed up by Klemp 2011)
- Errors occur when distance between two vertical grid points is smaller than the elevation difference between two horizontally adjacent points (in transformed coordinates)

Janjic 1985

Klemp 2011
- simplification of Mahrer technique
- calculates horiz pressure gradient on surface of constant height by interpolation of pressure values at surrounding points.

Zaengl 2012
- extension of Mahrer technique

Dempsey and Davis 1998