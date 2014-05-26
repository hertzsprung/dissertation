CASE := .

BLOCK_MESH_DICT := constant/polyMesh/blockMeshDict
SNAPPY_HEX_MESH_DICT := system/snappyHexMeshDict
INITIAL_CONDITIONS := constant/initialConditions
TRI_SURFACE_DIR := constant/triSurface

END_TIME := 10000
ANALYTIC_TRACER_FILENAME := T_analytic

INITIAL_FIELDS := 0/U 0/T
FINAL_TRACER_FIELD := $(END_TIME)/T
ANALYTIC_TRACER_FIELD := 0/T_analytic # TODO: should really be in $(END_TIME) directory but don't know how to make OpenFOAM do this
FINAL_DIFFERENCE := $(END_TIME)/T_diff
L_ERRORS := globalSumT_diff.dat

BLOCK_MESH_FILES := \
  constant/polyMesh/boundary \
  constant/polyMesh/faces \
  constant/polyMesh/neighbour \
  constant/polyMesh/owner \
  constant/polyMesh/points

SNAPPY_HEX_MESH_FILES := \
  constant/polyMesh/level0Edge \
  constant/polyMesh/refinementHistory \
  constant/polyMesh/cellLevel \
  constant/polyMesh/pointLevel \
  constant/polyMesh/surfaceIndex

CP := cp
RM := rm -f
MKDIR := mkdir -p
BLOCK_MESH := blockMesh
ADD_2D_MOUNTAIN := add2dMountain
SET_SCALAR_OVER_OROGRAPHY := setScalarOverOrography
SCALAR_TRANSPORT_FOAM := scalarTransportFoam
SUM_FIELDS := sumFields
GLOBAL_SUM := globalSum
WRITE_MESH_OBJ := writeMeshObj
SNAPPY_HEX_MESH := snappyHexMesh

.PHONY: clean all mesh

.INTERMEDIATE: $(BLOCK_MESH_DICT).intermediate initialFields.intermediate

all: $(L_ERRORS)

mesh: $(BLOCK_MESH_FILES)

clean:
	pyFoamClearCase.py --additional=0 $(CASE)
	$(RM) $(BLOCK_MESH_FILES) $(SNAPPY_HEX_MESH_FILES) patchFaces*.obj $(L_ERRORS)
	$(RM) -r $(TRI_SURFACE_DIR)

$(BLOCK_MESH_FILES): $(BLOCK_MESH_DICT).intermediate

$(BLOCK_MESH_DICT).intermediate: $(BLOCK_MESH_DICT)
	$(BLOCK_MESH) -dict $(BLOCK_MESH_DICT) -case $(CASE)
	$(ADD_2D_MOUNTAIN)
	$(WRITE_MESH_OBJ) -patchFaces -time -1 -constant
	$(MKDIR) $(TRI_SURFACE_DIR)
	$(CP) patchFaces_ground_constant.obj $(TRI_SURFACE_DIR)

$(INITIAL_FIELDS): initialFields.intermediate

initialFields.intermediate: $(INITIAL_CONDITIONS) $(BLOCK_MESH_FILES)
	$(SET_SCALAR_OVER_OROGRAPHY)

$(FINAL_TRACER_FIELD): $(INITIAL_FIELDS)
	$(SCALAR_TRANSPORT_FOAM)

$(ANALYTIC_TRACER_FIELD): $(INITIAL_CONDITIONS) $(BLOCK_MESH_FILES)
	$(SET_SCALAR_OVER_OROGRAPHY) -x0 50000 -withoutWindField -tracerFieldFileName T_analytic # TODO: don't hardwire x0 value

$(FINAL_DIFFERENCE): $(ANALYTIC_TRACER_FIELD) $(FINAL_TRACER_FIELD)
	$(SUM_FIELDS) $(END_TIME) T_diff 0 T_analytic $(END_TIME) T -scale0 1 -scale1 -1 # subtract final numerical from analytic solution

$(L_ERRORS): $(FINAL_DIFFERENCE)
	$(GLOBAL_SUM) -case $(CASE) -time $(END_TIME) T_diff
