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
Plugin 'easymotion/vim-easymotion'
Plugin 'Valloric/MatchTagAlways'
Plugin 'Yggdroot/indentLine'
Plugin 'tell-k/vim-autopep8'
Plugin 'jiangmiao/auto-pairs'

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
set backspace=indent,eol,start

let g:airline_powerline_fonts = 1

let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" indentLine
let g:indentLine_char='│'
let g:indentLine_enabled = 1

" autopep8
" $ pip install autopep8
let g:autopep8_disable_show_diff=1

let g:mta_use_matchparen_group = 1

let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai

set encoding=utf8
set t_Co=256
"set number
"set relativenumber
set ic
set scrolloff=4
set tabstop=2
set shiftwidth=2
set expandtab
set cursorline
"set cursorcolumn
"set mouse=nv

syntax on
