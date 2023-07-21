#!/usr/bin/env bash
# shellcheck source=node.bash             # @node
# shellcheck source=node-build.bash       # build
# shellcheck source=../core/runtime.bash  # $config
# shellcheck source=../git/core.bash      # @root

# Example: run start [--from-scratch]
# Example: run start docker [--from-scratch]
start() {
  local port="${config['port']}"
  @busy "${port}" && @fatal the port "${port}" is busy

  # docker way
  if [ "${1:-}" == 'docker' ]; then
    [ "${2:-}" == '--from-scratch' ] && build docker "${@:2}"
    docker run \
      --rm -it \
      --env-file "$(@root)/.env" \
      -p "127.0.0.1:${port}":3000 \
      tact-app/kit:local
    return
  fi

  # local way
  [ "${1:-}" == '--from-scratch' ] && build "${@}"
  @node -p "127.0.0.1:${port}":3000 -- npm run start
}
