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
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'sjl/gundo.vim'
Plug 'w0rp/ale'
Plug 'jmcantrell/vim-virtualenv'
Plug 'PieterjanMontens/vim-pipenv'
Plug 'valloric/YouCompleteMe'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-sleuth'
Plug 'vim-ruby/vim-ruby'
Plug 'jreybert/vimagit'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'

" Aesthetics
Plug 'ap/vim-css-color'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'ryanoasis/vim-devicons'

" Non-editor functionality
Plug 'vimwiki/vimwiki'
Plug 'ledger/vim-ledger'
Plug 'nathangrigg/vim-beancount'
Plug 'junegunn/goyo.vim'
Plug 'jceb/vim-orgmode'

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
filetype on
filetype plugin on
set tabstop=4
set cc=79
set nu
set ls=2
map j gj
map k gk
set backspace=2
set splitbelow
set conceallevel=0

if filereadable(expand("~/.vimrc_background"))
  source ~/.vimrc_background
endif

highlight clear SignColumn

set directory=/tmp
autocmd FileType make setlocal noexpandtab

let g:syntastic_objc_compiler = "clang"
let g:syntastic_python_flake8_args = "--max-complexity=10"
let g:syntastic_javascript_checkers = ["javascript/eslint"]
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:python_host_prog = '/usr/local/bin/python3'
let g:python3_host_prog = '/usr/local/bin/python3'
let g:ycm_python_binary_path = 'python'
let g:vimwiki_ext2syntax = {'.md': 'markdown' }
let g:vimwiki_conceallevel=0
let g:vimwiki_list = [{'ext': '.md', 'syntax': 'markdown'}]

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
au BufNewFile,BufRead *.wiki set linebreak
au BufNewFile,BufRead *.wiki set nolist
au BufNewFile,BufRead *.markdown set linebreak
au BufNewFile,BufRead *.markdown set nolist
au BufNewFile,BufRead *.php set autoindent

nnoremap <leader>g :YcmCompleter GoTo<CR>
nnoremap <leader>d :YcmCompleter GetDoc<CR>
nnoremap <c-p> :Files<CR>
nnoremap <c-f> :Ag<CR>
nnoremap <c-_> :BLines<CR>

map <c-o> :NERDTreeToggle<CR>
