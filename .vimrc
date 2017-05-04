set nocompatible              " be iMproved, required
filetype off                  " required


syntax on

set number
set expandtab
set tabstop=4
set autoindent
set backspace=indent,eol,start

set hlsearch
set incsearch
set ignorecase

" Airline
set laststatus=2
set ttimeoutlen=50

" use different background color after 80 chars
" http://stackoverflow.com/questions/235439/vim-80-column-layout-concerns
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/


""" Vundle configuration
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

