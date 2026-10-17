#!/usr/bin/env bash
source ../bash-helpers.sh

if [[ "$1" -ne "Amber" || "$1" -ne "Classic" || "$1" -ne "Ice" ]]; then
  echo -e "${RED}Err:${RESET} missing style 'Amber', 'Classic' or 'Ice'" >&2
  exit 1
fi

curl -LO https://github.com/LOSEARDES77/Bibata-Cursor-hyprcursor/releases/download/v1.1/hypr_Bibata-Modern-$1.tar.gz
DIR=/dot-files/profiles/$USER/links/.local/share/icons/bibata-${1,,}-hyprcursor
mkdir -p $DIR
tar -zxf hypr_Bibata-Modern-$1.tar.gz -C $DIR
rm hypr_Bibata-Modern-$1.tar.gz
echo ""
cat "$DIR/manifest.hl"
