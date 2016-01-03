map <C-n> :NERDTreeToggle<CR>

set number
"set relativenumber
set ic
set scrolloff=2
set tabstop=2
set shiftwidth=2
set cursorline
set cursorcolumn
set mouse=nv

set t_Co=256
colorscheme molokai
execute pathogen#infect()

filetype indent on
syntax on
