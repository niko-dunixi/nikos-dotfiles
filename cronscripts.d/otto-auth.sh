#!/usr/bin/env bash
mkdir -p /Users/nikodunixi/logs/cron
export PATH="${PATH}:/opt/homebrew/bin/otto"
cd ${HOME}/tilt-home
(
  set -ex
  otto auth aws --renew
  otto auth docker
) &> /Users/nikodunixi/logs/cron/otto-auth.log
