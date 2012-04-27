:syntax on
:set expandtab
:set autoindent
:set smarttab
:set foldmethod=indent
:retab
:colorscheme evening
:filetype on
:filetype plugin on
:set tabstop=4
:set shiftwidth=4
:set cc=79
:set formatoptions=croql

:au FileType ruby set tabstop=2 shiftwidth=2
:au FileType lisp set tabstop=2 shiftwidth=2
:au BufRead,BufNewFile *.json set ft=json
:au BufRead,BufNewFile *.md set ft=markdown

set directory=$HOME/tmp
autocmd FileType make setlocal noexpandtab

call pathogen#infect()
