-- ~/.config/nvim/plugins.lua
return require("packer").startup(function(use)
    use("IogaMaster/neocord")
    use("tribela/vim-transparent")
    use("hrsh7th/cmp-nvim-lsp-signature-help")
    use("ajmwagar/vim-deus")
    use("hrsh7th/cmp-nvim-lsp-document-symbol")
    use("neanias/everforest-nvim")

    use({
        "stevearc/conform.nvim",
        config = function()
            require("conform").setup()
        end,
    })
    use("fenetikm/falcon")
    use({
        "derektata/lorem.nvim",
        config = function()
            require("lorem").opts({
                sentenceLength = "medium",
                comma_chance = 0.2,
                max_commas_per_sentence = 2,
            })
        end,
    })
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end,
    })
    use("rafamadriz/friendly-snippets")
    use("MunifTanjim/prettier.nvim")
    use("posva/vim-vue")
    use("jose-elias-alvarez/null-ls.nvim")
    -- use("MunifTanjim/eslint.nvim")

    use("L3MON4D3/LuaSnip")
    use("nvim-tree/nvim-web-devicons")
    use("ryanoasis/vim-devicons")
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        requires = { { "nvim-lua/plenary.nvim" } },
    })
    use({ "rrethy/vim-hexokinase", run = "make hexokinase" })
    use({
        "nmac427/guess-indent.nvim",
        config = function()
            require("guess-indent").setup({})
        end,
    })
    use("preservim/nerdcommenter")
    use("nvim-lua/plenary.nvim")
    use("neovim/nvim-lspconfig")
    use("williamboman/mason.nvim")
    use("mhinz/vim-startify")
    use("hrsh7th/cmp-path")
    use({
        "rcarriga/cmp-dap",
        dependencies = { "mfussenegger/nvim-dap" },
    })
    use("hrsh7th/cmp-cmdline")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-vsnip")
    use("hrsh7th/vim-vsnip")
    use("rafamadriz/friendly-snippets")
    use({ "hrsh7th/nvim-cmp" })
    use({ "hrsh7th/cmp-buffer", requires = { "hrsh7th/nvim-cmp" } })
end)
