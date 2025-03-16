return {

   "nvim-lualine/lualine.nvim",
   config = function()
      local custom_codedark_theme = require("lualine.themes.codedark")
      local colors = {
         black        = '#000000ff',
         white        = '#ebdbb2',
         red          = '#fb4934',
         green        = '#b8bb26',
         blue         = '#83a598',
         yellow       = '#fe8019',
         gray         = '#a89984',
         darkgray     = '#3c3836',
         lightgray    = '#504945',
         inactivegray = '#7c6f64',
      }

      local modes = { "insert", "visual", "replace", "command", "terminal" }
      custom_codedark_theme.normal.a.bg = colors.black
      custom_codedark_theme.normal.b.bg = colors.black
      custom_codedark_theme.normal.c.bg = colors.black

      for _, mode in ipairs(modes) do
         custom_codedark_theme[mode] = vim.deepcopy(custom_codedark_theme.normal)
      end

      require('lualine').setup({
         options = {
            theme = custom_codedark_theme,
            section_separators = '',
            component_separators = ''
         },
         sections = {
            lualine_a = {
               function()
                  return "👾"
               end
            },
            lualine_b = { 'progress' },


            lualine_x = {
               'filetype'
            },
            lualine_y = {
               function()
                  return "stiratto"
               end
            },
            lualine_z = {
               'hostname'
            }
         }
      })
   end
}
