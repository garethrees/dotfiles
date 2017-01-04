" Vim app settings
set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" Key mappings
" -----------------------------------------------------------------------------

" Disable arrow keys
map <Up> <NOP>
map <Down> <NOP>
map <Left> <NOP>
map <Right> <NOP>

imap <Up> <NOP>
imap <Down> <NOP>
imap <Left> <NOP>
imap <Right> <NOP>

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Leader key
let mapleader = ","
inoremap § <esc>

" NERDTree
map <leader>n :NERDTreeToggle<CR>

" Enter / Shift + Enter for empty newlines
map <Enter> o<ESC>
map <S-Enter> O<ESC>

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
"set background=light
set background=dark

" If the current iTerm tab has been
" created using the **dark** profile:
if $ITERM_PROFILE == 'Solarized Dark'
  set background=dark
endif

" If the current iTerm tab has been
" created using the **light** profile:
if $ITERM_PROFILE == 'Solarized Light'
  set background=light
endif

" Clipboard
set clipboard=unnamed
set hidden " remember undo after quitting

" Stop background vim files being created
set noswapfile
set nobackup
set nowritebackup

" Show guideline for ideal width
set cc=80
set cursorline " highight current line

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

" Search
" -----------------------------------------------------------------------------

set ignorecase " case insensitive searching
set smartcase " but become case sensitive if you type uppercase characters
set incsearch " search as characters are entered
set hlsearch " highlight matches
set wrapscan " wrap-around search

" Plugins
" -----------------------------------------------------------------------------

Bundle 'gmarik/vundle'

Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-rails.git'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'ddollar/nerdcommenter'
Bundle 'tpope/vim-fugitive'
Bundle 'mileszs/ack.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'myusuf3/numbers.vim'

" TextMate Snippets
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'

filetype plugin indent on
