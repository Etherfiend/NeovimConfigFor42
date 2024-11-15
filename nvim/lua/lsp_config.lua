-- lua/lspconfig.lua

local lspconfig = require('lspconfig')
local mason_lspconfig = require('mason-lspconfig')

-- Mason'ı başlat
require('mason').setup()

-- LSP'leri yüklemek için Mason'ı kullan
mason_lspconfig.setup({
    ensure_installed = {"clangd"}, -- Yüklemek istediğiniz LSP'leri buraya ekleyin
})

-- LSP yapılandırmaları
lspconfig.clangd.setup{}
lspconfig.pyright.setup{}
lspconfig.ts_ls.setup{}

