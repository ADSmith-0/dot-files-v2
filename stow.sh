#!/usr/bin/env bash
source ./bash-helpers.sh

if [[ "$1" == "system" ]]; then
  cd system
  stow -t / links
  exit 0
fi

if [[ "$1" == "adams" || "$1" == "adams-work" ]]; then
  cd profiles/links
  stow -t /home/"$1" "$1"
  exit 0
fi

echo -e "${RED}Err:${RESET} incorrect parameter" >&2
exit 1
