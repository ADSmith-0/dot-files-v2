#!/usr/bin/env bash

# curl -LO https://github.com/zen-browser/desktop/releases/download/1.24.2b/zen.linux-x86_64.tar.xz
# sudo tar -xf zen.linux-x86_64.tar.xz -C /opt
# rm zen.linux-x86_64.tar.xz
# sudo ln -s /opt/zen/zen /usr/local/bin

sudo cat > /usr/share/applications/zen.desktop << EOF
[Desktop Entry]
Encoding=UTF-8
Version=1.0
Type=Application
Terminal=false
Exec=/usr/local/bin/zen
Name=Zen browser
Icon=/opt/zen/browser/chrome/icons/default/default64.png
EOF
