" Setup plugins
call plug#begin()

" Colors
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'ishan9299/nvim-solarized-lua'
Plug 'ellisonleao/gruvbox.nvim'

" Misc
Plug 'christoomey/vim-tmux-navigator' 
Plug 'junegunn/fzf.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'ptzz/lf.vim'
Plug 'voldikss/vim-floaterm'
Plug 'mbbill/undotree'
Plug 'dgagn/diagflow.nvim'

" Debugger
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'

" Writing
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
Plug 'vimwiki/vimwiki', { 'for': 'markdown' }

" Autocomplete
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

call plug#end()

