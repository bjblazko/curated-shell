#!/bin/sh

#
# Run this with:
# curl "https://raw.githubusercontent.com/bjblazko/curated-shell/main/install.sh" | /bin/bash
#

echo "Install stuff..."
sudo apt-get -y install zsh

[ -d "~/powerlevel10k" ] && rm -rf ~/powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
curl -o ~/.p10k.zsh "https://raw.githubusercontent.com/bjblazko/gcp-shell/main/p10k.zsh"
curl -o ~/.zrsrc "https://raw.githubusercontent.com/bjblazko/gcp-shell/main/zshrc"

exec zsh
