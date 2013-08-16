" VUNDLE REQUIRED SETTINGS FOR VIM
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'git@github.com:gmarik/vundle.git'

" My Bundles here:
"
" original repos on github
Bundle 'git@github.com:tobyS/vmustache.git'
Bundle 'git@github.com:tobyS/pdv.git'
Bundle 'git@github.com:SirVer/ultisnips.git'
Bundle 'git@github.com:joonty/vdebug.git'
Bundle 'git@github.com:vim-scripts/greplace.vim.git'
Bundle 'git@github.com:airblade/vim-gitgutter.git'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
