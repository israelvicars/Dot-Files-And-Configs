"PLUGINS

call plug#begin('~/.vim/plugged')

Plug 'AndrewRadev/ember_tools.vim'
Plug 'yalesov/vim-emblem'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'sheerun/vim-polyglot'
Plug 'vim-scripts/The-NERD-Commenter'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'godlygeek/tabular'
Plug 'sukima/vim-ember-imports'
Plug 'junegunn/vim-easy-align', { 'on': '<Plug>(EasyAlign)' }

call plug#end()

"NERDTree

let NERDTreeIgnore=[ 'node_modules', 'npm-debug.log', '.DS_Store', '\.swp$' ]
let NERDTreeShowHidden=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>

"ACK

let g:ack_default_options=" -s -H --nopager --nocolor --nogroup --column --ignore-dir=tmp --ignore-dir=dist --ignore-dir=node_modules --ignore-dir=.esm-cache"

"CTRL-P

set runtimepath^=~/.vim/plugged/ctrlp.vim
set wildignore+=*/tmp/*,*/node_modules/*,*/dist/*,*/WebApi/*
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_mruf_case_sensitive = 0

"VIM AIRLINE

let g:airline_theme='solarized'
let g:airline_solorized_bg='dark'
let g:airline_powerline_fonts=1

"ALL FILES

syntax on
set mouse=a
set showcmd
set belloff=all

set clipboard=unnamed

set tabstop=2
set shiftwidth=2
set autoindent
set expandtab
set smarttab

set number
set numberwidth=4
set linebreak
set showbreak=+++
set textwidth=100
set showmatch

set hlsearch
set smartcase
set ignorecase
set incsearch

set splitbelow
set splitright

set foldmethod=indent
set nofoldenable
set foldnestmax=10
set foldlevel=2

"MOVE SWAPFILES

set directory=~/.vim/swapfiles//
set backupdir=~/.vim/backups//

"FILE TYPES

au FileType coffee set sw=2 sts=2 ts=2 et
au FileType javascript set sw=2 sts=2 ts=2 et
au FileType stylus set sw=2 sts=2 ts=2 et
au FileType emblem set sw=2 sts=2 ts=2 et

"COMMANDS

command -range TabColon Tabularize /:\zs
command -range TabEqual Tabularize /=\zs
command -range TabFrom Tabularize /from

"AUTOCOMMANDS

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

"MAPS

" insert new lines from normal mode
nmap <CR> o<Esc>

" Align on return
vmap <Enter> <Plug>(EasyAlign)
