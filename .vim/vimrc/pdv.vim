let g:pdv_template_dir = "~/.vim/templates/pdv/snip"
nnoremap <C-P> :call pdv#DocumentWithSnip()<CR>
inoremap <C-P> <ESC>:call pdv#DocumentWithSnip()<CR>
vnoremap <C-P> <ESC>:call pdv#DocumentWithSnip()<CR>
