#!/bin/bash
for FILE in $1/processor*/0/Uf; do
	sed -i 's/(-10 0 0)/(10 0 0)/g' $FILE
done
