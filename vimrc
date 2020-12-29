"Load Plugins
execute pathogen#infect()
packloadall
silent! helptags ALL

"Basic Settings
set termguicolors
set nocompatible
set autoindent
set smartindent
set expandtab "use spaces instead of tabs
"set softtabstop=2
set tabstop=2
set shiftwidth=2
set shiftround "always go to actual tabs for example if im on column 3 and I hit >> go to column 4 not 5
set number
set showmatch "show matching bracket
set ruler
set incsearch
set hlsearch
set smartcase "search results ignore case unless there are caps
set ignorecase
set backspace=indent,eol,start
set hidden "you don't have to save to switch buffers
set iskeyword+=_,$,@,%,#,- "none of these are word dividers
set relativenumber
set colorcolumn=100
syntax on
filetype plugin on
filetype plugin indent on

" Colorscheme
colorscheme molokai
let g:rehash256 = 1
highlight ColorColumn ctermbg=8


let mapleader = "\<Space>"
"copy and paste to system clipboard with <space>p and <space>y
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
nnoremap <Leader>wqa :wqa<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>w :w<CR>

let python_hilight_all = 1

set wildmenu " turn on command line completion wild style
" ignore these list file extensions
set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png
"set wildmode=list:longest " turn on wild mode huge list
set backupdir=~/.vim/backups,/var/tmp,/tmp
set backup

set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" .ino (arduino) files are c
au BufNewFile,BufRead *.ino set filetype=c

" bash-style tab completion
set wildmode=longest,list
command Wordcount w ! wc -w | cut -d' ' -f 1

" Nerd Tree
map <C-n> <ESC>:NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map Ag ag

" Ale config
let g:airline#extensions#ale#enabled = 1
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'
let b:ale_linters = ['flake8', 'pylint']

"Airline config
let g:airline_theme='tomorrow'
let g:airline_enable_branch=1
let g:airline_detect_whitespace=1
let g:airline_powerline_fonts=1
let g:airline_skip_empty_sections = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'


" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''

" Better whitespace
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

