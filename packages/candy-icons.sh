#!/usr/bin/env bash

curl -LO https://github.com/EliverLara/candy-icons/archive/refs/heads/master.zip
sudo unzip master.zip -d /usr/share/icons
sudo mv /usr/share/icons/candy-icons-master /usr/share/icons/candy-icons
rm master.zip
