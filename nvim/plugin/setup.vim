" Set theme
set background=dark
colorscheme catppuccin-mocha
set wrap

let mapleader=" "
let g:vimwiki_list = [{'path': '~/Documents/notes', 'syntax': 'markdown', 'ext': '.md'}, {'path': '~/Documents/softwarecashmoney', 'syntax': 'markdown', 'ext': '.md'}]
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
autocmd FileType cpp setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType c setlocal tabstop=2 shiftwidth=2 expandtab

" Formatting code
autocmd FileType python nnoremap <buffer> <Leader>f :w<CR>:silent exec "!black ."<CR>

" Spell check .tex
autocmd FileType tex setlocal spell spelllang=en_us
autocmd BufEnter *.ms set filetype=groff
autocmd FileType groff setlocal spell spelllang=en_us

" Automatically run GitPull() when opening a Markdown file
" autocmd VimEnter */notes/** silent execute '!git reset --hard origin/main && git pull'

" autocmd VimEnter *.md Goyo
autocmd BufEnter * TSBufEnable highlight

" Disable cmp on non code files
let list = ['go', 'python', 'zig', 'cpp', 'c']
autocmd FileType * if index(list, &ft) < 0 | lua require'cmp'.setup.buffer {
\   completion = {
\     autocomplete = false
\   }
\ }

" Misc Settings
set autochdir
set noswf
set clipboard=unnamedplus
set pumheight=10
set cmdheight=1
set statusline+=%F
set ignorecase
set smartcase

" keybinds
noremap <C-e> 5<C-e>
noremap <C-y> 5<C-y>
noremap <leader>gp :silent exec '!git add --all && git commit -a -m "vim push" && git push'<CR>
noremap <leader>gu :silent exec '!git reset --hard origin/main && git pull'<CR>
noremap <leader>n :noh<CR>
noremap <leader>c :cclose<CR>
