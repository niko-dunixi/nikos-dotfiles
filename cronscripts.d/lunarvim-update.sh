#!/usr/bin/env bash
mkdir -p /Users/nikodunixi/logs/cron
function lvim {
  /Users/nikodunixi/.local/bin/lvim ${@}
}
(
  set -ex
  lvim +LvimUpdate +q
  lvim +LvimSyncCorePlugins +q
) &> /Users/nikodunixi/logs/cron/lunarvim.log
