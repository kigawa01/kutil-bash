#!/bin/bash
##################################################
set -e
##################################################

if [ -z "$KUTIL_HOME" ]; then
  KUTIL_HOME=$(cd "$(dirname "${BASH_SOURCE:-$0}")" || exit 1 ; pwd)

  for file in "$KUTIL_HOME"/bin/* ; do
    echo chmod "$file"
    chmod +x "$file"
  done
  echo "source $KUTIL_HOME/.bashrc" >> "$HOME/.bashrc"
  echo "export PATH=\"${KUTIL_HOME}/bin:\$PATH\"" >> "$HOME/.bashrc"
  # shellcheck disable=SC1012
  echo -e "run \n source \"$HOME/.bashrc\""
fi

if [ -z "$KUTIL_SSH_KEY" ]; then
    echo type ssh key path
    read -r KUTIL_SSH_KEY
  echo "export KUTIL_SSH_KEY=\"${KUTIL_SSH_KEY}\"" >> "$HOME/.bashrc"
fi