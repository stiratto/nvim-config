-- Cargar plugins
package.path = package.path .. ";/home/stiratto/.config/nvim/plugins.lua"
require("plugins")

vim.o.background = "dark"
vim.cmd([[colorscheme everforest]])

require("remap")
require("plg_cmp")
require("lsp")
require("plg_neocord")
require("plg_conform")
require("plg_telescope")
require("plg_treesitter")
require("extra")
require("mason").setup()

-- Cargar remapeos de teclas
vim.cmd("luafile ~/.config/nvim/remap.lua")
vim.lsp.handlers["textDocument/publishDiagnostics"] = function() end

vim.cmd("set foldmethod=indent")
vim.opt.foldlevel = 99
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_perl_provider = 0
vim.opt.compatible = false
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.mouse = "a"
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.modeline = true
vim.opt.breakindent = true
vim.opt.showbreak = "↳ "
vim.opt.textwidth = 70
vim.opt.shiftwidth = 3
vim.opt.autoindent = true
vim.opt.number = true
vim.opt.wildmode = { "longest", "list" }
vim.cmd("filetype plugin indent on")
vim.cmd("syntax on")
vim.opt.clipboard = "unnamedplus"
vim.opt.cursorline = true
vim.opt.ttyfast = true
