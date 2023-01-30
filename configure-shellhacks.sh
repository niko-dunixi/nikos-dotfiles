#!/usr/bin/env bash
set -euxo pipefail
cd "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"

mkdir -p "${HOME}/shellhacks.d"
grep "#SHELLHACKSD" ~/.zshrc || {
cat >> ~/.zshrc <<EOF
#SHELLHACKSD
for shellhack in \${HOME}/shellhacks.d/*; do
  source "\${shellhack}"
done
EOF
}
rsync -a --delete shellhacks.d "${HOME}"
