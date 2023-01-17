#!/usr/bin/env bash
set -euxo pipefail

mkdir -p "${HOME}/shellhacks.d"
grep "#SHELLHACKSD" "~/.profile" || {
echo 'export PATH="${PATH}:${HOME}/shellhacks.d" #SHELLHACKSD' >> ~/.profile
}

