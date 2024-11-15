-- Setup nvim-treesitter for syntax highlighting
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,                 -- Enable Treesitter syntax highlighting
    additional_vim_regex_highlighting = false,
  },
  ensure_installed = { 'c', 'cpp' }, -- Install C and C++ parsers
}


