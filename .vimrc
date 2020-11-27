call plug#begin('~/.vim/plugged')
Plug 'francoiscabrol/ranger.vim' 
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-fugitive'
Plug 'jooize/vim-colemak'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
call plug#end()

set background=dark
highlight ColorColumn ctermbg=darkGrey
syntax on

let g:onedark_termcolors=256
let g:onedark_hide_endofbuffer=1
colorscheme onedark

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

set laststatus=2

set statusline=%<%f\ %h%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%)\ %P

silent! source "$HOME/.vim/bundle/vim-colemak/plugin/colemak.vim"

" Fix for colemak.vim keymap collision. tpope/vim-fugitive's maps y<C-G>
" and colemak.vim maps 'y' to 'w' (word). In combination this stalls 'y'
" because Vim must wait to see if the user wants to press <C-G> as well.
augroup RemoveFugitiveMappingForColemak
    autocmd!
    autocmd BufEnter * silent! execute "nunmap <buffer> <silent> y<C-G>"
augroup END

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

set guifont=Cascadia\ Code
