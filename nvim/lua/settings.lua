-- General settings
vim.o.mouse = 'a'                    -- Enables mouse support
vim.o.number = true                  -- Show absolute line numbers
vim.o.relativenumber = true          -- Show relative line numbers
vim.o.hlsearch = false               -- Disable search highlight
vim.o.hidden = true                  -- Allow switching buffers without saving
vim.o.tabstop = 4                    -- Set tab width to 4 spaces
vim.o.shiftwidth = 4                 -- Set indentation width to 4 spaces
vim.o.expandtab = false              -- Use spaces instead of tabs (false for now)
vim.o.termguicolors = true           -- Enable true color support

-- Color Theme
vim.cmd([[colorscheme kanagawa]])
vim.opt.grepprg = "rg --vimgrep"

