#!/usr/bin/env bash
mkdir -p /Users/nikodunixi/logs/cron
(
  set -ex
  lvim +LvimUpdate +q
  lvim +LvimSyncCorePlugins +q
) &> /Users/nikodunixi/logs/cron/lunarvim.log
