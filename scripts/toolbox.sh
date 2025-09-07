#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages
pacman -Syu
grep -v '^#' ./toolbox.packages | xargs pacman -S --noconfirm

# Install rust toolchain
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --no-modify-path -y

# Install uv for python tooling
curl -LsSf https://astral.sh/uv/install.sh | sh
