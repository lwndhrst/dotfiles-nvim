return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'nvim-lua/plenary.nvim'

    use 'kyazdani42/nvim-web-devicons'

    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
    }

    use {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
    }

    use {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/nvim-cmp',
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',
    }

    use 'mfussenegger/nvim-dap'

    use {
        'jose-elias-alvarez/null-ls.nvim',
        config = function()
            require('null-ls').setup()
        end,
    }

    use { 
        'nvim-treesitter/nvim-treesitter', 
        run = ':TSUpdate',
    }

    use 'sainnhe/gruvbox-material'
end)
