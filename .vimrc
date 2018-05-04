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

Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

Plug 'w0rp/ale'
source ~/.config/vim/aleVimrc

Plug 'tpope/vim-vinegar'
source ~/.config/vim/netrwVimrc

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
source ~/.config/vim/languageServerVimrc

Plug 'lifepillar/vim-mucomplete'
source ~/.config/vim/completeVimrc

Plug 'leafgarland/typescript-vim'
Plug 'quramy/tsuquyomi'

Plug 'scrooloose/nerdcommenter'

Plug 'jremmen/vim-ripgrep'

Plug 'MartinLafreniere/vim-PairTools'

Plug 'reasonml-editor/vim-reason-plus'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'mattesgroeger/vim-bookmarks'

"Plug 'chriskempson/base16-vim' 

Plug 'andreypopp/vim-colors-plain'

call plug#end()

source ~/.config/vim/generalVimrc
source ~/.config/vim/remapsVimrc
source ~/.config/vim/colorVimrc

let g:airline#extensions#ale#enabled = 1
let g:bookmark_sign = '♥'
let g:bookmark_auto_close = 1

