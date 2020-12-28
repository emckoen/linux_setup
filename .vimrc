if has('gui_running')
    set guifont=Monospace\ 9
    set lines=999 columns=999
endif

colorscheme base16-default-dark
set number
filetype plugin indent on
"syntax on
set tabstop=4
set autoindent
set expandtab
set softtabstop=4

" Enable cursor line
set cursorline
hi CursorLine cterm=bold gui=bold ctermbg=235 guibg=Grey15

" show hidden characters in Vim
:set list
:set listchars=tab:>-,trail:-
" Show hidden hex characters
set isprint=
set display+=uhex

function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()
