if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')

" Status Bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
source ~/.config/vim/airlineVimrc

Plug 'w0rp/ale'
source ~/.config/vim/aleVimrc

Plug 'tpope/vim-vinegar'
source ~/.config/vim/netrwVimrc

Plug 'lifepillar/vim-mucomplete'
source ~/.config/vim/completeVimrc

Plug 'scrooloose/nerdcommenter'

Plug 'jremmen/vim-ripgrep'

Plug 'MartinLafreniere/vim-PairTools'

Plug 'reasonml-editor/vim-reason-plus'

Plug 'arcticicestudio/nord-vim'

call plug#end()

source ~/.config/vim/generalVimrc
source ~/.config/vim/remapsVimrc
source ~/.config/vim/colorVimrc

