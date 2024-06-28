" Setup plugins
call plug#begin()

" Colors
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'ellisonleao/gruvbox.nvim'

" Misc
Plug 'christoomey/vim-tmux-navigator' 
Plug 'mbbill/undotree'

" LSP
Plug 'neovim/nvim-lspconfig'

" Debugger
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'nvim-neotest/nvim-nio'

" Writing
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }

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

