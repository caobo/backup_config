"==================================
"        Plug-ins Settings        |
"==================================
set nocompatible
filetype on
filetype plugin on
filetype indent on

"-----Vim-plug Settings--------------
call plug#begin('~/.nvim/plugged')
"----------------------------------

"-----Plugins Settings-------------
Plug 'vim-scripts/TeX-9'
let g:tex_nine_config = {
			\'compiler': 'pdflatex',
			\'viewer': {'app':'open', 'target':'pdf'},
			\}

Plug 'ervandew/supertab'

Plug 'Raimondi/delimitMate'

Plug 'bling/vim-airline'
let g:airline_theme='kalisi'

Plug 'itchyny/calendar.vim'
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

Plug 'xolox/vim-notes'
let g:notes_directories = ['~/Documents/Notes','~/Documents/Notes/Experiments']

Plug 'xolox/vim-misc'

"----------------------------------
call plug#end()

"==================================
"        key Settings             |
"==================================
command! -nargs=1 Ngrep vimgrep "<args>" $NOTES_DIR/**/*
let mapleader = ";"
noremap nw <C-W>v
nnoremap nt :tabnew<cr>
nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
imap jk <esc>

"==================================
"        Functions                |
"==================================
let g:tex_flavor='latex'
set grepprg=grep\ -nH\ $*
let g:Tex_DefaultTargetFormat = 'pdf'
" 开启实时搜索功能
set incsearch
" vim 自身命令行模式智能补全
set wildmenu
set wildmode=longest:list,full
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
set nu
syntax enable
syntax on
set bsdir=buffer
set autochdir
set nobackup
set showcmd
set shortmess=atI
set report=0
set noerrorbells
set showmatch
set matchtime=5
set incsearch

"==================================
"        Looks                    |
"==================================
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T
set cursorline
colorscheme kalisi
"let g:solarized_termcolors=256
"let g:solarized_termtrans = 1
"let g:solarized_degrade = 1
"colorscheme solarized
set background=dark
