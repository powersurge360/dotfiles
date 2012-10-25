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

:au BufRead,BufNewFile *.json set ft=json
:au BufRead,BufNewFile *.md set ft=markdown
:au BufRead,BufNewFile *.html set ft=htmldjango
:au BufRead,BufNewFile *.rb set tabstop=2
:au BufRead,BufNewFile *.rb set shiftwidth=2

set directory=$HOME/tmp
autocmd FileType make setlocal noexpandtab

call pathogen#infect()

:nnoremap <F5> :GundoToggle<CR>
