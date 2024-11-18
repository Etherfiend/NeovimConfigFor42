-- nvim-tree setup
require('nvim-tree').setup({
  view = {
    width = 20,                   		-- Set the width of the tree
    side = "left",                      -- Display the tree on the left side
    preserve_window_proportions = true, -- Preserve window proportions
  },
  renderer = {
    icons = {
      glyphs = {
        default = "",
        symlink = "",
        git = {
          unstaged = "✗",
          staged = "✓",
          untracked = "U",
          ignored = "◌",
        },
        folder = {
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
        },
      },
    },
  },
  update_focused_file = {
    enable = true,                -- Update focused file in the tree when changing buffers
    update_cwd = true,            -- Update the current working directory
  },
  diagnostics = {
    enable = true,                -- Enable diagnostic messages like errors or warnings
    show_on_dirs = true,          -- Show diagnostics on directories as well
  },
})

-- Open nvim-tree automatically when entering nvim if no file is specified
vim.api.nvim_create_autocmd({ "VimEnter" }, {
  callback = function()
    if vim.fn.argc() == 1 or vim.fn.argc() == 0 then
      require("nvim-tree.api").tree.open()
      vim.cmd("wincmd p")  -- Focus previous window
    end
  end
})

-- Close Neovim automatically if nvim-tree is the last window open
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  callback = function()
    local tree_wins = vim.api.nvim_list_wins()
    if #tree_wins == 1 and vim.api.nvim_buf_get_option(vim.api.nvim_get_current_buf(), "filetype") == "NvimTree" then
      vim.cmd("quit")
    end
  end
})
