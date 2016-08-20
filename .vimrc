" Setup Vundle
set nocompatible    " put in vim mode, required for vundle
filetype off        " required for vundle
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'rust-lang/rust.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'leafgarland/typescript-vim'
call vundle#end()
filetype plugin indent on    " required for vundle


set nu          " show line numbers
set nospell
" Don't use smartindent
" Not compatible with per-file indents
" causes copy/paste issues
set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4
set incsearch       " do incremental searching
set hlsearch
set ic              " case insensitive
set scs             " Smart Case (capital letters cause ic)
set backspace=indent,eol,start
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,default,latin1
set printoptions=paper:letter
" set gfn=Lucida_Console:h9:cANSI
colorscheme elflord "darkblue delek murphy desert elflord
set directory=~/.vim/swap,.
syntax on
autocmd BufNewFile,BufRead Jakefile set filetype=javascript
autocmd BufNewFile,BufRead *.adoc setf asciidoc
