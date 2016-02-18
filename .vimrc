syntax on

set number
set expandtab
set tabstop=4
set autoindent
set backspace=indent,eol,start

set hlsearch
set incsearch
set ignorecase

" use different background color after 80 chars
" http://stackoverflow.com/questions/235439/vim-80-column-layout-concerns
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Syntax highlighting for gradle files
au BufNewFile,BufRead *.gradle setf groovy
au BufNewFile,BufRead *.sbt setf scala

""" Vundle configuration
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'derekwyatt/vim-scala'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

