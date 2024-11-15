  require('plugins')
  require('keymaps')
  require('settings')
  require('lualine_setup')
  require('nvimtree_setup')
  require('autopairs_setup')
  require('treesitter_setup')
  require('treesitter_configs')
  require('lsp_config')
  --require('42plugins_setup')
  vim.env.PATH = "/home/muokcan/bin:" .. vim.env.PATH

