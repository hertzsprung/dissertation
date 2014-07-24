computational mode
Untch2004

Hollingsworth, A 1995 A spurious mode in the ‘Lorenz’ arrangement of φ and T which
does not exist in the ‘Charney–Phillips’ arrangement.  Technical Memorandum 211. ECMWF, Shinfield Park, Reading, UK

Arakawa & Konor 1996
Vertical differencing of the primitive equations based on the
Charney–Phillips grid in hybrid vertical coordinates. Mon.
Weather Rev., 124, 511–528


explain lorentz/charney-phillips staggering
CP
- originally based in sigma coords, QG approximation
- conserves advection of QGPV
- requires less interpolation of variables (Holdaway 2013)
- what else?

Lorenz
- conserves total energy, mean theta and variance of theta in adiabatic+frictionless processes
- however, conversion between PE and KE not necessarily correct
- computational mode in vertical distribution of theta (Tokioka 1978, Arakawa 1988, Cullen & James 1994, Hollingsworth 1995)
- with centred differencing, thickness between two adjacent layers depends on an average of the theta of the two layers
- Arakawa & Moorthi 1988 found computational mode near the ground and upper lid, causing spurious amplification of short waves
- reduction in effective static stability (Arakaway&Moorthi 1988)

"The computational mode is a spurious solution resulting from having one too many
degrees of freedom; it can interact with other modes and
reduce overall accuracy." -- Holdaway 2013
