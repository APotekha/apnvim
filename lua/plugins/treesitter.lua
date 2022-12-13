require('nvim-treesitter.configs').setup({
    ensure_installed = {'python', 'go', 'rust'},
    highlight = {
        enable = true,
    },
    indent = {
        enable = true,
    },
})
