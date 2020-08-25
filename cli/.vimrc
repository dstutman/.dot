" Plugins
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
" Plug 'dense-analysis/ale'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'mattn/vim-lsp-settings'
Plug 'rust-lang/rust.vim'
call plug#end()

" Plugin configuration
" " ALE
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_linters = {'rust': ['analyzer']}
let g:ale_fixers = {'rust': ['rustfmt']}
let g:airline#extensions#ale#enabled = 1

set history=500
filetype plugin on
filetype indent on

" Auto read external changes
set autoread
au FocusGained,Bufenter * checktime

" :W sudo save
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

set so=7
set number

" Backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set showmatch
set mat=2

" Turn off bells
set noerrorbells
set novisualbell

" Turn off vim backups
set nobackup
set nowb
set noswapfile

" Tab conf
set expandtab
set smarttab
set ai
set si
set wrap

" Split conf
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright
