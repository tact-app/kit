#!/usr/bin/env bash
# shellcheck source=node.bash             # @node
# shellcheck source=../core/runtime.bash  # $config

storybook() {
  case "${1:-}" in
  build) @node npm run storybook-build ;;
  serve) @node -p 127.0.0.1:"${config['port']}":3000 -- npm run storybook-serve ;;
  *) @node -p 127.0.0.1:"${config['port']}":6006 -- npm run storybook-dev ;;
  esac
}
