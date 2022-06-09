#!/bin/sh

#
# Run this with:
# curl "https://raw.githubusercontent.com/bjblazko/curated-shell/main/install.sh" | /bin/bash
#

echo "Install stuff..."
sudo apt-get -y install zsh

[ -d "~/powerlevel10k" ] && rm -rf ~/powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
curl -o ~/.p10k.zsh "https://raw.githubusercontent.com/bjblazko/gcp-shell/main/resources/p10k.zsh"
curl -o ~/.zshrc "https://raw.githubusercontent.com/bjblazko/gcp-shell/main/resources/zshrc"
chmod 0700 ~/.p10k.zsh
chmod 0700 ~/.zshrc
echo "apt install -yq batcat figlet"
echo "exec zsh" >> ~/.bashrc

echo 'Done'.
echo '  ____  ____ ____        _          _ _ '
echo ' / ___|/ ___|  _ \   ___| |__   ___| | |'
echo '| |  _| |   | |_) | / __|  _ \ / _ \ | |'
echo '| |_| | |___|  __/  \__ \ | | |  __/ | |'
echo ' \____|\____|_|     |___/_| |_|\___|_|_|'
echo 'Visit https://github.com/bjblazko/gcp-shell'
echo
echo 'Please close your shell and re-open it. Then you should enjoy the new one!'
