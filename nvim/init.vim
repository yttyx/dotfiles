syntax on

set autoindent
set colorcolumn=160
set expandtab
set guicursor=
set hidden
set incsearch
set nobackup
set noerrorbells
set nohlsearch
set noswapfile
set nowrap
set number
set numberwidth=5
set relativenumber
set scrolloff=8
set softtabstop=4
set shiftwidth=4
set signcolumn=yes
set smartindent
set tabstop=4
set termguicolors
set title
set undodir=~/.config/nvim/undodir
set undofile


highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.config/nvim/plugged')

"Plug 'morhetz/gruvbox'
Plug 'gruvbox-community/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'hrsh7th/nvim-cmp'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'mbbill/undotree'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neovim/nvim-lspconfig'

" Initialize plugin system
call plug#end()

colorscheme gruvbox
set background=dark

let mapleader = " "


" In case you open a file without sudo permissions
" (does not work)
"cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!


augroup YTTYX
    autocmd!
    "Remove trailing spaces on save
    autocmd BufWritePre * %s/\s\+$//e
augroup END


