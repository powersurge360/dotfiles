call plug#begin()

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
"
" Themes
Plug 'nanotech/jellybeans.vim'
Plug 'morhetz/gruvbox'
Plug 'chriskempson/base16-vim'

" IDE functionality
Plug 'tpope/vim-rails'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'sjl/gundo.vim'
Plug 'scrooloose/syntastic'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'jmcantrell/vim-virtualenv'
Plug 'hsanson/vim-android'
Plug 'valloric/YouCompleteMe'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-sleuth'

" Aesthetics
Plug 'ap/vim-css-color'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'ryanoasis/vim-devicons'

" Other
Plug 'chrisbra/csv.vim'

call plug#end()

syntax on
set expandtab
set autoindent
set smarttab
set foldmethod=indent
retab
set t_Co=256
set background=dark
let base16colorspace=256
colorscheme base16-eighties
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
let g:airline_powerline_fonts = 1
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
let g:ycm_autoclose_preview_window_after_completion = 1

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
au FileType java setlocal omnifunc=javacomplete#Complete
au FileType java call airline#parts#define_function('vim-gradle-status', 'gradle#statusLine')
au FileType java let g:airline_section_x= airline#section#create_right(['tagbar', 'filetype', 'vim-gradle-status'])

nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
imap <F4> <Plug>(JavaComplete-Imports-AddSmart)

nmap <F5> <Plug>(JavaComplete-Imports-Add)
imap <F5> <Plug>(JavaComplete-Imports-Add)

nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
imap <F6> <Plug>(JavaComplete-Imports-AddMissing)

nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)

nnoremap <leader>g :YcmCompleter GoTo<CR>
nnoremap <leader>d :YcmCompleter GetDoc<CR>
