autocmd vimenter * ++nested colorscheme gruvbox
syntax on

set termguicolors
set background=dark
set rnu
set number
set clipboard=unnamedplus
set mouse=a
set autoindent
set cindent
set laststatus=2
set undofile
set undodir=/home/david/.local/share/vim/undo//
set undolevels=100
set ignorecase
set smartcase
set hlsearch
set tabstop=4
set shiftwidth=4

let mapleader=" "
noremap <C-e> 5<C-e>
noremap <C-y> 5<C-y>
noremap <leader>t :tn<CR>
noremap <leader>n :noh<CR>
