return {
   "nvim-lualine/lualine.nvim",
   config = function()
      local navic = require("nvim-navic")

      require('lualine').setup({
         sections = {
            lualine_c = {
               function()
                  if navic.is_available() then
                     return navic.get_location()
                  else
                     return ""
                  end
               end
            },
            lualine_x = {
               'filetype'
            }
         }
      })
   end
}
