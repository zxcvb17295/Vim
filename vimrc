"==============================================================================
" => General & Basic Settings
"==============================================================================

set nocompatible            " Use Vim settings, not Vi defaults
set encoding=utf8           " Set default encoding to UTF-8
set t_Co=256                " Enable 256 colors
syntax on                   " Enable syntax highlighting

" Sensible defaults
set ic                      " Ignore case when searching
set smartcase               " But become case-sensitive if a capital is used
set scrolloff=4             " Keep 4 lines of context around the cursor
set backspace=indent,eol,start " Allow backspacing over everything in insert mode

" Tabs and Indentation
set tabstop=2               " Number of spaces a <Tab> counts for
set shiftwidth=2            " Size of an indent
set expandtab               " Use spaces instead of tabs

" UI Improvements
set laststatus=2            " Always show the status line (required by airline)
set wildmenu                " Enable enhanced command-line completion
set wildmode=full           " Autocomplete commands fully
set cursorline              " Highlight the current line
" set relativenumber          " Show relative line numbers for easier movement
" set number                  " Show absolute line numbers
" Consider creating a toggle for line numbers, e.g.:
" nnoremap <leader>n :set relativenumber!<CR>

" Enable persistent undo
" This will store undo history in ~/.vim/undodir, even after closing Vim
try
    set undodir=~/.vim/undodir
    set undofile
catch
endtry


"==============================================================================
" => Plugin Management with vim-plug
"==============================================================================
" vim-plug is a modern, fast plugin manager.
"
" Installation:
" 1. Download plug.vim and place it in ~/.vim/autoload/
"    (See https://github.com/junegunn/vim-plug for instructions)
" 2. Open Vim and run :PlugInstall to install the plugins listed below.

call plug#begin('~/.vim/plugged')

" --- General UI & Utilities ---
Plug 'vim-airline/vim-airline'  " The status bar
Plug 'Yggdroot/indentLine'      " Indentation guides
Plug 'jiangmiao/auto-pairs'     " Auto-close pairs of quotes, brackets, etc.
Plug 'tpope/vim-commentary'     " gc to comment/uncomment lines

" --- File & Git Management ---
" Lazy-load NERDTree on command
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" Lazy-load Fugitive on command
Plug 'tpope/vim-fugitive', { 'on': ['Gstatus', 'Gdiff', 'Gblame', 'Gcommit'] }

" --- Editing & Motion ---
Plug 'terryma/vim-multiple-cursors' " VSCode-like multiple cursors
Plug 'easymotion/vim-easymotion'      " Super-fast motions
Plug 'kana/vim-textobj-user'          " Support for custom text objects
Plug 'kana/vim-textobj-entire'        " 'ae' and 'ie' text objects for the entire file

" --- Language-specific (Lazy Loaded for speed) ---
Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
" Highlights matching HTML/XML tags
Plug 'Valloric/MatchTagAlways', { 'for': ['html', 'xml', 'jsx', 'tsx'] }

" --- Themes ---
Plug 'tomasr/molokai'           " Molokai colorscheme

call plug#end()

" This enables filetype-specific indentation and plugins
filetype plugin indent on


"==============================================================================
" => Plugin Configuration
"==============================================================================

" --- vim-airline ---
" NOTE: For the special symbols (arrows, etc.) to work, you must use a
" "Powerline-patched font" in your terminal settings.
" If you don't have one, your status bar might look "broken" (跑版).
let g:airline_powerline_fonts = 1
"
" **IF YOU HAVE ISSUES:** If you don't want to install a special font,
" uncomment the line below to use plain characters for the airline theme.
" let g:airline_powerline_fonts = 0

" --- NERDTree ---
map <C-n> :NERDTreeToggle<CR>

" --- vim-multiple-cursors ---
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" --- vim-easymotion ---
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" --- indentLine ---
let g:indentLine_char='│'
let g:indentLine_enabled = 1

" --- auto-pairs ---
let g:AutoPairsFlyMode = 1

" --- MatchTagAlways ---
let g:mta_use_matchparen_group = 1

" --- Colorscheme ---
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai