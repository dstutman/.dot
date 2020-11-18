" Disable legacy compat
set nocompatible

" Color and Highlighting
syntax enable
let &t_ut=''

" Line numbers
set number

" Filetypes
filetype plugin on

" Keep swap files out of the way
set directory^=$HOME/.cache/vim//

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

" Tab completion

"function! InsertTabWrapper()
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent><expr> <S-Tab> 
      \ pumvisible() ? "\<C-p>" : "\<S-TAB>"
"    let col = col('.') - 1
"    if !col || getline('.')[col - 1] !~ '\k'
"        return "\<tab>"
"    else
"        return "\<c-p>"
"    endif
"endfunction
"inoremap <expr> <tab> InsertTabWrapper()
"inoremap <s-tab> <c-n>

" Clear search
nnoremap <leader><space> :noh<cr>

" ALE
let g:ale_enabled = 1
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
set omnifunc=ale#completion#OmniFunc
let g:ale_set_balloons=1
let g:ale_linters = {'rust': ['cargo', 'analyzer']}
