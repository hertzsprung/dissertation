CASE := .

BLOCK_MESH_DICT := constant/polyMesh/blockMeshDict
INITIAL_CONDITIONS := constant/initialConditions

END_TIME := 10000
ANALYTIC_TRACER_FILENAME := T_analytic

INITIAL_FIELDS := 0/U 0/T
FINAL_TRACER_FIELD := $(END_TIME)/T
ANALYTIC_TRACER_FIELD := 0/T_analytic # TODO: should really be in $(END_TIME) directory but don't know how to make OpenFOAM do this
FINAL_DIFFERENCE := $(END_TIME)/T_diff

MESH_FILES := \
  constant/polyMesh/boundary \
  constant/polyMesh/faces \
  constant/polyMesh/neighbour \
  constant/polyMesh/owner \
  constant/polyMesh/points

RM := rm -f
BLOCK_MESH := blockMesh
ADD_2D_MOUNTAIN := add2dMountain
SET_SCALAR_OVER_OROGRAPHY := setScalarOverOrography
SCALAR_TRANSPORT_FOAM := scalarTransportFoam
SUM_FIELDS := sumFields

.PHONY: clean all

.INTERMEDIATE: $(BLOCK_MESH_DICT).intermediate initialFields.intermediate

all: $(FINAL_DIFFERENCE)

clean:
	pyFoamClearCase.py --additional=0 $(CASE)
	$(RM) $(MESH_FILES)

$(MESH_FILES): $(BLOCK_MESH_DICT).intermediate

$(BLOCK_MESH_DICT).intermediate: $(BLOCK_MESH_DICT)
	$(BLOCK_MESH) -dict $(BLOCK_MESH_DICT) -case $(CASE)
	$(ADD_2D_MOUNTAIN)

$(INITIAL_FIELDS): initialFields.intermediate

initialFields.intermediate: $(INITIAL_CONDITIONS) $(MESH_FILES)
	$(SET_SCALAR_OVER_OROGRAPHY)

$(FINAL_TRACER_FIELD): $(INITIAL_FIELDS)
	$(SCALAR_TRANSPORT_FOAM)

$(ANALYTIC_TRACER_FIELD): $(INITIAL_CONDITIONS) $(MESH_FILES)
	$(SET_SCALAR_OVER_OROGRAPHY) -x0 50000 -withoutWindField -tracerFieldFileName T_analytic # TODO: don't hardwire x0 value

$(FINAL_DIFFERENCE): $(ANALYTIC_TRACER_FIELD) $(FINAL_TRACER_FIELD)
	$(SUM_FIELDS) $(END_TIME) T_diff 0 T_analytic $(END_TIME) T -scale0 1 -scale1 -1 # subtract final numerical from analytic solution
