#!/bin/bash
set -euo pipefail

#echo "Installing Homebrew"
#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#echo "oh my zsh"
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#echo "Liquid prompt"
#cd
#rm -rf liquidprompt
#git clone https://github.com/nojhan/liquidprompt.git
#source liquidprompt/liquidprompt

#echo "Moving stuff"

cd 

rm -rf ~/.config

cp -rf ~/.files/.config ~

cp ~/.config/mac_scripts/Brewfile ~

cp ~/.files/.vimrc ~

cp ~/.files/.zshrc ~

cp ~/.files/.tmux.conf ~

#echo "Installing global Homebrew packages"

#homebrew_packages=(
 ##"exa"
 ##"fasd"
 ##"fzf"
 ##"git-town"
 ##"netcat"
 ##"openconnect"
 ##"ranger"
 ##"ripgrep"
 ##"the_silver_searcher"
 ##"tig"
 ##"tmux"
 ##"vim"
 ##"w3m"
 ##"yarn"
 ##"zsh"
 #"zsh-completions"
 #"zsh-syntax-highlighting"
 #"koekeishiya/formulae/kwm"
 #)
#for homebrew_package in "${homebrew_packages[@]}"; do
	#brew install "$homebrew_package"
#done


echo "Installing Homebrew cask apps and fonts"
brew tap caskroom/fonts
homebrew_cask_packages=(
	#"font-fira-mono"
	#"font-iosevka"
	#"font-iosevka-nerd-font"
	#"font-iosevka-nerd-font-mono"
	"iterm2"
	#"keepingyouawake"
	#"google-chrome"
	#"firefox"
)
for homebrew_cask_package in "${homebrew_cask_packages[@]}"; do
	brew cask install "$homebrew_cask_package"
done

echo "Installing Vim plugin manager"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Installing Vim plugins"
vim +PlugInstall +qall

# ==================================================================
# MACOS
# ==================================================================

# KEYBOARD

#echo "Configuring key repeat"
#defaults write NSGlobalDomain KeyRepeat -int 1
#defaults write NSGlobalDomain InitialKeyRepeat -int 10

# HIDDEN FILES

echo "Configuring hidden files to show"
defaults write com.apple.finder AppleShowAllFiles YES
killall Finder

# MENU BAR

echo "Configuring menu bar to autohide"
defaults write NSGlobalDomain _HIHideMenuBar -bool true
killall Finder

# DOCK

echo "Configuring dock to autohide"
osascript <<EOD
  tell application "System Events"
    if (get autohide of dock preferences) is false then
      tell dock preferences to set autohide to not autohide
    end if
  end tell
EOD

