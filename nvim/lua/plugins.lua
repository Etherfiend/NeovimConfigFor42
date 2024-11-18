-- Packer plugin manager initialization
require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Color theme
  use 'rebelot/kanagawa.nvim'

  -- File Tree
  use ({
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons' },
  })

  -- Status bar
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Syntax highlighting 
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Auto-closing parentheses and quotes
  use 'windwp/nvim-autopairs'

 -- LSP Configuration & Plugins
  use {
        'neovim/nvim-lspconfig',
        requires = {
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
            'folke/neodev.nvim',
        }
    }

  use {
        "hrsh7th/nvim-cmp",
        requires = {
            "hrsh7th/cmp-buffer", "hrsh7th/cmp-nvim-lsp",
            'quangnguyen30192/cmp-nvim-ultisnips', 'hrsh7th/cmp-nvim-lua',
            'octaltree/cmp-look', 'hrsh7th/cmp-path', 'hrsh7th/cmp-calc',
            'f3fora/cmp-spell', 'hrsh7th/cmp-emoji'
        }
    }


  use {
        'tzachar/cmp-tabnine',
        run = './install.sh',
        requires = 'hrsh7th/nvim-cmp'
    }

local cmp = require'cmp'
local lspconfig = require'lspconfig'

lspconfig.ts_ls.setup{
    on_attach = function(client, bufnr)
    end,
    flags = {
        debounce_text_changes = 150,
    }
}

cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end,
    },
    mapping = {
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = 'path' },
        { name = 'emoji' },
        { name = 'calc' },
    },
})

use {'hrsh7th/vim-vsnip'}
use {'hrsh7th/vim-vsnip-integ'}

local cmp = require'cmp'
local lspconfig = require'lspconfig'

-- VSnip için ayar
-- vim.g.vsnip_snippet_dir = "~/.config/nvim/snippets"  -- Snippet dosyalarının bulunduğu dizin

lspconfig.ts_ls.setup{
    on_attach = function(client, bufnr)
        local opts = { noremap=true, silent=true }
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    end,
    flags = {
        debounce_text_changes = 150,
    }
}

cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)  -- VSnip ile snippet genişletme
        end,
    },
    mapping = {
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = 'path' },
        { name = 'emoji' },
        { name = 'calc' },
        { name = 'vsnip' }, 
	}
})
  use 'romgrk/barbar.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'akinsho/bufferline.nvim'


  --            42 PLUGINS              --
  ----------------------------------------

   use {
        "Diogo-ss/42-header.nvim",
        cmd = { "Stdheader" },
        config = function()
            require('42header').setup {  
                default_map = true,     
                auto_update = false,      
                user = "~",       
                mail = "~@student.42.fr", 
            }
        end,
    }
  use 'hardyrafael17/norminette42.nvim' 

  --                                     --
  -----------------------------------------
--  use 'nvchad/volt'
--  use 'nvchad/menu'
  
end)
