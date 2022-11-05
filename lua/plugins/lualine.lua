local function show_venv()
    local venv = vim.env.VIRTUAL_ENV_PROMPT:gsub("^nil$", "")
    return venv
end

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
        lualine_c = {
            { show_venv,
                color = { fg = '#abb1bb', bg = '#373e4d' } }
        },
        lualine_x = { 'encoding', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
    extensions = { 'nvim-tree', 'toggleterm' }
}
