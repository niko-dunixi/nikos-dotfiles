#!/usr/bin/env bash
mkdir -p /Users/nikodunixi/logs/cron
(
  set -ex
  rustup update
  cargo search --limit 0
) &> /Users/nikodunixi/logs/cron/cargo.log
