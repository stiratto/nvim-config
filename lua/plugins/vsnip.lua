return {
   -- Snippet Engine
   {
      "hrsh7th/vim-vsnip",
      config = function()
         vim.g.vsnip_snippet_dir = "~/.config/nvim/snippets"
      end,
   },
   {
      "hrsh7th/cmp-vsnip",
   },
}
