#!/usr/bin/env bash
# shellcheck source=node.bash         # @node
# shellcheck source=node-install.bash # install
# shellcheck source=../utils/env.bash # @token

# Example: run build [--from-scratch]
# Example: run build docker [--from-scratch]
build() {
  # docker way
  if [ "${1:-}" == 'docker' ]; then
    if [ "${2:-}" == '--from-scratch' ]; then
      docker rmi tact-app/kit:local || true
    fi
    docker build \
      --build-arg token="$(@token get fontawesome)" \
      -f Dockerfile \
      -t tact-app/kit:local .
    return
  fi

  # local way
  [ "${1:-}" == '--from-scratch' ] && rm -rf .next && install "${@}"
  @node npm run build
}
