#!/usr/bin/env bash
# shellcheck source=../utils/env.bash   # @token
# shellcheck source=../utils/print.bash # @fatal

set_chromatic_token() { @token store 'Chromatic project' 20; }

_chromatic=$(which chromatic-cli || true)

chromatic() {
  [ -z "${_chromatic}" ] && @fatal please setup environment first

  local args=(
    --build-script-name=build
    "${@}"
  )

  "${_chromatic}" --project-token="$(@token get 'Chromatic project')" "${args[@]}"
}
