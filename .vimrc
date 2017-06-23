autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

set fileformat=unix
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
set encoding=utf-8
scriptencoding utf-8

if has("gui_running")
	if has("win32")
		source $VIMRUNTIME/mswin.vim
		behave mswin
		set shell=C:\Windows\system32\cmd.exe

		set lines=46 columns=167
		set guifont=Fira\ Mono:h10:cANSI
	endif

	set guioptions -=m
	set guioptions -=T

	colorscheme gruvbox
	let g:gruvbox_contrast_dark='hard'
	let g:gruvbox_contrast_light='hard'

	"set background=dark
	"colorscheme solarized

	set listchars=tab:\¦-,eol:-,trail:x
	set list
else
	set mouse=a

	set background=dark
	colorscheme solarized
endif

set nobackup
set nowritebackup

set ruler
set cursorline
set scrolloff=10
set textwidth=80
set tabstop=4
set shiftwidth=4
set autoindent
set number
set noshowmode
set laststatus=2
syntax enable

let g:loaded_matchparen=1

let g:airline_left_sep=''
let g:airline_left_alt_sep=''
let g:airline_right_sep=''
let g:airline_right_alt_sep=''
let g:airline_powerline_fonts=0
