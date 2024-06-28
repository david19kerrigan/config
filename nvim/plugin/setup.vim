" Set theme
set background=dark
colorscheme gruvbox
set wrap
set termguicolors

let mapleader=" "
set nocompatible
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

" Set custom indents
autocmd FileType * setlocal tabstop=4 shiftwidth=4 noexpandtab
autocmd FileType python setlocal tabstop=4 shiftwidth=4 expandtab " python formatters use spaces
autocmd FileType zig setlocal tabstop=4 shiftwidth=4 expandtab " zig formatters use spaces
autocmd FileType cpp setlocal tabstop=4 shiftwidth=4 expandtab
autocmd FileType c setlocal tabstop=4 shiftwidth=4 expandtab

" Spell check .tex
autocmd FileType tex setlocal spell spelllang=en_us
autocmd BufEnter *.ms set filetype=groff
autocmd FileType groff setlocal spell spelllang=en_us

" Misc Settings
set autochdir
set noswf
set clipboard=unnamedplus
set pumheight=10
set cmdheight=1
set ignorecase
set smartcase

" keybinds
noremap <C-e> 5<C-e>
noremap <C-y> 5<C-y>
