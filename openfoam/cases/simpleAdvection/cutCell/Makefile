include ../Makefile.shared

# TODO: avoid the small amount of C&P from Makefile.shared
$(BLOCK_MESH_DICT).intermediate: $(BLOCK_MESH_DICT) $(SNAPPY_HEX_MESH_DICT)
	$(BLOCK_MESH) -dict $(BLOCK_MESH_DICT) -case $(CASE)
	$(ADD_2D_MOUNTAIN)
	$(WRITE_MESH_OBJ) -patchFaces -time -1 -constant
	$(MKDIR) $(TRI_SURFACE_DIR)
	$(CP) patchFaces_ground_constant.obj $(TRI_SURFACE_DIR)
	$(BLOCK_MESH) -dict $(BLOCK_MESH_DICT) -case $(CASE) # regenerate regular grid without add2dMountain
	$(RM) $(SNAPPY_HEX_MESH_FILES) # because otherwise snappyHexMesh thinks we're trying to continue a previous run
	$(SNAPPY_HEX_MESH) -overwrite -case $(CASE$) -dict $(SNAPPY_HEX_MESH_DICT)
