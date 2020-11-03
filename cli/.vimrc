" Disable legacy compat
set nocompatible

" Highlighting
syntax enable

" Filetypes
filetype plugin on

" Files
"" NetRW
let netrw_banner = 0
let netrw_browse_split = 3 
augroup ProjectDrawer
    autocmd!
    autocmd VimEnter * if argc() == 0 | Explore! | endif
augroup END

"" Path
set path=.,**
set wildmenu
set wildignore+=**/.git/**

""" Rust
set wildignore+=**/.cargo/**
set wildignore+=**/target/**
