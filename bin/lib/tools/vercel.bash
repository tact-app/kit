#!/usr/bin/env bash

_vercel=$(which vercel || true)

vercel() {
  [ -z "${_vercel}" ] && echo Please setup env. && return 1

  if [ ! -f .vercel/project.json ]; then
    $_vercel -t "$(git config vercel.token)" link
  fi

  local args=("${@}")
  if [ "${1:-}" == 'clean' ]; then
    args=(rm --yes)
    if [ "${2:-}" == 'all' ]; then
      local deployment found=false
      while IFS='' read -r deployment; do
        args+=("${deployment}")
        found=true
      done < <(vercel ls 2>&1 | grep https | awk '{print $2}')
      if ! $found; then
        echo No deployments found.
        return
      fi
    else
      args+=(--safe tact)
    fi
  fi

  _ "${_vercel}" -t "$(git config vercel.token)" "${args[@]}"
}
