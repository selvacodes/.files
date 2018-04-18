#!/bin/bash
set -euo pipefail

#echo "Installing Homebrew"
#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Installing global Homebrew packages"

cd 

rm -rf ~/.config

cp -rf ~/.files/.config ~

cp ~/.config/mac_scripts/Brewfile ~

cp ~/.files/.vimrc ~

cp ~/.files/.zshrc ~

cp ~/.files/.tmux.conf ~

cd
rm -rf liquidprompt
git clone https://github.com/nojhan/liquidprompt.git
source liquidprompt/liquidprompt

echo "Installing Vim plugin manager"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Installing Vim plugins"
vim +PlugInstall +qall

brew bundle


