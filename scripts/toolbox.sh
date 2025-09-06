#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages
pacman -Syu
grep -v '^#' ./toolbox.packages | xargs pacman -S --no-confirm
