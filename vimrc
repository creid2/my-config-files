" This doesn't actually *need* to be set here, but if I copy
" this over to some remote machine with /etc/vimrc that has
" a dark background config, I have problems reading things.
set background=light

" Use Vim settings rather than Vi settings
set nocompatible

" The line numbers to the left
set number

" words are wrapped around
set linebreak

set shiftwidth=4  " Sets the levels used by automatic indentation and >>
set tabstop=4     " Changes the width of the tab character
set expandtab     " Pressing tab inserts spaces
set smarttab      " Delete by the amount set by tabstop

" syntax highlighting
syntax on

" Autofolding
"set foldenable
set foldmethod=syntax
set foldlevelstart=20
" not sure. I think it holds indents based on filetype. 
" For example, stay tabbed in a function until a return statement
filetype indent plugin on
" highlight search terms
set hlsearch
" should ignore case when searching
set ignorecase
set smartcase

" difference between nnoremap and vnoremap is normal and visual mode. Pretty
" sure I want to have both
nnoremap j gj
vnoremap j gj
nnoremap k gk
vnoremap k gk

	" Taken from an online vim essay:
" Always show a status line
set laststatus=2
set statusline=%F%m%r%h		" file, modified, ro, help tags
set statusline+=\ [%{&ff}]%y	"file format (dos/unix) and type
set statusline+=\ %l/%L,%c		" lines/total, column
set statusline+=\ [%P]			" percentage in file

"" From the vimtutor thing, although it seems that Terminal
"" doesn't support the mouse. iTerm 2 does, however.
if has('mouse')
	set mouse=a
endif

" Makefiles need tabs, not spaces
autocmd FileType make set noexpandtab

" I want to indent by two spaces for HTML
" Also, apparently autocmd is au
au Filetype html set shiftwidth=2 tabstop=2
au Filetype rb set shiftwidth=2 tabstop=2

" <Space> as leader
let mapleader = " "

" Set <leader>c to copy to clipboard
map <leader>c :w !pbcopy<Return><Return>

" Set <leader>s to save (:w)
map <leader>s :w<Return>

" Set <leader>n to no highlight (:noh)
map <leader>n :noh<Return>

" Try mapping jkl in insert mode to <Esc> I think this'll make it easier on my
" fingers
inoremap jk <Esc>
