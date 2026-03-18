" install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set nocompatible                   " not strictly necessary but useful in some scenarii

filetype plugin indent on          " filetype detection and settings
syntax on                          " syntax highlighting

set textwidth=80                   " text width 80chars
let &wrapmargin= &textwidth        " text-wrapping
set formatoptions=croql            " don't hard-wrap long lines as typing, allow gq to work.

set number                         " show line number
set ruler                          " shows line number in the status line
    
set expandtab                      " tabs
set smarttab
set ts=2
set sw=2
set sts=-1

silent! runtime macros/matchit.vim " matchit comes with Vim
set backspace=indent,eol,start     " let the backspace key work "normally"
set hidden                         " hide unsaved buffers
set incsearch                      " incremental search rules
set laststatus=2                   " not strictly necessary but good for consistency
set switchbuf=useopen,usetab       " better behavior for the quickfix window and :sb
set tags=./tags;/,tags;/           " search tags files efficiently
set wildmenu                       " better command line completion, shows a list of matches
nnoremap gb :buffers<CR>:sb<Space> " quick buffer navigation

"vim-plug plugins
call plug#begin()
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
call plug#end()
