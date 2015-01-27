"==================================
"        Plug-ins Settings        |
"==================================
"filetype on
"filetype plugin on
"filetype indent on

"-----Vundle Settings--------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"-----Plugins Settings-------------
Plugin 'gmarik/Vundle.vim'

Plugin 'vim-scripts/TeX-9'
let g:tex_nine_config = {
    \'compiler': 'xelatex',
    \'synctex': 1
\}

call vundle#end()            " required
filetype plugin indent on    " required
"=================================
"        key Settings             |
"==================================
let mapleader = ";"
nnoremap nw <C-W>v
nnoremap nt :tabe<cr>

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
"set expandtab
" 设置编辑时制表符占用空格数
"set tabstop=4
" 设置格式化时制表符占用空格数
"set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
"set softtabstop=4
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
