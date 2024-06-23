local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

local on_attach = function(client, bufnr)
    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

local lsp_flags = {
    debounce_text_changes = 150,
}

require('lspconfig').pyright.setup{
    on_attach = on_attach,
    flags = lsp_flags,
   
    settings = {
        python = {
            analysis = {
                
                },
            }
        }
}

require('lspconfig').rust_analyzer.setup({
    on_attach = on_attach,
    flags = lsp_flags,
    cmd = {"C:/Users/Ryzen/AppData/Local/nvim-data/mason/bin/rust-analyzer.cmd"},
    settings = {
        ["rust-analyzer"] = {
        imports = {
            granularity = {
                group = "module",
            },
            prefix = "self",
        },
        cargo = {
            buildScripts = {
                enable = true,
            },
        },
        procMacro = {
            enable = true
        },
        }
    }
})

require('lspconfig').clangd.setup({
    on_attach = on_attach,
    flags = lsp_flags,
    cmd = {"C:/Users/Ryzen/AppData/Local/nvim-data/mason/bin/clangd.cmd"}
})

require('lspconfig').ruff_lsp.setup({
    on_attach = on_attach,
    cmd = {"C:/Users/Ryzen/AppData/Local/nvim-data/mason/bin/ruff-lsp.cmd"},
    init_options = {
      settings = {
        -- Any extra CLI arguments for `ruff` go here.
        args = {},
      }
    }
})