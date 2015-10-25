" Setup Vundle
set nocompatible    " put in vim mode, required for vundle
filetype off        " required for vundle
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer'     " Must install racer first
" (see lj-ditrapani/init/rust.sh for installation)
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
set list        " Show white space
" set gfn=Lucida_Console:h9:cANSI
colorscheme darkblue "darkblue delek murphy
set directory=~/.vim/swap,.
syntax on


" For rust racer
" set hidden
" let g:racer_cmd = "~/fun/racer/target/release/racer"
" let $RUST_SRC_PATH="/home/ljd/local/rustc-1.3.0/src/"
