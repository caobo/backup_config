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
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:tex_nine_config = {
 \'compiler': 'pdflatex',
 \'viewer': {'app':'open', 'target':'pdf'},
\}

Plug 'ervandew/supertab'

Plug 'Raimondi/delimitMate'

Plug 'bling/vim-airline'
let g:airline_theme='kalisi'
let g:airline_powerline_fonts = 1
set laststatus=1

Plug 'itchyny/calendar.vim'
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

Plug 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 1
let g:indent_guides_color_change_percent = 30
let g:indent_guides_guide_size = 1

Plug 'Rykka/riv.vim'
let note = { 'path': '~/Documents/Notes',}
let g:riv_projects = [note]
let g:riv_disable_folding = 1

"----------------------------------
call plug#end()

"==================================
"        key Settings             |
"==================================
command! -nargs=1 Ns vimgrep "<args>" $NOTES_DIR/**/* | copen
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
set grepprg=grep\ -nH\ $*
" 开启实时搜索功能
set incsearch
" vim 自身命令行模式智能补全
set wildmenu
set wildmode=longest:list,full
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 将制表符扩展为空格
set expandtab
set nu
syntax enable
syntax on
set bsdir=buffer
set autochdir
set nobackup
set noswapfile
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
set guifont=Monaco\ for\ Powerline\ Regular\ 16
set cursorline
colorscheme kalisi
set background=dark
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
