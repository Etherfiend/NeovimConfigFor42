require('barbar').setup({
	animation = true,        -- Enable buffer switching animation
    auto_hide = true,        -- Auto hide the tabline when there is only one buffer
    sidebar_filetypes = {    -- Hide the tabline for certain filetypes
        NvimTree = true,
        netrw = true,
    },
})
