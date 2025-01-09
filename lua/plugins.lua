return {
  {
    "vhyrro/luarocks.nvim",
    priority = 1000, -- Very high priority is required, luarocks.nvim should run as the first plugin in your config.
    config = true,
  },
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },
  { "IogaMaster/neocord" },
  { "nvim-lualine/lualine.nvim",           requires = { 'nvim-tree/nvim-web-devicons', opt = true } },
  { "nvimdev/indentmini.nvim",             config = function() require("indentmini").setup() end },
  { "hrsh7th/cmp-nvim-lsp-signature-help" },
  { "ajmwagar/vim-deus" },
  { "SmiteshP/nvim-navic" },
  { "hrsh7th/cmp-nvim-lsp-document-symbol" },
  { "neanias/everforest-nvim" },
  { "folke/snacks.nvim" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "LunarVim/bigfile.nvim" },
  { "derektata/lorem.nvim",                config = function() require("lorem").opts({ sentenceLength = "medium", comma_chance = 0.2, max_commas_per_sentence = 2 }) end },
  {
    "kylechui/nvim-surround",
    config = function()
      require("nvim-surround").setup()
    end
  },
  { "jose-elias-alvarez/null-ls.nvim" },
  { "L3MON4D3/LuaSnip" },
  { "nvim-tree/nvim-web-devicons" },
  { "ryanoasis/vim-devicons" },
  { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },
  { "nvim-telescope/telescope.nvim",   tag = "0.1.8",                                            requires = { { "nvim-lua/plenary.nvim" } } },
  { "nmac427/guess-indent.nvim",       config = function() require("guess-indent").setup({}) end },
  { "preservim/nerdcommenter" },
  { "nvim-lua/plenary.nvim" },
  {
    "goolord/alpha-nvim",
    -- dependencies = { 'echasnovski/mini.icons' },
    config = function()
      local startify = require("alpha.themes.startify")
      -- available: devicons, mini, default is mini
      -- if provider not loaded and enabled is true, it will try to use another provider
      startify.file_icons.provider = "devicons"
      require("alpha").setup(
        startify.config
      )
    end,
  },
  { "sainnhe/everforest" },
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim" },
  { "hrsh7th/cmp-path" },
  { "rcarriga/cmp-dap",       dependencies = { "mfussenegger/nvim-dap" } },
  { "hrsh7th/cmp-cmdline" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-vsnip" },
  { "hrsh7th/vim-vsnip" },
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-buffer",     requires = { "hrsh7th/nvim-cmp" } }
}
