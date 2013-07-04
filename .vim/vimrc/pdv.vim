let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <buffer> <C-p> :call pdv#DocumentWithSnip()<CR>
inoremap <buffer> <C-p> <ESC>:call pdv#DocumentWithSnip()<CR>
vnoremap <buffer> <C-p> <ESC>:call pdv#DocumentWithSnip()<CR>
