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

"Remove all trailing whitespace by pressing F5
nnoremap <leader><leader> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>


""""""""""""""
" Resize with tmux 
""""""""""""""
" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>


call plug#begin('~/.vim/plugged')
    " Essentials
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
    Plug 'tomtom/tcomment_vim'
    Plug 'tpope/vim-fugitive'
    Plug 'romainl/vim-cool'    " Disable highlight search once finished.
    Plug 'machakann/vim-highlightedyank' " Highlighted the yanked text.
    Plug 'kyazdani42/nvim-web-devicons' " for file icons
    Plug 'kyazdani42/nvim-tree.lua'

    " Telescope
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    " Tmux integration
	Plug 'christoomey/vim-tmux-navigator'
    
    " Dev tools
	Plug 'vim-test/vim-test'
    Plug 'SirVer/ultisnips'
    " Snippets are separated from the engine. Add this if you want them:
    Plug 'honza/vim-snippets'
    Plug 'dense-analysis/ale' " Asynchronous Lint Engine

    " Ruby on rails
    Plug 'vim-ruby/vim-ruby'
	Plug 'tpope/vim-bundler'
	Plug 'tpope/vim-rake'
	Plug 'tpope/vim-unimpaired'
    Plug 'tpope/rbenv-ctags'
	Plug 'tpope/vim-rails'

    " LSP
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/completion-nvim'

    " JS and React
    Plug 'mxw/vim-jsx'
    Plug 'pangloss/vim-javascript'

    " Themes
    Plug 'sainnhe/everforest' 
    Plug 'sainnhe/sonokai'
    Plug 'lifepillar/vim-solarized8'
    Plug 'mswift42/vim-themes'
    Plug 'crusoexia/vim-monokai'
    Plug 'morhetz/gruvbox'
    Plug 'rhysd/vim-color-spring-night'
    Plug 'kaicataldo/material.vim', { 'branch': 'main' }
    Plug 'sainnhe/edge'

    " Appearances
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ryanoasis/vim-devicons'
call plug#end()


" LSP
luafile ~/.config/nvim/lua/plugins/lsp_config.lua
