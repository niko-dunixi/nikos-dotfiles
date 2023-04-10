#!/usr/bin/env bash
set -eux
mkdir -p ${HOME}/cronscripts.d
rsync -a --delete cronscripts.d "${HOME}"
crontab <<-EOF
# ┌───────────── minute (0 - 59)
# │ ┌───────────── hour (0 - 23)
# │ │ ┌───────────── day of the month (1 - 31)
# │ │ │ ┌───────────── month (1 - 12)
# │ │ │ │ ┌───────────── day of the week (0 - 6) (Sunday to Saturday;
# │ │ │ │ │                                   7 is also Sunday on some systems)
# │ │ │ │ │
# │ │ │ │ │
# * * * * * <command to execute>
10 * * * * ${HOME}/cronscripts.d/brew-update-upgrade.sh
15 * * * * ${HOME}/cronscripts.d/rust-update.sh
20 * * * * ${HOME}/cronscripts.d/lunarvim-update.sh
0 9 * * * ${HOME}/cronscripts.d/otto-housekeeping.sh
0 11,13 * * 1-5 ${HOME}/cronscripts.d/otto-auth.sh
EOF
crontab -l
