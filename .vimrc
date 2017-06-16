set nocompatible
filetype off

" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

"syntax
Plugin 'Valloric/YouCompleteMe'
Plugin 'ekalinin/Dockerfile.vim'            "docker
Plugin 'Saltstack/Salt-vim'                 "salt
Plugin 'stephpy/vim-yaml'                   "salt
Plugin 'Glench/Vim-Jinja2-Syntax'           "salt
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'godlygeek/tabular'

"bling bling
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"colors
Plugin 'altercation/vim-colors-solarized'
call vundle#end()
filetype plugin indent on

"ultisnips
let g:UltiSnipsExpandTrigger="<c-f>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
autocmd FileType sls UltiSnipsAddFiletypes jinja "jinja snip

"airline
let python_highlight_all = 1
let g:airline#extensions#tabline#enable = 1

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:synastic_always_popluate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']

"misc
syntax on
colorscheme solarized

set laststatus=2
set pastetoggle=<F9>
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
set fileencoding=utf-8
set encoding=utf-8
set termencoding=utf-8
set t_Co=256
set backspace=indent,eol,start
