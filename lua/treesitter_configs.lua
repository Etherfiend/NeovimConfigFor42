require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "cpp"}, 
    highlight = {
        enable = true,              -- false ile devre dışı bırakabilirsiniz
        additional_vim_regex_highlighting = false,
    },
}

