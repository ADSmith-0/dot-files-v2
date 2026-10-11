#!/usr/bin/env bash
source ./bash-helpers.sh

if [ ! -f ./packages/profiles/"$1.sh" ]; then
  echo -e "${RED}Err:${RESET} profile $1 doesn't exist" >&2
  exit 1
fi

sudo pacman -Syu $(./packages/git.sh) $(./packages/less.sh) $(./packages/hyprland.sh) $(./packages/stow.sh)
