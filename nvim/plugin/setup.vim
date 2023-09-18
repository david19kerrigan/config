" Set theme
set background=dark
colorscheme catppuccin-mocha

" vim wiki stuff
let mapleader=" "
let g:vimwiki_list = [{'path': '~/Documents/notes',
\ 'syntax': 'markdown', 'ext': '.md'}]
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
autocmd FileType sql setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType terraform setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType python setlocal tabstop=4 shiftwidth=4 expandtab

" Formatting code
autocmd FileType rust nnoremap <buffer> <Leader>f :w<CR>:!cargo fmt<CR>
autocmd FileType python nnoremap <buffer> <Leader>f :w<CR>:!black .<CR>

" Automatically run GitPull() when opening a Markdown file
autocmd VimEnter */notes/** silent execute '!git reset --hard origin/main && git pull'

" matching only on code files
autocmd FileType rust,python inoremap { {}<Esc>ha|inoremap ( ()<Esc>ha|inoremap [ []<Esc>ha|inoremap " ""<Esc>ha|inoremap ' ''<Esc>ha|inoremap ` ``<Esc>ha|inoremap < <><Esc>ha
autocmd FileType vimwiki inoremap = ==<Esc>ha|inoremap [ []<Esc>ha

" Disable cmp on non code files
let list = ['go', 'python']
autocmd FileType * if index(list, &ft) < 0 | lua require'cmp'.setup.buffer {
\   completion = {
\     autocomplete = false
\   }
\ }

" Misc Stuff
set autochdir
set noswf
set clipboard=unnamedplus
set pumheight=10
set cmdheight=0
autocmd BufEnter * TSBufEnable highlight
set statusline+=%F

noremap <C-e> 10<C-e>
noremap <C-y> 10<C-y>
