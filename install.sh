#!/bin/sh

#
# Run this with:
# curl "https://raw.githubusercontent.com/bjblazko/curated-shell/main/install.sh" | /bin/bash
#

echo "Install stuff..."
sudo apt-get -yq install zsh

[ -d "~/powerlevel10k" ] && rm -rf ~/powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
curl -o ~/.p10k.zsh "https://raw.githubusercontent.com/bjblazko/gcp-shell/main/p10k.zsh"
