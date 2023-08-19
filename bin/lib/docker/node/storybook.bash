#!/usr/bin/env bash
# shellcheck source=../../config/global.bash  # $config
# shellcheck source=node.bash                 # @node
# shellcheck source=../../utils/print.bash    # @fatal

storybook() {
  local cmd="${1:-}"
  case "${cmd}" in
  build) @npm build ;;
  serve) @node -p 127.0.0.1:"${config['port']}":3000 -- npm run serve ;;
  dev | '') @node -p 127.0.0.1:"${config['port']}":3000 -- npm run dev ;;
  *) @fatal unknown subcommand "${cmd}" ;;
  esac
}
