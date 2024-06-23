vim.api.nvim_exec([[
    language messages en_US.UTF-8
]], false)

local opt = vim.opt
local g = vim.g

opt.mouse = "a"
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.smartindent = true
opt.number = true
opt.autoindent = true
opt.expandtab = true
opt.clipboard = "unnamedplus"
opt.fileencoding = "utf-8"
opt.termguicolors = true
opt.colorcolumn = "120"
opt.showmode = false
opt.fillchars = 'eob: '
opt.numberwidth = 4
opt.signcolumn = 'yes'
opt.swapfile = false