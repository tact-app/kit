#!/usr/bin/env bash

@debug() { echo "${@}"; }
@trace() { @debug "${@}" && "${@}"; }
@error() { echo "${@}" >&2; }
@fatal() { @error "${@}" && exit 1; }
@usage() {
  cat - <<EOF
Usage: ${0} <task> <args>
Tasks:
EOF
  compgen -A function | grep -Ev '^(@|_|-|\+)' | sort | cat -n
}
