-- Cargar plugins
require("config.lazy")
require('nvim-navic').setup()

-- Cargar remapeos de teclas
vim.cmd("luafile ~/.config/nvim/lua/remap.lua")
vim.lsp.handlers["textDocument/publishDiagnostics"] = function() end

vim.cmd("set foldmethod=indent")
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.wo.foldmethod = "expr"
vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
vim.wo.fillchars = "fold: "
vim.wo.foldnestmax = 3
vim.wo.foldminlines = 1
vim.wo.foldlevel = 1
vim.wo.foldtext =
[[substitute(getline(v:foldstart),'\\t',repeat('\ ',&tabstop),'g').'...'.trim(getline(v:foldend)) . ' (' . (v:foldend - v:foldstart + 1) . ' lines)']]
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
vim.cmd.highlight('IndentLine guifg=#737575')
vim.cmd.highlight('IndentLineCurrent guifg=#c0c2c2')
vim.opt.shiftwidth = 3
vim.opt.autoindent = true
vim.opt.number = true
vim.opt.wildmode = { "longest", "list" }
vim.cmd("filetype plugin indent on")
vim.cmd("syntax on")
vim.opt.clipboard = "unnamedplus"
vim.opt.cursorline = true
vim.opt.ttyfast = true
