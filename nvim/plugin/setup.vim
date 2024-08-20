" Set theme
set background=light
colorscheme gruvbox
set wrap
set termguicolors

let mapleader=" "
filetype plugin on
syntax on

" Set relative line numbers
set relativenumber
set nu

" Configure persistent undo
set undofile
set undodir=/home/david/.local/share/nvim/undo//
set undolevels=100

" something about tabs lol
set listchars=tab:\ \  list

autocmd FileType * setlocal tabstop=4 shiftwidth=4 noexpandtab

" Spell check .tex
autocmd FileType tex setlocal spell spelllang=en_us
autocmd BufEnter *.ms set filetype=groff
autocmd FileType groff setlocal spell spelllang=en_us

" Misc Settings
set noswf
set clipboard=unnamedplus
set ignorecase
set smartcase

" keybinds
noremap <C-e> 5<C-e>
noremap <C-y> 5<C-y>
noremap ZX :q!<CR>
noremap <leader>n :noh<CR>
