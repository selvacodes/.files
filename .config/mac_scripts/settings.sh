#!/usr/bin/env bash

echo " → OSX settings"

# Ask for the administrator password upfront
sudo -v

# Enable repeat on keydown
defaults write -g ApplePressAndHoldEnabled -bool false

# Use current directory as default search scope in Finder
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool true

# Hide the Dock
defaults write com.apple.Dock autohide -bool TRUE;

# Set a blazingly fast keyboard repeat rate
#defaults write NSGlobalDomain KeyRepeat -int 1 

# Set a shorter Delay until key repeat
#defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Show the ~/Library folder
chflags nohidden ~/Library

# --------------–-------–--------–--------–-------–--–-----
# System interface and behaviour
# --------------–-------–--------–--------–-------–--–-----
# Use Dark theme
defaults write ~/Library/Preferences/.GlobalPreferences AppleInterfaceStyle Dark

#FINDER
# Show Path bar in Finder
defaults write com.apple.finder ShowPathbar -bool true

# Show Status bar in Finder
defaults write com.apple.finder ShowStatusBar -bool true

# Show hidden files
defaults write com.apple.finder AppleShowAllFiles -bool true

# Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# --------------–-------–--------–--------–-------–--–-----
# Trackpad, mouse and keyboard
# --------------–-------–--------–--------–-------–--–-----
# Enable tap to click
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

# Enable two-tap to right click
defaults write com.apple.AppleMultitouchTrackpad TrackpadRightClick -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true

