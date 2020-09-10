" Plugins
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'mattn/vim-lsp-settings'
Plug 'rust-lang/rust.vim'
Plug 'airblade/vim-gitgutter'
Plug 'ervandew/supertab'
call plug#end()

" Theming
colorscheme 256_noir
let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1

" Plugin configuration
" " GitGutter
set updatetime=100
set signcolumn=yes
autocmd FileType netrw setlocal signcolumn=no

" " LSP
let g:lsp_diagnostics_echo_cursor = 1
function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <Plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <Plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    
    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

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
