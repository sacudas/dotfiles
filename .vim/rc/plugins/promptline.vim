" We want the airline_insert theme
let g:promptline_theme = 'airline'

" We also need a custom preset to make the prompt look nice!
let g:promptline_preset = {
	\'a'		:	[ promptline#slices#user() ],
	\'b'		:	[ promptline#slices#host() ],
	\'c'		:	[ promptline#slices#cwd() ],
	\'y'		:	[ promptline#slices#vcs_branch() ],
	\'z'		:	[ promptline#slices#git_status() ],
	\'warn'	:	[ promptline#slices#last_exit_code() ]
\}

