local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    {
        'EdenEast/nightfox.nvim',
        config = function()
            require('plugins.nightfox')
        end,
    },
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {   "williamboman/mason-lspconfig.nvim",
        config = function()
            require('mason-lspconfig')
    end,
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        config = function()
            require('plugins.ibl')
        end,
    },
    {
        'nvim-treesitter/nvim-treesitter',
        config = function()
            require('plugins.treesitter')
        end,

    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'kyazdani42/nvim-web-devicons' },
        config = function()
            require('plugins.lualine')
        end,
    },
    {
        'romgrk/barbar.nvim',
        dependencies = { 'kyazdani42/nvim-web-devicons' },
        config = function()
            require('plugins.barbar')
        end,
    },
    {
        'neovim/nvim-lspconfig',
        config = function()
            require('plugins.nvim-lsp')
        end,
    },
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-path',
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
        },
        config = function()
            require('plugins.cmp')
        end,
    },
    {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup {}
        end,
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require('plugins.gitsigns')
        end,
    },
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('plugins.telescope')
        end,
    },
    {
        "nvimtools/none-ls.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require('plugins.null-ls')
        end,
    }
}

local opt = {}

require("lazy").setup(plugins, opts)
