" Plugins
call plug#begin('~/.vim/plugged')
Plug 'treycucco/vim-monotonic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'prabirshrestha/vim-lsp'
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'
Plug 'rust-lang/rust.vim'
Plug 'airblade/vim-gitgutter'
Plug 'ervandew/supertab'
call plug#end()

" Theming
colorscheme monotonic-light
let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1

" Plugin configuration
" " GitGutter
set updatetime=100
set signcolumn=yes
autocmd FileType netrw,gitcommit setlocal signcolumn=no

" Tags
nmap <C-t> :TagbarToggle<CR>

" " Rust.vim
let g:rustfmt_autosave = 1

" Netrw
let g:netrw_banner = 0
let g:netrw_browse_split = 3
augroup ProjectDrawer
    autocmd!
    autocmd VimEnter * if argc() == 0 | Explore! | endif
augroup END

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

" Tab conf
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext <CR>
nnoremap <silent> <C-Down> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <C-Up> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>
