#!/usr/bin/env bash
[ -n $(git config user.email) ] || {
  echo "You need to configure git!"
  exit 1
}
[ ! -f ~/.ssh/id_ed25519 ] || {
  echo "Key already created"
  exit 0
}
ssh-keygen -t ed25519 -C "$(git config user.email)"
