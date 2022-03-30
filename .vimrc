if has('gui_running')
    set guifont=Monospace\ 8
    "set lines=999 columns=999
endif

colorscheme ron
"colorscheme base16-default-dark

set number
filetype plugin indent on
"syntax on
set tabstop=4
set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4

" Enable cursor line
set cursorline
hi CursorLine cterm=bold gui=bold ctermbg=235 guibg=Grey15

" show hidden characters in Vim
:set list
:set listchars=tab:>-,trail:-
" Show hidden hex characters
set isprint=
set display+=uhex

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" Remap leader key to comma
:let mapleader = ","

" Leader command mappings
nnoremap <silent> <leader>e :Explore<CR>
nnoremap <silent> <leader>v :Vexplore<CR>

