" Set theme
set background=dark
colorscheme gruvbox
set wrap
set termguicolors

function MyTabLabel(n)
  let buflist = tabpagebuflist(a:n)
  let winnr = tabpagewinnr(a:n)
  return fnamemodify(bufname(buflist[winnr - 1]), ':t')
endfunction

function MyTabLine()
  let s = ''
  for i in range(tabpagenr('$'))
    " select the highlighting
    if i + 1 == tabpagenr()
      let s ..= '%#TabLineSel#'
    else
      let s ..= '%#TabLine#'
    endif
    " set the tab page number (for mouse clicks)
    let s ..= '%' .. (i + 1) .. 'T'
    " the label is made by MyTabLabel()
    let s ..= ' %{MyTabLabel(' .. (i + 1) .. ')} '
  endfor
  " after the last tab fill with TabLineFill and reset tab page nr
  let s ..= '%#TabLineFill#%T'
  " right-align the label to close the current tab page
  if tabpagenr('$') > 1
    let s ..= '%=%#TabLine#%999Xclose'
  endif
  return s
endfunction
set tabline=%!MyTabLine()

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
autocmd FileType cpp setlocal tabstop=4 shiftwidth=4 expandtab
autocmd FileType c setlocal tabstop=4 shiftwidth=4 expandtab

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
let list = ['go', 'python', 'zig', 'cpp', 'c', 'rust', 'java']
autocmd FileType * if index(list, &ft) < 0 | lua require'cmp'.setup.buffer {
\   completion = {
\     autocomplete = false
\   }
\ }

"vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

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
noremap <leader>n :noh<CR>
noremap <leader>c :cclose<CR>
nnoremap <leader>e :Oil .<CR>
nnoremap <leader>tn :tabnew<CR>:Oil .<CR>
nnoremap <leader>tr :terminal<CR>a
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fr <cmd>Telescope lsp_references<cr>
nnoremap gt :tabprevious<CR>
nnoremap <tab> :tabnext<CR>
nnoremap <leader>ut :UndotreeToggle<CR>
