call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-sensible'
Plug 'mhinz/vim-signify'
call plug#end()
execute pathogen#infect()

" make vim more useful
set nocompatible
" enhance command-line completion
set wildmenu
" allow cursor keys in insert mode
set esckeys
" optimise for fast terminal connections
set ttyfast
" don't add empty newlines at the end of files
set binary
set noeol
" centralise backups, swapfiles, and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
		set undodir=~/.vim/undo
endif
" don't create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*,/var/tmp/*
" respect modeline in files
set modeline
set modelines=4
" enable syntax highlighting
syntax on
" 
set hidden
" make tabs as wide as 4 spaces
set tabstop=4
set shiftwidth=4
set smarttab
set history=1000
set undolevels=1000

" automatic commands
if has("autocmd")
	filetype plugin indent on
	autocmd filetype python set expandtab
endif
