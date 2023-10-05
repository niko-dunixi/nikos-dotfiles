#!/usr/bin/env bash
set -ex
hash rustup &>/dev/null || {
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
}
rustup update
sudo apt-get install -y \
  build-essential \
  g++ \
  lld \
  libasound2-dev \
  libudev-dev \
  libwayland-dev \
  libx11-dev \
  libxkbcommon-dev \
  pkg-config
