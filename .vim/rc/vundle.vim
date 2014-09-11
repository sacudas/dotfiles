" VUNDLE REQUIRED SETTINGS FOR VIM
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'SirVer/ultisnips'
Bundle 'Valloric/YouCompleteMe'
Bundle 'airblade/vim-gitgutter'
Bundle 'bling/vim-airline'
Bundle 'edkolev/promptline.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'shawncplus/phpcomplete.vim'
Bundle 'tobyS/pdv'
Bundle 'tobyS/vmustache'
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-surround'
"Bundle 'gregsexton/gitv'
"Bundle 'joonty/vdebug'
"Bundle 'majutsushi/tagbar'
"Bundle 'tpope/vim-fugitive'
"Bundle 'vim-scripts/Emmet.vim'

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
