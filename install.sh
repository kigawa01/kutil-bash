#!/bin/bash
##################################################
set -ue
##################################################

KUTIL_HOME=$(cd "$(dirname "${BASH_SOURCE:-$0}")" || exit 1 ; pwd)

for file in "$KUTIL_HOME"/bin/* ; do
  echo chmod "$file"
  chmod +x "$file"
done
echo "source $KUTIL_HOME/.bashrc" >> "$HOME/.bashrc"
echo "export PATH=\"${KUTIL_HOME}/bin:\$PATH\"" >> "$HOME/.bashrc"
# shellcheck disable=SC1012
echo -e "run \n source \"$HOME/.bashrc\""
