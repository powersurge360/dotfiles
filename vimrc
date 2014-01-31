set rtp+=$GOROOT/misc/vim
call pathogen#infect()

syntax on
set expandtab
set autoindent
set smarttab
set foldmethod=indent
retab
set t_Co=256
set background=dark
colorscheme jellybeans
filetype on
filetype plugin on
set tabstop=4
set shiftwidth=4
set cc=79
set nu
set ls=2
map j gj
map k gk
set backspace=2
set splitbelow

highlight clear SignColumn

set directory=/tmp
autocmd FileType make setlocal noexpandtab

let g:syntastic_objc_compiler = "clang"
let g:syntastic_java_checkers = []
let g:ycm_autoclose_preview_window_after_completion = 1
nnoremap <leader>d :YcmCompleter GoToDefinitionElseDeclaration<CR>

au BufNewFile,BufRead *.html setlocal filetype=htmldjango
au BufNewFile,BufRead *.ssi setlocal filetype=html
au BufNewFile,BufRead *.md setlocal filetype=markdown
au BufNewFile,BufRead *.md set spell
au BufNewFile,BufRead *.md set wrap
au BufNewFile,BufRead *.md set linebreak
au BufNewFile,BufRead *.md set nolist
au BufNewFile,BufRead *.markdown set spell
au BufNewFile,BufRead *.markdown set wrap
au BufNewFile,BufRead *.markdown set linebreak
au BufNewFile,BufRead *.markdown set nolist
au BufNewFile,BufRead *.php set autoindent
