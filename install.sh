#!/bin/sh

#
# Run this with:
# curl "https://raw.githubusercontent.com/bjblazko/gcp-shell/main/install.sh" | sudo /bin/bash
#

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
