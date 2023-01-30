#!/usr/bin/env bash
set -euxo pipefail
cd "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"

mkdir -p "${HOME}/shellhacks.d"
grep "#SHELLHACKSD" "~/.profile" || {
  echo 'export PATH="${PATH}:${HOME}/shellhacks.d" #SHELLHACKSD' >> ~/.profile
}
rsync -a --delete shellhacks.d "${HOME}/shellhacks.d"
