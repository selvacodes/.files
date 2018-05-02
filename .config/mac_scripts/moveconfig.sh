echo " → Moving Stuff"

success () {
   printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

link_files () {
  ln -s $1 $2
  success "linked $1 to $2"
}

cd 

rm .vimrc .zshrc .tmux.conf .zimrc .chunkwmrc

rm -rf $HOME/config

cp -rf $HOME/.files/.config $HOME/

link_files $HOME/.files/.chunkwmrc $HOME/.chunkwmrc

link_files $HOME/.files/.vimrc $HOME/.vimrc

link_files $HOME/.files/.zimrc $HOME/.zimrc

link_files $HOME/.files/.zshrc $HOME/.zshrc

link_files $HOME/.files/.tmux.conf $HOME/.tmux.conf
