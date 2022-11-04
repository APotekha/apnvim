local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

-- Tab control
map('n', '<Tab>', ':BufferNext<CR>', default_opts)
map('n', '<S-Tab>', ':BufferPrevious<CR>', default_opts)

-- NvimTree
map('n', '<F2>', ':NvimTreeToggle<CR>', default_opts)

-- Buffers
map('n', 'gw', ':bd<CR>',default_opts)
