-- Cargar plugins
require("config.lazy")
require('java').setup()
require('lspconfig').jdtls.setup({})
require('nvim-navic').setup()
require("extra")

-- Cargar remapeos de teclas
vim.cmd("luafile ~/.config/nvim/lua/remap.lua")
-- vim.lsp.handlers["textDocument/publishDiagnostics"] = function() end
vim.o.background = 'dark'
vim.opt.termguicolors = true
vim.cmd 'colorscheme catppuccin-mocha'
