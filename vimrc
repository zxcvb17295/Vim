"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" load plugins from vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let vundle manage vundle
Plugin 'VundleVim/Vundle.vim'

" utilities
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'terryma/vim-multiple-cursors'

" syntax
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'

" colorschemes
Plugin 'tomasr/molokai'


call vundle#end()
filetype plugin indent on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => User Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <C-n> :NERDTreeToggle<CR>

set laststatus=2
let g:airline_powerline_fonts = 1

let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai

set encoding=utf8
set t_Co=256
"set number
set relativenumber
set ic
set scrolloff=2
set tabstop=2
set shiftwidth=2
set expandtab
set cursorline
"set cursorcolumn
"set mouse=nv

syntax on
