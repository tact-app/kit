#!/usr/bin/env bash
# shellcheck source=../git/core.bash      # @root
# shellcheck source=../utils/env.bash     # @os @arch

# TODO:debt find a better way to inject path
path="$(@root)/tools/node_modules/.bin"
if [[ ":${PATH}:" != *":${path}:"* ]]; then
  export PATH="${path}:${PATH}"
fi

path="$(@root)/bin/$(@os)/$(@arch)"
if [[ ":${PATH}:" != *":${path}:"* ]]; then
  export PATH="${path}:${PATH}"
fi
