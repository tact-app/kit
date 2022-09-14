#!/usr/bin/env bash

@main() {
  for arg in "${@}"; do
    case "${arg}" in
    -d | --dry-run)
      config['dryrun']=true
      shift
      ;;
    -p | --port)
      config['port']="${2}"
      shift 2
      ;;
    *) break ;;
    esac
  done
  "${@:-@usage}"
}

@main "${@}"
