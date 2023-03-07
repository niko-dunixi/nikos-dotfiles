#!/usr/bin/env bash
mkdir -p /Users/nikodunixi/logs/cron
export PATH="${PATH}:/opt/homebrew/bin/"
cd ${HOME}/tilt-home
(
  set -ex
  otto download games
) &> /Users/nikodunixi/logs/cron/otto-housekeeping.log
