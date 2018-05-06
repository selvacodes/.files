# Install Homebrew
if test ! $(which brew)
then
  echo " → Installing Homebrew for package management..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo " → Installing global Homebrew packages"

homebrew_packages=(
 "ranger"
 "tree"
 "exa"
 "fasd"
 "fzf"
 "curl"
 "ripgrep"
 "the_silver_searcher"
 "tmux"
 "vim"
 "node"
 "yarn"
 "zsh"
 "zsh-completions"
 "zsh-syntax-highlighting"
 "chunkwm"
 "koekeishiya/formulae/kwm"
 )
for homebrew_package in "${homebrew_packages[@]}"; do
        brew install "$homebrew_package"
done


echo " → Installing Homebrew cask apps and fonts"

# Set up Cask, for Homebrew
brew tap caskroom/cask

# Set up Cask for Fonts
brew tap caskroom/fonts

homebrew_cask_packages=(
        "font-fira-mono"
        "font-iosevka"
        "keepingyouawake"
        "google-chrome"
        "firefox"
)
for homebrew_cask_package in "${homebrew_cask_packages[@]}"; do
	brew cask install "$homebrew_cask_package"
done
