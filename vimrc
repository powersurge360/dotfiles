:syntax on
:set expandtab
:set autoindent
:set smarttab
:set foldmethod=indent
:retab
:set t_Co=256
:colorscheme torte
:filetype on
:filetype plugin on
:set tabstop=4
:set shiftwidth=4
:set cc=79
:set rnu
:set ls=2

set directory=$HOME/tmp
autocmd FileType make setlocal noexpandtab

au BufNewFile,BufRead *.html setlocal filetype=htmldjango

let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

call pathogen#infect()
