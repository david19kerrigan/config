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

let mapleader=" "
noremap <C-e> 5<C-e>
noremap <C-y> 5<C-y>
noremap <leader>t :tn<CR>
noremap <leader>n :noh<CR>

autocmd FileType * setlocal tabstop=4 shiftwidth=4 noexpandtab
autocmd FileType python setlocal tabstop=4 shiftwidth=4 expandtab " python formatters use spaces
autocmd FileType zig setlocal tabstop=4 shiftwidth=4 expandtab " zig formatters use spaces
autocmd FileType cpp setlocal tabstop=4 shiftwidth=4 expandtab
autocmd FileType c setlocal tabstop=4 shiftwidth=4 expandtab
