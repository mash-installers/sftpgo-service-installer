#!/usr/bin/env -s pkgx bash^5 -eo pipefail

function main {
  printf '%s\n' \
         'will do something soon'
}

main ${@}
