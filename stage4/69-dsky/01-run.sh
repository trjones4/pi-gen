#!/bin/bash -e
# extract the waveshare driver build scripts
tar xvf files/LCD-show-180331.tar.gz -C "${ROOTFS_DIR}/home/pi"

# copy the default screen calibraiton file to xorg.conf.d
# WARNING, expect some small differences between screens
install -v -m 644 files/99-calibration.conf	"${ROOTFS_DIR}/usr/share/X11/xorg.conf.d/"

