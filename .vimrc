autocmd vimenter * ++nested colorscheme gruvbox
set termguicolors
set background=dark
syntax on
set rnu
set number
set clipboard=unnamedplus
noremap <C-e> 5<C-e>
noremap <C-y> 5<C-y>
set mouse=a
set autoindent
set laststatus=2
set undofile
set undodir=/home/david/.local/share/vim/undo//
set undolevels=100
set ignorecase
set smartcase
set hlsearch
let mapleader=" "
noremap <leader>n :noh<CR>
" Set custom indents
autocmd FileType * setlocal tabstop=4 shiftwidth=4 noexpandtab
autocmd FileType python setlocal tabstop=4 shiftwidth=4 expandtab " python formatters use spaces
autocmd FileType zig setlocal tabstop=4 shiftwidth=4 expandtab " zig formatters use spaces
autocmd FileType cpp setlocal tabstop=4 shiftwidth=4 expandtab
autocmd FileType c setlocal tabstop=4 shiftwidth=4 expandtab

