call plug#begin('~/.vim/plugged')
Plug 'francoiscabrol/ranger.vim' 
call plug#end()
set number
set relativenumber 
let mapleader = "\<Space>"
  
map <Leader>f :Ranger<CR>
  
" set indent to 2 spaces
filetype plugin indent on
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
