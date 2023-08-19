#!/usr/bin/env bash
# shellcheck source=deps.bash                     # @deps
# shellcheck source=../docker/node/storybook.bash # storybook
# shellcheck source=../git/core.bash              # @pull

refresh() {
  @pull

  deps install
  deps tools

  storybook build
}
