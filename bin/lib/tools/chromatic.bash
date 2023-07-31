#!/usr/bin/env bash
# shellcheck source=../utils/env.bash   # @env @key @token
# shellcheck source=../utils/print.bash # @fatal

set_chromatic_token() { @token store 'Chromatic project' 20; }

_chromatic=$(which chromatic-cli || true)

chromatic() {
  [ -z "${_chromatic}" ] && @fatal please setup environment first

  local key token
  key=$(@key 'Chromatic project')
  token=${!key:-$(@env get "${key}")}

  local args=("${@}")
  "${_chromatic}" --project-token="${token}" "${args[@]}"
}
