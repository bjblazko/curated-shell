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
curl -o ~/.bash_aliases "https://raw.githubusercontent.com/bjblazko/gcp-shell/main/bash_aliases"


echo 'Done'.
echo '                      _           _       _          _ _"
echo '  ___ _   _ _ __ __ _| |_ ___  __| |  ___| |__   ___| | |"
echo ' / __| | | | '__/ _` | __/ _ \/ _` | / __| '_ \ / _ \ | |"
echo '| (__| |_| | | | (_| | ||  __/ (_| | \__ \ | | |  __/ | |"
echo ' \___|\__,_|_|  \__,_|\__\___|\__,_| |___/_| |_|\___|_|_|"
echo 'Visit https://github.com/bjblazko/curated-shell'
echo
echo '!!! EACH TIME you open a new ephemereal shell, enter "restore-shell" to install stuff again...'
echo
echo 'Please enter "exec zsh" and verify with "echo $SHELL" that you are using zsh'
