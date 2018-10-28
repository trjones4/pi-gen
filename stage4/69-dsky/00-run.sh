#!/bin/bash -e
# clone the master branch from virtualagc into the pi user home

git -C "${ROOTFS_DIR}/home/pi" clone https://github.com/virtualagc/virtualagc.git 

# as of 10/20/18, just building from master is broken on DSKY
# use March 10 for building unti further notice - TBJ

# now checkout the March 10 commit - rollsback the repo to this date
# https://github.com/virtualagc/virtualagc/commit/4abd659b9bc2fb062a6cb1da3798071d8d75d962

cd "${ROOTFS_DIR}/home/pi/virtualagc"
git checkout 4abd659

# make all files owned by pi user
chown 1000:1000 "${ROOTFS_DIR}/home/pi/virtualagc" -Rv

