set noexpandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set clipboard=unnamedplus
set hlsearch
set incsearch
set shell=/bin/zsh
set backspace=2
set guicursor=""

set termguicolors
set background=dark
command! Light colorscheme xcodelight
command! Dark colorscheme xcodedark
command! Slight execute "colorscheme solarized8 | set background=light"
command! Sdark execute "colorscheme solarized8 | set background=dark"
Dark
syntax on
set number

set guifont=JuliaMono\ 12
set guioptions-=m
set guioptions-=T

set encoding=utf-8
syntax spell toplevel
command! Es execute "set spelllang=es spell | set spellfile="
command! En execute "set spelllang=en_gb spell | set spellfile=~/.vim/spell/maths.utf-8.add"
En

command! NT execute "NERDTree"
map <C-n> :NERDTreeToggle<CR>

noremap J :m '>+1<CR>gv=gv
noremap K :m '<-2<CR>gv=gv

let g:mapleader=" "
nnoremap <leader>n :noh<CR>

imap \'a á
imap \'e é
imap \'i í
imap \'o ó
imap \'u ú
imap \~n ñ
imap \"u ü

imap \'A Á
imap \'E É
imap \'I Í
imap \'O Ó
imap \'U Ú
imap \~N Ñ

imap <F3> <C-R>='`'.strftime('%Y-%m-%d ').toupper(strftime('%a' )).'`'<CR>

" VIM LATEX
filetype plugin on
let g:tex_flavor='latex'
let g:python_recommended_style=0
let g:Tex_SmartKeyQuote=0

augroup custom_filetypedetect 
	autocmd!
	autocmd BufRead,BufNewFile *.m,*.oct set filetype=octave 
	autocmd BufNewFile,BufRead *.cls,*.ins,*.bib set filetype=tex
	autocmd BufNewFile,BufRead *.wl,*.wls,*.nb set filetype=mma
	autocmd BufRead,BufNewFile *.g,*.gi,*.gd set filetype=gap comments=s:##\ \ ,m:##\ \ ,e:##\ \ b:#
augroup END 

augroup yaml
	autocmd!
	autocmd BufNewFile,BufReadPost *.yaml,yml set filetype=yaml foldmethod=indent
	autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
augroup END

augroup filetype_settings
	autocmd!
	autocmd FileType c,python set cc=80
	autocmd FileType python setlocal expandtab
	autocmd FileType tex setlocal indentexpr=
augroup END

" Use closetag plugin in php files.
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.php'
