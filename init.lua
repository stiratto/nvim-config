-- Cargar plugins
require("config.lazy")
require('nvim-navic').setup()
require("extra")

-- Cargar remapeos de teclas
vim.cmd("luafile ~/.config/nvim/lua/remap.lua")
-- vim.lsp.handlers["textDocument/publishDiagnostics"] = function() end
vim.o.background = 'dark'
vim.cmd 'colorscheme gruber-darker'
