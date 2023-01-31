#!/usr/bin/env bash
set -ex
# https://www.lunarvim.org/docs/installation
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font

