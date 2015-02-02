" Vim app settings
set nocompatible

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Key mappings
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

let mapleader = ","

map <leader>n :NERDTreeToggle<CR>

" Soft tabs
set smartindent
set expandtab
set shiftwidth=2
set tabstop=2

" Interface
syntax on
set number
set t_Co=256

" Colours
set background=dark
colorscheme solarized

" Clipboard
set clipboard=unnamed

" Stop background vim files being created
set noswapfile
set nobackup
set nowritebackup

" Show guideline for ideal width
set cc=80

" Focus display
vnoremap za <Esc>`<kzfgg`>jzfG`<

" ensure unix line endings
set ff=unix

set splitbelow
set splitright

Bundle 'gmarik/vundle'

Bundle 'tpope/vim-rails.git'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'kien/ctrlp.vim'
Bundle 'ddollar/nerdcommenter'
Bundle 'tpope/vim-fugitive'
Bundle 'mileszs/ack.vim'
Bundle 'Lokaltog/vim-powerline'

filetype plugin indent on
