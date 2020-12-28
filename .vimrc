if has('gui_running')
  colorscheme torte
  set guifont=Monospace\ 8
  set lines=999 columns=999
else
  colorscheme ron
endif

syntax on
autocmd BufNewFile,BufRead *.mbs set syntax=c
autocmd BufNewFile,BufRead *.qel set syntax=tcl
autocmd BufNewFile,BufRead *.sdl set syntax=verilog
autocmd BufNewFile,BufRead *.cmd set syntax=perl

set number
set cursorline
hi CursorLine cterm=bold gui=bold ctermbg=235 guibg=Grey15

" set smartindent

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" show hidden characters in Vim
:set list
:set listchars=tab:>-,trail:-

function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

" Show hidden hex characters
set isprint=
set display+=uhex
