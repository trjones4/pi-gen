#!/bin/bash -e
# REMOVE ME AS SOON AS POSSIBLE!!
# patch the python piDSKY2.py to fix seperators
install -v -o 1000 -g 1000 -m 755 "files/piDSKY2.py" "${ROOTFS_DIR}/home/pi/virtualagc/piPeripheral/"

