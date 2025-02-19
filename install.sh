#!/usr/bin/env bash

set -e

if [ -z "$XDG_CONFIG_HOME" ]; then
  if [ ! -d "${HOME}/.config" ]; then
    mkdir "${HOME}/.config"
  fi
  export XDG_CONFIG_HOME="${HOME}/.config"
fi

for item in *; do
  if [ -d "$item" ]; then
    stow "$item"/
  fi
done
