local lspconfig = require('lspconfig')
local mason_lspconfig = require('mason-lspconfig')

require('mason').setup()

mason_lspconfig.setup({
    ensure_installed = {"clangd"}, 
})

lspconfig.clangd.setup{}
lspconfig.pyright.setup{}
lspconfig.ts_ls.setup{}

