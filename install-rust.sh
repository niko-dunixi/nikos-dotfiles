#!/usr/bin/env bash
set -ex
hash rustup &>/dev/null || {
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
}
rustup update
