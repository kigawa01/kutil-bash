# shellcheck disable=SC2034
KUTIL_HOME=$(cd "$(dirname "${BASH_SOURCE:-$0}")" || exit 1 ; pwd)
KUTIL_BIN="$KUTIL_HOME/bin"
KUTIL_KUTIL="$KUTIL_HOME/kutil"
KUTIL_FUNC="$KUTIL_HOME/func"

for file in "$KUTIL_FUNC"/* ; do
  # shellcheck disable=SC1090
  source "$file"
done