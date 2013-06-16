" Check if we have 256 support
if $COLORTERM == 'mate-terminal' || $COLORTERM == 'gnome-terminal'
	" Now we know we have it, then use it!
	set t_Co=256
endif

" Now that we have 256bit color, we can set our colorscheme
color distinguished

" Turn on auto indention
set ai

" turn on bracket matching/highlighting
set showmatch

" lets make the status size 2 so we can always see the last one
set laststatus=2

" Lets make a custom status format :)
set statusline=%<%F%h%m%r\ [%{&ff}]\ (%{strftime(\"%H:%M\ %d/%m/%Y\",getftime(expand(\"%:p\")))})%=%l,%c%V\ %P

" lets make the backspace key work similar to the git-bash (WIN32 VIM) version
set backspace=indent,eol,start

" vi compatibility is lame... hahaha
set nocompatible

" lets show the mode so we can tell what the hell we are doing
set showmode

" We need line numbers right? :)
set number

" Turn on the ruler so that we can always see the cursor position
set ruler

" Show the cursor's current line highlight
set cursorline

" Show the cmd and set height to 2
set showcmd
set cmdheight=2

" Enable mouse so we can move splits and stuff
set mouse=a

" Set encoded character set
set encoding=utf-8

" Set some whitespace characters
set list listchars=tab:\›\ ,trail:-,extends:>,precedes:<,eol:¬

" Set tab settings to 4 spaces and no expand tab
set noexpandtab
set tabstop=4
set shiftwidth=4

" Lets actually turn on syntax highlighting, might be usefull for coding :p
syntax on

" Turn on plugin and indent support
filetype plugin on
filetype indent on

" Disable arrow keys
no	<down>	ddp
no	<left>	<Nop>
no	<right>	<Nop>
no	<up>	ddkP
ino	<down>	<Nop>
ino	<left>	<Nop>
ino	<right>	<Nop>
ino	<up>	<Nop>
vno	<down>	<Nop>
vno	<left>	<Nop>
vno	<right>	<Nop>
vno	<up>	<Nop>

" Time to load pathogen ( And Pathogen will load our submodules )
execute pathogen#infect()

