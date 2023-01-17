#!/usr/bin/env bash
set -e
# Install perlbrew
[ -f ~/perl5/perlbrew/bin/perlbrew ] || {
  curl -L https://install.perlbrew.pl | bash
}
source ~/perl5/perlbrew/etc/bashrc
perlbrew self-upgrade
# Install managed perl
perl_latest=$(perlbrew available | sed -n 2p | awk '{ print $2 }')
(perlbrew list | grep "${perl_latest}") &>/dev/null || {
  perlbrew install "${perl_latest}"
  perlbrew switch "${perl_latest}"
}
# Manage perl modules
hash cpanm &>/dev/null || {
  yes | perlbrew install-cpanm
}
set -x
cpanm install AnyEvent --force
cpanm install Coro --force
cpanm install Perl::LanguageServer
cpanm install Perl::Tags
cpanm install Perl::Tidy
# IDE configuration
hash code &>/dev/null || {
  code --install-extension 'richterger.perl'
}
