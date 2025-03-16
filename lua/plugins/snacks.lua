return {
   "folke/snacks.nvim",
   event = "VeryLazy",

   opts = {
      explorer = {},
      picker = {
         sources = {
            files = { hidden = true },
         }
      },
   },
   config = function()
      local ok, Snacks = pcall(require, "snacks")
      if not ok then
         print("Snacks.nvim no se pudo cargar")
         return
      end
      Snacks.indent.enable()
   end,
   keys = {
      { "<leader>eX",  function() require("snacks").explorer() end,                              desc = "File Explorer" },
      -- { "<leader>ff",  function() require("snacks").picker.smart() end,                          desc = "Find File" },
      { "<leader>cO",  function() require("snacks").picker.colorschemes({ layout = "ivy" }) end, desc = "Pick Colorschemes" },
      -- { "<leader>fd",  function() require("snacks").picker.diagnostics() end,                    desc = "Diagnostics" },
      { "<leader>rN",  function() require("snacks").rename.rename_file() end,                    desc = "Change name from current file" },
      { "<leader>gbr", function() require("snacks").picker.git_branches() end,                   desc = "Pick Github branch" },
      -- { "<leader>fr",  function() require("snacks").picker.recent() end,                         desc = "Recent" },
      { "<leader>z",   function() require("snacks").zen() end,                                   desc = "Toggle Zen Mode" },
      { "sC",          function() require("snacks").scratch.open() end,                          desc = "Open a scratch buffer" },
      { "sCl",         function() require("snacks").scratch.select() end,                        desc = "Open a scratch buffer list" },
      { "ai",          function() require("snacks").scope.textobject() end,                      desc = "Select the current indented scope" },
      { "gd",          function() require("snacks").picker.lsp_definitions() end,                desc = "Goto Definition" },
      { "gD",          function() require("snacks").picker.lsp_declarations() end,               desc = "Goto Declaration" },
   }
}
