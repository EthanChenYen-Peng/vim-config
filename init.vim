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
set guicursor=             " Use block cursor rather than vertical line  Neovim
set noshowmode             " Don't show something like -- INSERT -- anymore

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
set inccommand=split            " Display occurence of substitude text in another split window.

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
" asd
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>
nnoremap <SPACE> <Nop>
let mapleader=' '
" TAB in general mode will move to text buffer

nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

call plug#begin('~/.vim/plugged')
    " Essentials
    Plug 'preservim/nerdtree'
    Plug 'ctrlpvim/ctrlp.vim' "Fuzzy finder.
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
    Plug 'tomtom/tcomment_vim'
    Plug 'tpope/vim-fugitive'
    Plug 'mileszs/ack.vim'
    Plug 'romainl/vim-cool'    " Disable highlight search once finished.
    Plug 'machakann/vim-highlightedyank' " Highlighted the yanked text.

    " Tmux integration
	Plug 'christoomey/vim-tmux-navigator'
    
    " Dev tools
	Plug 'vim-test/vim-test'

    " Ruby on rails
    Plug 'vim-ruby/vim-ruby'
	Plug 'tpope/vim-bundler'
	Plug 'tpope/vim-rake'
	Plug 'tpope/vim-unimpaired'
    Plug 'tpope/rbenv-ctags'
	Plug 'tpope/vim-rails'

    " LSP
    Plug 'prabirshrestha/vim-lsp'
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/completion-nvim'

    " Themes
    Plug 'sainnhe/everforest' 
    Plug 'sainnhe/gruvbox-material'
    Plug 'sainnhe/sonokai'
    Plug 'lifepillar/vim-solarized8'
    Plug 'mswift42/vim-themes'

    " Appearances
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ryanoasis/vim-devicons'
call plug#end()


" LSP
luafile ~/.config/nvim/lua/plugins/lsp_config.lua
