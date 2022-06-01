#!/bin/sh

#
# Run this with:
# curl "https://raw.githubusercontent.com/bjblazko/gcp-shell/main/install.sh" | /bin/bash
#

[ -d "~/powerlevel10k" ] && rm -rf ~/powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
curl -o ~/.p10k.zsh "https://raw.githubusercontent.com/bjblazko/gcp-shell/main/p10k.zsh"

echo 'alias cat="batcat"' >> ~/.bashrc
echo 'alias coolshell="curl 'https://raw.githubusercontent.com/bjblazko/gcp-shell/main/coolshell.sh' | /bin/bash"' >>~/.bashrc
