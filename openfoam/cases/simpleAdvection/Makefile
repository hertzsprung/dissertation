CASE := .

BLOCK_MESH_DICT := constant/polyMesh/blockMeshDict
INITIAL_CONDITIONS := constant/initialConditions

INITIAL_FIELDS := 0/U 0/T

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

.PHONY: clean all

clean:
	pyFoamClearCase.py --additional=0 $(CASE)
	$(RM) $(MESH_FILES)

all: $(INITIAL_FIELDS)

$(MESH_FILES): $(BLOCK_MESH_DICT)
	$(BLOCK_MESH) -dict $(BLOCK_MESH_DICT) -case $(CASE)
	$(ADD_2D_MOUNTAIN)

$(INITIAL_FIELDS): $(INITIAL_CONDITIONS) $(MESH_FILES)
	$(SET_SCALAR_OVER_OROGRAPHY)

# scalarTransportFoam
