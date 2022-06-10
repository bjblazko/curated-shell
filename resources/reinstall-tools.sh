#!/bin/sh

sudo apt install -yq zsh \
    figlet \
    bat \
    gron \
    jc

#
# Install releases from Github: https://lindevs.com/install-xsv-on-ubuntu/
# Currently x86 - not portable to other archs
#

# xsv
XSV_VERSION=$(curl -s "https://api.github.com/repos/BurntSushi/xsv/releases/latest" | grep -Po '"tag_name": "\K[0-9.]+')
XSV_TAR="xsv.tar.gz"
curl -Lo "$XSV_TAR" "https://github.com/BurntSushi/xsv/releases/latest/download/xsv-${XSV_VERSION}-x86_64-unknown-linux-musl.tar.gz"
sudo tar xf "$XSV_TAR" -C /usr/local/bin
rm -f "$XSV_TAR"

# fx
antonmedv/fx/releases
FX_VERSION=$(curl -s "https://api.github.com/repos/antonmedv/fx/releases/latest" | grep -Po '"tag_name": "\K[0-9.]+')
FX_BIN="fx"
curl -Lo "$FX_BIN" "https://github.com/antonmedv/fx/releases/latest/download/${XSV_VERSION}/fx_linux_amd64"
chmod +x "$FX_BIN"
sudo mv "$FX_BIN" /usr/local/bin/
