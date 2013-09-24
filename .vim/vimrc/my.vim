" Check if we have 256 support
if $COLORTERM == 'mate-terminal' || $COLORTERM == 'gnome-terminal'
	" Now we know we have it, then use it!
	set t_Co=256
endif

" Now that we have 256bit color, we can set our colorscheme
color vimtana

" Turn on auto indention and make it smart! :)
set autoindent
set smartindent

" Add a bit extra margin to the left
set foldcolumn=1

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

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

" lets hide the mode as we are using vim-airline for this :)
set noshowmode

" We need line numbers right? :)
set number

" Turn on the ruler so that we can always see the cursor position
set ruler

" Show the cursor's current line highlight
set cursorline

" Show the cmd and set height to 1 cause it looks better now that we have tmux
" setup to look like powerline/airline
set showcmd
set cmdheight=1

" turn on the wildmenu cause we love being wild
set wildmenu
set wildmode=full

" Ignore compiled files AND VCS files for git, mercurial and svn, these are
" the more common VCS that i use in my projects
set wildignore=*.o,*~,*.pyc

if has("win16") || has("win32")
	set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
	set wildignore+=.git\*,.hg\*,.svn\*
endif

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Enable mouse so we can move splits and stuff
set mouse=a

" Enable system clipboard
set clipboard=unnamed

" Set encoded character set
set encoding=utf-8

" Lets show what we are searching for, might help us a bit
set hlsearch

" lets start searching as soon as we type
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw 

" For regular expressions turn magic on
set magic

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Set some whitespace characters
set list listchars=tab:\›\ ,trail:-,extends:>,precedes:<,eol:¬

" Set tab settings to 4 spaces and no expand tab
set smarttab
set noexpandtab
set tabstop=4
set shiftwidth=4

" Wrapping is for noobs :D hahaha!
set nowrap

" Lets actually turn on syntax highlighting, might be usefull for coding :p
syntax on

" Turn on plugin and indent support
filetype plugin on
filetype indent on

" Disable arrow keys
no	<down>	<Nop>
no	<left>	<Nop>
no	<right>	<Nop>
no	<up>	<Nop>
ino	<down>	<Nop>
ino	<left>	<Nop>
ino	<right>	<Nop>
ino	<up>	<Nop>
vno	<down>	<Nop>
vno	<left>	<Nop>
vno	<right>	<Nop>
vno	<up>	<Nop>

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap	<M-j> mz:m+<cr>`z
nmap	<M-k> mz:m-2<cr>`z
vmap	<M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap	<M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vno		<silent> * :call VisualSelection('f', '')<CR>
vno		<silent> # :call VisualSelection('b', '')<CR>

" Smart way to move between windows
map		<C-j> <C-W>j
map		<C-k> <C-W>k
map		<C-h> <C-W>h
map		<C-l> <C-W>l

" map Ctrl+\ to open the tag in a new tab
no		<C-\>			:tab split<CR>:exec("tag ".expand("<cword>"))<CR>

" Convert Selenium selenese test into PHPUnit Selenium RC
no		<leader>csw		:%s/\t//g<CR>:%s/\n//g<CR>:%s/\(.*\)<title>\(.*\)<\/title>\(.*\)<tbody>\(.*\)<\/tbody>\(.*\)/<?php\r<!--require the Sauceium.php file-->require_once "PHPUnit\/Extensions\/Sauceium.php";\r\rclass WU_\2\ Extends PHPUnit_Extensions_Sauceium {\r\rpublic function test_wu_\2() {\r<!--function_start-->\4<!--function_end-->}\r}\r/g<CR>:%s/<!--/\r<!--/g<CR>:%s/<!--\(.*\)-->/\/\/ \1\r/g<CR>:g/'/s/'/\\'/g<CR>:%s/<\/tr>/<\/tr>\r/g<CR>:%s/<tr><td>\(.*\)<\/td><td>\(.*\)<\/td><td>\(.*\)<\/td><\/tr>/\$this->\1('\2', '\3');\r/g<CR>:g/$this->open/s/&amp;/\&/g<CR>:g/$this->.*(.*, '+.*');/s/+/\\+/g<CR>:g/verify/s/verify/assert/g<CR>:g/assertLocation/s/assert/waitFor/g<CR>:g/$this->echo/s/\(.*\)/\/\/ \1/g<CR>:g/&[a-zA-Z]\+;/s/$this->\(.*\)('\(.*\)', '\(.*\)');/$this->\1(html_entity_decode('\2'), '\3');/g<CR>:%s/, ''//g<CR>:g/$this->pause/s/$this->pause(.*'\(.[0-9]*\).*');/usleep(\1000);/g<CR>:set filetype=php<CR>gg=G

" Remove all trailing whitespace
no		<leader>r		:g/\s\+$/s/\s\+$//g<CR>

" map leader+o to CtrlPTag search
no		<leader>o		:CtrlPTag<CR>

" map leader+i
no		<leader>i		:TagbarToggle<CR>


" END OF FILE
