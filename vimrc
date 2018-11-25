" Vim app settings
set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" Plugins
" -----------------------------------------------------------------------------

Plugin 'gmarik/vundle'

" Colours
Plugin 'altercation/vim-colors-solarized'

" Functionality
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails.git'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-surround'
Plugin 'ddollar/nerdcommenter'
Plugin 'mileszs/ack.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'myusuf3/numbers.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-repeat'
Plugin 'docunext/closetag.vim'
Plugin 'junegunn/fzf', { 'dir': '/usr/local/opt/fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'Konfekt/FastFold'

" TextMate Snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

filetype plugin indent on

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
" Ctrl-p for fzf to mirror Ctrl-p behaviour
map <C-p> :Files<CR>
" vim-gitgutter hunk add
nmap <Leader>ha <Plug>GitGutterStageHunk
" vim-gitgutter hunk revert
nmap <Leader>hr <Plug>GitGutterUndoHunk
" Ack
nmap <Leader>a :Ack!
nmap <Leader>s :call Search("")<left><left>

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

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

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
" Slightly shorter line-length for commit messages
autocmd Filetype gitcommit setlocal spell textwidth=72 cc=72

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

" FastFold settings
nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']
let g:ruby_fold = 1

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

" Always show gitgutter – annoying that it moves around all the time
if exists('&signcolumn')  " Vim 7.4.2201
  set signcolumn=yes
else
  let g:gitgutter_sign_column_always = 1
endif

" Use ag with ack.vim
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Fix searches leaking in to terminal output
" https://github.com/mileszs/ack.vim/issues/18
function Search(string) abort
  let saved_shellpipe = &shellpipe
  let &shellpipe = '>'
  try
    execute 'Ack!' shellescape(a:string, 1)
  finally
    let &shellpipe = saved_shellpipe
  endtry
endfunction

" Solarized theme for Airline
let g:airline_theme='solarized'
