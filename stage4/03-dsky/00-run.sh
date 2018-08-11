#!/bin/bash -e
# clone the master branch from virtualagc into the pi user home

git -C "${ROOTFS_DIR}/home/pi" clone https://github.com/virtualagc/virtualagc.git 

# make all files owned by pi user
chown 1000:1000 "${ROOTFS_DIR}/home/pi/virtualagc" -Rv

