call plug#begin('~/.local/share/nvim/plugged')
Plug 'VundleVim/Vundle.vim'
Plug 'derekwyatt/vim-scala'
Plug 'kchmck/vim-coffee-script'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'rust-lang/rust.vim'
Plug 'udalov/kotlin-vim'
call plug#end()

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
