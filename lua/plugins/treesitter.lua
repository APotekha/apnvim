require('nvim-treesitter.configs').setup({
    ensure_installed = {'python', 'go', 'rust', 'javascript','typescript','c'},
    highlight = {
        enable = true,
    },
    indent = {
        enable = true,
    },
})
