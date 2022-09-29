call pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin indent on
au BufNewFile,BufRead *.wsdl set filetype=xml

set nocompatible

set t_Co=256

set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

set autoindent
set smarttab

set wrap
set number
set ruler

set title
set hlsearch

" Search down into subfolders
set path+=**
set wildmenu

" yaml file type settings
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" golang settings
let g:go_fmt_command = "goimports"
