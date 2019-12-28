" Plugins management
call plug#begin('~/.vim/plugged')
    
Plug 'scrooloose/nerdtree'

call plug#end()

" Basic Configuration 
set relativenumber
set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=236
set showcmd
filetype indent on
set wildmenu
set lazyredraw
set ttyfast
set laststatus=2
set autoindent

" Enable syntax highlighting
syntax enable 

" Enable 256 colors palette in Gnome Terminal
set t_Co=256

" No backup file
set nobackup
set noswapfile
set noundofile
set nowritebackup

" Tab size 
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

" Leader key 
let mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Fast quitting
nmap <leader>q :q<cr>

" Always show current position
set ruler

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch 

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <C-space> ?

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><space> :nohlsearch<cr>

" Esc vim modes
imap jj <Esc>

" Nerdtree Configuration
map <C-b> :NERDTreeToggle<CR>
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap W $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>
nnoremap 0 <nop>
