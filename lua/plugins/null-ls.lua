require("null-ls").setup({
    sources = {
        require("null-ls").builtins.formatting.black,
        require("null-ls").builtins.diagnostics.flake8.with({
            extra_args = { "--ignore=F401, E501" }
        }),
        require("null-ls").builtins.diagnostics.golangci_lint,
        require("null-ls").builtins.formatting.rustfmt,
         
    },
})
