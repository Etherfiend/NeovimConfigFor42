require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "cpp"}, -- Dillerinizi buraya ekleyin
    highlight = {
        enable = true,              -- false ile devre dışı bırakabilirsiniz
        additional_vim_regex_highlighting = false,
    },
}

