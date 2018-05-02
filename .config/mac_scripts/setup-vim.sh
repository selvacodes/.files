echo " → Installing Vim plugin manager"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo " → Installing Vim plugins"
vim +PlugInstall +qall
