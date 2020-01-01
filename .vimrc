" Plugins management
call plug#begin('~/.vim/plugged')
    
Plug 'scrooloose/nerdtree'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'valloric/youcompleteme'
Plug 'dense-analysis/ale'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }

call plug#end()

" Enable Alt key
let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw

set timeout ttimeoutlen=50

" Enable 24-bit color
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" Basic Configuration 
syntax enable 
colorscheme onedark
set relativenumber
set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
" highlight CursorLine guibg=#303000 ctermbg=236
set showcmd
filetype indent on
set wildmenu
set lazyredraw
set ttyfast
set laststatus=2
set autoindent
set t_Co=256
set nobackup
set noswapfile
set noundofile
set nowritebackup
set expandtab
set smarttab
set ruler
set smartcase
set hlsearch
set incsearch 
set magic
set encoding=utf-8

" Set tab space for specific languages
autocmd Filetype python setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype php setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype html setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype typescript setlocal tabstop=2 shiftwidth=2 softtabstop=2 
autocmd Filetype css setlocal tabstop=2 shiftwidth=2 softtabstop=2

" Leader key 
let mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Fast quitting
nmap <leader>q :q<cr>

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
map <C-n> :NERDTreeToggle<CR>
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

" Line moving
nnoremap <A-j> :m +1<CR>==
nnoremap <A-k> :m -2<CR>==
inoremap <A-j> <Esc>:m +1<CR>==gi
inoremap <A-k> <Esc>:m -2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Vim-airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Fzf Configuration
set rtp+=~/.fzf

" Youcompleteme Configuraion
set completeopt-=preview
let g:ycm_semantic_triggers =  { 'c,cpp,php,python,javascript,typescript': [ 're!\w{2}' ] }
let g:ycm_show_diagnostics_ui = 0

" ALE Configuration
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️ '

