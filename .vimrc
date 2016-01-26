map <C-n> :NERDTreeToggle<CR>

let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

set number
"set relativenumber
set ic
set scrolloff=2
set tabstop=2
set shiftwidth=2
set expandtab
set cursorline
"set cursorcolumn
set mouse=nv

set t_Co=256
colorscheme molokai
execute pathogen#infect()

filetype indent on
syntax on
