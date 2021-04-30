""""""""""
" Colorscheme
""""""""""
if has('termguicolors')
  set termguicolors
endif

set background=dark
let g:everforest_background = 'hard'
let g:everforest_enable_italic = 1
let g:everforest_disable_italic_comment = 1

colorscheme everforest

""""""""""
" Screen display 
""""""""""
" Split direction
set splitbelow
set splitright

set showtabline=2   " Always show tabline.

""""""""""
" Tabs and spaces
""""""""""
set autoindent 	    " respect indentation when starting a new line.
" Tabstop determines how many columns a tab counts for.
set tabstop=4       " Number of spaces tab is counted for.
" Shiftwidth determines how many columns text is indented when using reindent operations.
set shiftwidth=4    " Number of spaces use for autoindent.
set expandtab	    " Expand tabs into spaces.

" Make backspace work like most other programs
set backspace=2     " Fix backspace behavior on most terminals.
