set nu          " show line numbers
set nospell
" Don't use smartindent
" Not compatible with per-file indents
" causes copy/paste issues
set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4
set incsearch   " do incremental searching
set hlsearch
set nocompatible
set ic          " case insensitive
set scs         " Smart Case (capital letters cause ic)
set backspace=indent,eol,start
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,default,latin1
set printoptions=paper:letter
set list        " Show white space
"set gfn=Lucida_Console:h9:cANSI
colorscheme darkblue "darkblue delek murphy
set directory=~/.vim/swap,.

execute pathogen#infect()
syntax on
filetype plugin indent on
