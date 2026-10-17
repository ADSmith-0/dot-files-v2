#!/usr/bin/env bash

curl -LO https://github.com/LOSEARDES77/Bibata-Cursor-hyprcursor/releases/download/v1.1/hypr_Bibata-Modern-Amber.tar.gz
curl -LO https://github.com/LOSEARDES77/Bibata-Cursor-hyprcursor/releases/download/v1.1/hypr_Bibata-Modern-Classic.tar.gz
curl -LO https://github.com/LOSEARDES77/Bibata-Cursor-hyprcursor/releases/download/v1.1/hypr_Bibata-Modern-Ice.tar.gz

AMBER_DIR=/dot-files/profiles/$USER/links/.local/share/icons/bibata-amber-hyprcursor
CLASSIC_DIR=/dot-files/profiles/$USER/links/.local/share/icons/bibata-classic-hyprcursor
ICE_DIR=/dot-files/profiles/$USER/links/.local/share/icons/bibata-ice-hyprcursor

mkdir -p $AMBER_DIR
mkdir -p $CLASSIC_DIR
mkdir -p $ICE_DIR

tar -zxf hypr_Bibata-Modern-Amber.tar.gz -C $AMBER_DIR
tar -zxf hypr_Bibata-Modern-Classic.tar.gz -C $CLASSIC_DIR
tar -zxf hypr_Bibata-Modern-Ice.tar.gz -C $ICE_DIR

rm hypr_Bibata-Modern-Amber.tar.gz
rm hypr_Bibata-Modern-Classic.tar.gz 
rm hypr_Bibata-Modern-Ice.tar.gz
