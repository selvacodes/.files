"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VUNDLE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set the runtime path to include Vundle and initialize
filetype plugin off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'L9'

" Bubble text lines


" Color Scheme
Plugin 'arcticicestudio/nord-vim'

" Status Bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" whitespace
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'ervandew/supertab'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'AutoComplPop'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdcommenter'
Plugin 'wincent/ferret'
Plugin 'tpope/vim-unimpaired'

"Plugin 'devjoe/vim-codequery'
Plugin 'sheerun/vim-polyglot'
Plugin 'pangloss/vim-javascript'
Plugin 'mitermayer/vim-prettier'
Plugin 'flowtype/vim-flow'
Plugin 'w0rp/ale'

Plugin 'leafgarland/typescript-vim'
Plugin 'quramy/tsuquyomi'

Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer'
Plugin 'sebastianmarkow/deoplete-rust'

" haskell
"Plugin 'dag/vim2hs'
"Plugin 'eagletmt/ghcmod-vim'
"Plugin 'eagletmt/neco-ghc'
"Plugin 'raichoo/haskell-vim'
"Plugin 'raichoo/purescript-vim'



call vundle#end()            " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"SETTINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required

" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin indent on

" Set to auto read when a file is changed from the outside
set autoread

au CursorHold * checktime

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
set wildignore+=*\\node_modules\\*,*.swp,*.zip,*.exe

"Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hidden

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells

" set novisualbell
set t_vb=
set tm=500

set expandtab

" AutoSave
:set autowrite
:au InsertLeave,FocusLost * :wa

" Add new file types
au BufRead,BufNewFile *.purs setfiletype purescript
au BufRead,BufNewFile *.js  setfiletype javascript
au BufRead,BufNewFile *.rs  set filetype=rust
au BufRead,BufNewFile *.ts  set filetype=typescript


""Line Numbers
" set number                     " Show current line number

" set relativenumber             " Show relative line numbers

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable
syntax on

"colorscheme PaperColor
colorscheme nord
let g:solarized_termtrans = 1
let g:solarized_termcolors = 256
set background=dark
let &t_Co=256
let t_Co=256

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Cursor Line in Normal mode
:hi CursorLine   cterm=NONE ctermbg=blue ctermfg=white guibg=blue guifg=white
:hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=white guifg=white

autocmd InsertLeave,WinEnter,BufEnter * set cursorline
autocmd InsertEnter,WinLeave,BufLeave * set nocursorline

" autocmd bufwritepost *.js silent !standard --fix %
set autoread

set colorcolumn=80

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" REMAPS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""
" => Major
""""""""""""""""""
" With a map leader it's possible to do extra key combinations
let mapleader = " "
let g:mapleader = " "

nnoremap <SPACE> <Nop>

" Fast saving
nmap - :Explore<cr>
nmap <leader>w :w!<cr>
nmap <leader>W :wall!<cr>
nmap zz :bd<cr>
nmap <leader>q :q<cr>

" change colon
map ; :

imap jj <esc>

" Multifile Search
nmap <leader>f :Ack<Space>

nmap <leader>e :FZF<CR>

""""""""""""""""
" => Misc
"""""""""""""""
"" Bubbling Lines
nmap <C-Up> [e
nmap <C-Down> ]e
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Speed up scrolling of the viewport slightly
nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>

"" file finder
map <leader>p :Prettier<cr>

"" word commplition
imap <leader>c <C-x><C-o>

"" Add spce below with out going to insert mode
nmap <leader>o ]<Space>

"" remove Highlight
nnoremap <leader>/ :noh<cr>

"Strip whitespace
nnoremap <leader>S :StripWhitespace<cr>

" Splits
nnoremap <leader>s <C-w>v<C-w>l
nnoremap <leader>; <C-w><C-w>
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
nnoremap <leader>x <C-w>q

"stay in word after search
nnoremap * *``

"No operations
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

""""""""""""""""""""""
" => vimrc
"""""""""""""""""""""
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>

:nnoremap <leader>sv :source $MYVIMRC<cr>

"""""""""""""""""""""
" => Buffers
"""""""""""""""""""""
" To open a new empty buffer
nmap <leader>t :enew<cr>

" Move to the next buffer
nmap <C-l> :bnext<CR>

" Move to the previous buffer
nmap <C-h> :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
" nmap <leader>bq :bp <BAR> bd #<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGINS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""
" => Airline
""""""""""""""
set guifont=Consolas:h11:cDEFAULT
autocmd GUIEnter * silent! :WCenter 100

let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#bufferline#enabled = 0
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
"let g:airline_theme = 'papercolor'
let g:airline_right_sep=''
let g:airline_left_sep=''
"let g:airline_extensions = ['syntastic']

"""""""""""""""""""""
" => Syntastic
"""""""""""""""""""""
"let g:syntastic_javascript_checkers = ['standard']

"""""""""""""""""""""
" => NETRW
"""""""""""""""""""""
let g:netrw_altv          = 1
let g:netrw_fastbrowse    = 2
let g:netrw_keepdir       = 0
let g:netrw_liststyle     = 3
let g:netrw_retmap        = 1
let g:netrw_silent        = 1
let g:netrw_special_syntax= 1

"""""""""""""""""""""
" => BUFFERGATOR
"""""""""""""""""""""
" Use the right side of the screen
let g:buffergator_viewport_split_policy = 'R'

" I want my own keymappings...
let g:buffergator_suppress_keymaps = 1

" View the entire list of buffers open
nmap <leader>n :BuffergatorToggle<cr>

let g:solarized_termtrans = 1

" HTML Indentation
"
"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
let g:html_indent_inctags ="address,article,aside,audio,blockquote,canvas,dd,div,dl,fieldset,figcaption,figure,footer,form,h1,h2,h3,h4,h5,h6,header,hgroup,hr,main,nav,noscript,ol,output,p,pre,section,table,tfoot,ul,video"


" Prettier
"
"
" print semicolons
 let g:prettier#config#semi = 'false'
 let g:prettier#config#single_quote = 'true'
 let g:prettier#config#use_tabs = 'false'
 let g:prettier#config#bracket_spacing = 'true'
 let g:prettier#config#trailing_comma = 'none'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Rust
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rustfmt_autosave = 1
set hidden

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Racer
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:racer_cmd = "/home/selva/.cargo/bin/racer"
let g:deoplete#sources#rust#racer_binary="/home/selva/.cargo/bin/racer"
let g:deoplete#sources#rust#rust_source_path="/home/selva/rust-src/rust/src"
let g:deoplete#sources#rust#disable_keymap=1

au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)

:set completeopt=longest,menuone
:inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" open omni completion menu closing previous if open and opening new menu without changing the text
inoremap <expr> <C-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
            \ '<C-x><C-o><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'
" open user completion menu closing previous if open and opening new menu without changing the text
inoremap <expr> <S-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
            \ '<C-x><C-u><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" JS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:javascript_plugin_flow = 1

let g:ale_sign_error = '>>'
let g:ale_sign_warning = '-'

" Write this in your vimrc file
let g:ale_lint_on_text_changed = 'never'

" You can disable this option too
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0

let g:ale_sign_column_always = 0

highlight clear ALEErrorSign
highlight clear ALEWarningSign

let g:ale_linters = {
\   'javascript': ['eslint'],
\}


"nmap <leader>l :ALELint<cr>



