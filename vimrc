" Vim app settings
set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" Key mappings
" -----------------------------------------------------------------------------

" Disable arrow keys in normal mode
map <Up> <NOP>
map <Down> <NOP>
map <Left> <NOP>
map <Right> <NOP>

" Disable arrow keys in insert mode
imap <Up> <NOP>
imap <Down> <NOP>
imap <Left> <NOP>
imap <Right> <NOP>

" Split navigation
" By default Ctrl + W then Ctrl + DIRECTION
" This makes it just Ctrl + DIRECTION
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Leader key
let mapleader = ","

" § is left of 1 on UK Keyboards. Make it function as escape
inoremap § <esc>

" Enter / Shift + Enter for empty newlines
map <Enter> o<ESC>
map <S-Enter> O<ESC>

" Toggle folds
nnoremap <Space> za

" NERDTree
map <leader>t :NERDTreeToggle<CR>
" Toggle line numbers
nmap <leader>n :set number!<CR>
" Toggle paste mode
nmap <leader>p :set paste!<CR>
" Toggle search highlight
nmap <leader>l :nohlsearch<CR>

" General Settings
" -----------------------------------------------------------------------------

" Soft tabs
set smartindent
set expandtab
set shiftwidth=2
set tabstop=2
set smarttab " smart tab handling for indenting

" Interface
syntax on
set number
set t_Co=256
set laststatus=2 " Always show status bar
set lazyredraw " redraw only when we need to.

" Colours
colorscheme solarized
set background=light

" Attempt to set colour scheme based on iTerm profile
if $ITERM_PROFILE == 'Solarized Dark'
  " If the current iTerm tab has been
  " created using the **dark** profile:
  set background=dark
elseif $ITERM_PROFILE == 'Solarized Light'
  " If the current iTerm tab has been
  " created using the **light** profile:
  set background=light
endif

" Clipboard
set clipboard=unnamed
" remember undo after quitting
set hidden

" Stop background vim files being created
set noswapfile
set nobackup
set nowritebackup

" Show guideline for ideal width
set cc=80
" highight current line
set cursorline

" Focus display
vnoremap za <Esc>`<kzfgg`>jzfG`<

" ensure unix line endings
set ff=unix

" Better split opening
set splitbelow
set splitright

" Make backspace work properly
set backspace=indent,eol,start

" Add angle brackets to match pairs (HTML)
set matchpairs+=<:>

" Folding
set foldmethod=syntax
set foldlevelstart=99

" Faster updates (Mainly for git-gutter. Default is 4s)
set updatetime=250

" Search
" -----------------------------------------------------------------------------

" case insensitive searching
set ignorecase
" but become case sensitive if you type uppercase characters
set smartcase
" search as characters are entered
set incsearch
" highlight matches
set hlsearch
" wrap-around search
set wrapscan

" Plugins
" -----------------------------------------------------------------------------

Bundle 'gmarik/vundle'

" Colours
Bundle 'altercation/vim-colors-solarized'

" Functionality
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails.git'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-surround'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'ddollar/nerdcommenter'
Bundle 'mileszs/ack.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'myusuf3/numbers.vim'
Bundle 'Raimondi/delimitMate'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-repeat'

" TextMate Snippets
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'

filetype plugin indent on

" Always show gitgutter – annoying that it moves around all the time
if exists('&signcolumn')  " Vim 7.4.2201
  set signcolumn=yes
else
  let g:gitgutter_sign_column_always = 1
endif
