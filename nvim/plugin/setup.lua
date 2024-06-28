-- remember cursor position
vim.api.nvim_create_autocmd({'BufWinEnter'}, {
  desc = 'return cursor to where it was last time closing the file',
  pattern = '*',
  command = 'silent! normal! g`"zvzz',
})

-- keybinds
vim.keymap.set('i', '<C-s>', "<esc>:w<enter>")
vim.keymap.set('n', '<C-s>', "<esc>:w<enter>")
vim.keymap.set('n', 'ZX', "<cmd>q!<CR>")
vim.keymap.set('n', '<leader>ls', "<cmd>LspStop<CR><enter>")

--Goyo
vim.keymap.set('n', '<leader>o', "<cmd>Goyo<CR><enter>")
vim.g.goyo_width=150
vim.g.goyo_height=300
vim.g.goyo_linenr=0

-- Setup keybinds for nvim lsp
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

	vim.diagnostic.config({ 
		virtual_text = {severity = {min = vim.diagnostic.severity.HINT}},
		signs = {severity = {min = vim.diagnostic.severity.HINT}},
		underline = {severity = {min = vim.diagnostic.severity.HINT}},
	})

	vim.o.signcolumn='yes:1'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', '<leader>j', vim.lsp.buf.hover, ops)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<leader>k', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<leader>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  end,
})

-- Set up nvim-cmp.
local cmp = require'cmp'

cmp.setup({
snippet = {
  -- REQUIRED - you must specify a snippet engine
  expand = function(args)
	vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
  end,
},
window = {
  -- completion = cmp.config.window.bordered(),
  -- documentation = cmp.config.window.bordered(),
},
mapping = cmp.mapping.preset.insert({
  ['<C-b>'] = cmp.mapping.scroll_docs(-4),
  ['<C-f>'] = cmp.mapping.scroll_docs(4),
  ['<C-y>'] = cmp.mapping.complete(),
  ['<C-e>'] = cmp.mapping.abort(),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
}),
sources = cmp.config.sources({
  { name = 'nvim_lsp' },
  { name = 'vsnip' }, -- For vsnip users.
}, {
  { name = 'buffer' },
})
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
sources = cmp.config.sources({
  { name = 'git' }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
}, {
  { name = 'buffer' },
})
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
mapping = cmp.mapping.preset.cmdline(),
sources = {
  { name = 'buffer' }
}
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
mapping = cmp.mapping.preset.cmdline(),
sources = cmp.config.sources({
  { name = 'path' }
}, {
  { name = 'cmdline' }
})
})

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig')['rust_analyzer'].setup {
capabilities = capabilities,
}
require('lspconfig')['jdtls'].setup {
capabilities = capabilities,
}
require('lspconfig')['ccls'].setup {
capabilities = capabilities,
}
require('lspconfig')['zls'].setup {
capabilities = capabilities,
}
require('lspconfig')['gopls'].setup {
capabilities = capabilities,
}
require('lspconfig')['pyright'].setup {
capabilities = capabilities,
-- disable python LSP warnings cuz they suck dik
vim.diagnostic.config({ 
	virtual_text = {severity = {min = vim.diagnostic.severity.ERROR}},
	signs = {severity = {min = vim.diagnostic.severity.ERROR}},
	underline = {severity = {min = vim.diagnostic.severity.ERROR}},
})
}
