#!/usr/bin/env bash
# Exit is any commands error
set -e

curl -LO https://github.com/ndom91/rose-pine-hyprcursor/releases/download/v0.3.2/rose-pine-cursor-hyprcursor_0.3.2.tar.gz

TARGET_DIR=/dot-files/profiles/$USER/links/.local/share/icons/rose-pine-hyprcursor

mkdir -p $TARGET_DIR

tar -zxf rose-pine-cursor-hyprcursor_0.3.2.tar.gz -C $TARGET_DIR

rm -rf rose-pine-cursor-hyprcursor_0.3.2.tar.gz
