require('lualine').setup {
    options = {
        theme = 'auto',
        icons_enabled = true,
        globalstatus = false,
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
    },
    sections = {
        lualine_a = { { 'mode', fmt = function(res) return res:sub(1, 1) end } },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
    extensions = { 'nvim-tree', 'toggleterm' }
}
