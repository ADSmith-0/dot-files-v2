#!/usr/bin/env bash
source ./bash-helpers.sh

if [[ "$1" == "system" ]]; then
  cd system
  sudo stow --adopt -t / links
  exit 0
fi

if [[ "$1" == "user" ]]; then
  cd profiles/"$USER"
  stow --adopt -t /home/"$USER" links
  exit 0
fi

echo -e "${RED}Err:${RESET} incorrect parameter" >&2
exit 1
