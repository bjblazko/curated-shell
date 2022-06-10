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
curl -Lo xsv.tar.gz "https://github.com/BurntSushi/xsv/releases/latest/download/xsv-${XSV_VERSION}-x86_64-unknown-linux-musl.tar.gz"
sudo tar xf xsv.tar.gz -C /usr/local/bin