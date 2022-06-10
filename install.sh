#!/bin/sh

#
# See README.md
#

echo "Install stuff..."
sudo apt-get -y install zsh

[ -d "~/powerlevel10k" ] && rm -rf ~/powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
curl -o ~/.p10k.zsh "https://raw.githubusercontent.com/bjblazko/gcp-shell/main/resources/p10k.zsh"
curl -o ~/.zshrc "https://raw.githubusercontent.com/bjblazko/gcp-shell/main/resources/zshrc"
curl -o ~/gcp-shell-reinstall-tools.sh "https://raw.githubusercontent.com/bjblazko/gcp-shell/main/resources/reinstall-tools.sh"
curl -o ~/gcp-shell.md "https://raw.githubusercontent.com/bjblazko/gcp-shell/main/README.md"
chmod 0700 ~/.p10k.zsh
chmod 0700 ~/.zshrc
chmod +x ~/gcp-shell-reinstall-tools.sh
# Programs installed via apt-get will not survive since VM is killed regulary,
# thus, let us reinstall it...
echo 'nohup ~/gcp-shell-reinstall-tools.sh > /dev/null 2>&1 &' >> ~/.bashrc
echo "exec zsh" >> ~/.bashrc

echo 'Done'.
echo '  ____  ____ ____        _          _ _ '
echo ' / ___|/ ___|  _ \   ___| |__   ___| | |'
echo '| |  _| |   | |_) | / __|  _ \ / _ \ | |'
echo '| |_| | |___|  __/  \__ \ | | |  __/ | |'
echo ' \____|\____|_|     |___/_| |_|\___|_|_|'
echo 'Visit https://github.com/bjblazko/gcp-shell'
echo
echo 'Tips:'
echo '  - besides using the shell in the browser, you can also ssh into it using:'
echo '      > gcloud cloud-shell ssh'
echo '  - type the following to configure your prompt:'
echo '      > p10k configure'
echo '  - to consult the README, type:'
echo '      > bat ./gcp-shell.md'
echo '  - to install the recommended tools (again), type:'
echo '      > gcp-shell-reinstall-tools.sh'
echo ''
echo 'But NOW, please close your shell and re-open it. Then you should enjoy the new one!'