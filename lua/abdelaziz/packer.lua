return require("packer").startup(function(use)
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/vim-vsnip'
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use 'neovim/nvim-lspconfig'

    -- use({ 'rose-pine/neovim', as = 'rose-pine' })
    --
    -- vim.cmd('colorscheme rose-pine')

    use('ThePrimeagen/harpoon')

    use("mbbill/undotree")
    use("tpope/vim-fugitive")

    use {
        'christoomey/vim-tmux-navigator',
        lazy = false
    }

    use { "catppuccin/nvim",
        as = "catppuccin",
        opts = {
            transparent_background = true,
        },
    }
    vim.cmd('colorscheme catppuccin')

    use "rafamadriz/friendly-snippets"
    use
    {
        "L3MON4D3/LuaSnip",
        dependencies = { "rafamadriz/friendly-snippets" },
    }
    use "saadparwaiz1/cmp_luasnip"
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }

    use {
        'akinsho/flutter-tools.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            'stevearc/dressing.nvim', -- optional for vim.ui.select
            'mfussenegger/nvim-dap'
        },
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use 'nvim-tree/nvim-tree.lua'
    use 'nvim-tree/nvim-web-devicons'


    -- VSCode snippets extenstions
    use "Neevash/awesome-flutter-snippets"

    use({
        "Pocco81/auto-save.nvim",
        config = function()
            require("auto-save").setup {
                -- your config goes here
                -- or just leave it empty :)
            }
        end,
    })
    use { 'numToStr/Comment.nvim' }
    use { 'Exafunction/codeium.vim' }


    -- Golang setup
    use {
        "ray-x/go.nvim",
        dependencies = { -- optional packages
            "ray-x/guihua.lua",
            "neovim/nvim-lspconfig",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
            require("go").setup()
        end,
        event = { "CmdlineEnter" },
        ft = { "go", 'gomod' },
        build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
    }


    -- git-conflict
    use { 'akinsho/git-conflict.nvim', tag = "*", config = function()
        require('git-conflict').setup()
    end }
    use {
        "windwp/nvim-ts-autotag",
        config = function() require('git-conflict').setup() end
    }
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }


    use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }



    use {
        'rcarriga/nvim-notify',
        config = function()
            local notify = require('notify')
            -- This for transparency
            notify.setup({ background_colour = '#000000' })
            -- This overwrites the vim notify function
            vim.notify = notify
        end
    }

    use { "folke/which-key.nvim" }
    -- use {
    --     'ldelossa/gh.nvim',
    --     requires = { { 'ldelossa/litee.nvim' } }
    -- }

    use { 'echasnovski/mini.nvim', version = false }
    -- use { 'pwntester/octo.nvim' }
    -- use {
    --     'pwntester/octo.nvim',
    --     requires = {
    --         'nvim-lua/plenary.nvim',
    --         'nvim-telescope/telescope.nvim',
    --         'nvim-tree/nvim-web-devicons',
    --     },
    --     config = function()
    --         require("octo").setup()
    --     end
    -- }
    -- use {
    --     'pwntester/octo.nvim',
    --     requires = {
    --         'nvim-lua/plenary.nvim',
    --         'nvim-telescope/telescope.nvim',
    --         -- OR 'ibhagwan/fzf-lua',
    --         'nvim-tree/nvim-web-devicons',
    --     },
    --     -- config = function()
    --     --     require "octo".setup()
    --     -- end
    -- }
end)
