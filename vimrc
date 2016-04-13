call plug#begin()

Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'sjl/gundo.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'scrooloose/syntastic'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-sleuth'
Plug 'jmcantrell/vim-virtualenv'
Plug 'morhetz/gruvbox'
Plug 'valloric/YouCompleteMe'

call plug#end()

syntax on
set expandtab
set autoindent
set smarttab
set foldmethod=indent
retab
set t_Co=256
set background=dark
colorscheme gruvbox
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
let g:syntastic_java_javac_config_file_enabled = 1
let g:syntastic_python_flake8_args = "--max-complexity=10"
let g:syntastic_javascript_checkers = ["eslint"]

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

au BufNewFile,BufRead *.html setlocal filetype=htmldjango
au BufNewFile,BufRead *.j2 setlocal filetype=django
au BufNewFile,BufRead *.ssi setlocal filetype=html
au BufNewFile,BufRead *.md setlocal filetype=markdown
au BufNewFile,BufRead *.deface setlocal filetype=html.eruby
au BufNewFile,BufRead *.jbuilder setlocal filetype=ruby
au BufNewFile,BufRead *.md set wrap
au BufNewFile,BufRead *.md set linebreak
au BufNewFile,BufRead *.md set nolist
au BufNewFile,BufRead *.md set spell
au BufNewFile,BufRead *.markdown set spell
au BufNewFile,BufRead *.markdown set wrap
au BufNewFile,BufRead *.markdown set linebreak
au BufNewFile,BufRead *.markdown set nolist
au BufNewFile,BufRead *.php set autoindent
