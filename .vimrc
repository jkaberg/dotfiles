"let g:vundle_default_git_proto = 'git'
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Saltstack/Salt-vim'
Plugin 'nvie/vim-flake8'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim'}
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'altercation/vim-colors-solarized'
call vundle#end()            " required
filetype plugin indent on    " required

set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set number
set showmatch
set hlsearch
set ignorecase
set smartcase
set clipboard=unnamed1

" python
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

let g:syntastic_python_checkers = ['flake8']
let python_highlight_all=1
syntax on

" end python

set fileencoding=utf-8
set encoding=utf-8
set termencoding=utf-8
set pastetoggle=<F9>

set t_Co=256
"set background=dark
"colorscheme molokai
