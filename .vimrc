" Load VUNDLE FIRST! So that it will manage most other plugins!
source ~/.vim/rc/vundle.vim

" Load all our needed files! :D
source ~/.vim/rc/airline.vim
source ~/.vim/rc/ctrlp.vim
source ~/.vim/rc/gitgutter.vim
source ~/.vim/rc/nerdtree.vim
source ~/.vim/rc/pdv.vim
source ~/.vim/rc/promptline.vim
source ~/.vim/rc/ultisnips.vim
source ~/.vim/rc/ycm.vim

" Load language specific configs
source ~/.vim/rc/lang/php.vim

" Load MY.VIM LAST! so that we can override other configs
source ~/.vim/rc/my.vim
