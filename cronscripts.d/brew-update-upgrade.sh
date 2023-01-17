#!/usr/bin/env bash
mkdir -p /Users/nikodunixi/logs/cron
function brew {
  /opt/homebrew/bin/brew ${@}
}
(
  set -ex
  brew update
  brew upgrade
) &> /Users/nikodunixi/logs/cron/homebrew.log
