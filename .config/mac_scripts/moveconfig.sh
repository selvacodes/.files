echo " → Moving Stuff"

link_files () {
  ln -s $1 $2
  success "linked $1 to $2"
}

cd 

rm .vimrc .zshrc .tmux.conf

rm -rf ~/.config

cp -rf ~/.files/.config ~

link_files ~/.files/.vimrc $HOME/.vimrc

link_files ~/.files/.zshrc $HOME/.zshrc

link_files ~/.files/.tmux.conf $HOME/.tmux.conf
