vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {
        'EdenEast/nightfox.nvim',
        config = function()
            require('plugins.nightfox')
        end
    }
    use {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    }
    use {
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require('plugins.identline')
        end
      }
    use {
        'nvim-treesitter/nvim-treesitter',
        config = function()
            require('plugins.treesitter')
        end
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons'},
        config = function()
            require('plugins.lualine')
        end
    } 
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons'
        },
        config = function()
            require("nvim-tree").setup()
        end
    }
    use {
        'romgrk/barbar.nvim',
        requires = {'kyazdani42/nvim-web-devicons'},
        config = function()
            require('plugins.barbar')
        end

    }
    use {
        'neovim/nvim-lspconfig',
        config = function()
            require('plugins.nvim-lsp')
        end
    }
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-path',
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
        },	
        config = function()
            require('plugins.cmp')
        end
    }
    use {
        'onsails/lspkind-nvim',
        config = function()
            require('plugins.lspkind')
        end
    }
    use {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
            require('plugins.null-ls')
        end,
        requires = { "nvim-lua/plenary.nvim" },
    }
    use {
        "windwp/nvim-autopairs",
        config = function() 
            require("nvim-autopairs").setup {}
        end
    }
    use {
        "akinsho/toggleterm.nvim", 
        tag = '*', 
        config = function()
            require('plugins.toggleterm')
        end
    }
    use {
        "lewis6991/gitsigns.nvim",
        config = function()
            require('plugins.gitsigns')
        end
    } 
    use 'lewis6991/impatient.nvim'
    use {
        "nvim-telescope/telescope.nvim",
	tag = '0.1.0',
        requires = {'nvim-lua/plenary.nvim'},
        config = function()
            require('plugins.telescope')
        end
    }
end)
