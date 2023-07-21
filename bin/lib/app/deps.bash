#!/usr/bin/env bash
# shellcheck source=../docker/node-install.bash # install
# shellcheck source=../tools/tools.bash         # tools
# shellcheck source=../utils/npm.bash           # @consistent @lock

@deps() {
  case "${1}" in
  check) [ "$(depcheck)" == 'No depcheck issue' ] ;;
  install) if ! @consistent; then install && @lock; fi ;;
  tools) tools install ;;
  esac
}
