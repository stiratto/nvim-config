vim.g.mapleader = " "

-- remap.lua
-- Telescope
vim.keymap.set("n", "<leader>rr", ':RustRun<CR>', {})

vim.keymap.set("n", "gl", ':lua vim.diagnostic.open_float()<CR>', {})
-- vim.keymap.set("n", "gd", ':lua vim.lsp.buf.definition()<CR>', {})
