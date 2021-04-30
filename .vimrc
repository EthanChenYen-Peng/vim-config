""""""""""""""""
" General
""""""""""""""""
set clipboard=unnamed      " Enable copy and paste from diffent vim instance
set noswapfile             " No to generate swap file for security reasons.
set scrolloff=6            " Min number of line above or below the cursor.
set linebreak              " Don't wrap line in the middle of a word.
set encoding=UTF-8
set number
set relativenumber

syntax on
filetype plugin on

"" Disable bell sound
set visualbell
set noerrorbells
set t_vb=
set tm=500

""""""""""""""
" Search
""""""""""""""
set hlsearch                    " Highlight search results.
set incsearch                   " Search as you type.
set ignorecase

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu
set wildmode=list:longest,full  " Complete till longest string, then open menu.

""""""""""""""
" Key mapping
""""""""""""""
" Navigate windows with <Ctrl-hjkl> instead of <Ctrl-w> followed by hjkl.
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>
nnoremap <SPACE> <Nop>
let mapleader=' '

call plug#begin('~/.vim/plugged')
    " Essentials
    Plug 'preservim/nerdtree'
    Plug 'ctrlpvim/ctrlp.vim' "Fuzzy finder.
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
    Plug 'tomtom/tcomment_vim'
call plug#end()
