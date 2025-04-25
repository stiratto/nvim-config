-- Cargar plugins
require("config.lazy")
require('nvim-navic').setup()
require("extra")

vim.api.nvim_create_augroup('transparent_signs', { clear = true })
vim.api.nvim_create_autocmd('ColorScheme', {
   group = 'transparent_signs',
   callback = function()
      vim.cmd('highlight SignColumn guibg=NONE')
   end,
})



-- Cargar remapeos de teclas
vim.cmd("luafile " .. vim.fn.stdpath("config") .. "/lua/remap.lua")
vim.o.background = 'dark'
vim.opt.termguicolors = true
vim.cmd 'colorscheme alduin'
vim.api.nvim_set_hl(0, 'FloatBorder', { link = 'Normal' }) -- line to fix de background color border
