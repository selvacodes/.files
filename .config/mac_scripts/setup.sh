#!/bin/bash
set -euo pipefail

echo "Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing global Homebrew packages"
brew bundle

cd ~

rm -rf ~/.config

cp -rf ~/.files/.config ~

cp ~/.config/mac_scripts/Brewfile ~

cp ~/.config/.vimrc ~

cp ~/.config/.zshrc ~

cp ~/.config/.tmux.conf ~

cd
git clone https://github.com/nojhan/liquidprompt.git
source liquidprompt/liquidprompt

echo "Installing Vim plugin manager"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Installing Vim plugins"
vim +PlugInstall +qall

