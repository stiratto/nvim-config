vim.g.mapleader = " "

-- remap.lua
-- Telescope
vim.keymap.set("n", "<leader>rr", ':RustRun<CR>', {})

vim.keymap.set("n", "gl", ':lua vim.diagnostic.open_float()<CR>', {})
vim.keymap.set("n", "fr", ":lua require('telescope.builtin').oldfiles()<CR>", {})
vim.keymap.set("n", "ff", ":lua require('telescope.builtin').find_files()<CR>", {})
vim.keymap.set("n", "fg", ":lua require('telescope.builtin').live_grep()<CR>", {})
vim.keymap.set("n", "gl", ":lua vim.diagnostic.open_float()<CR>", {})
-- vim.keymap.set("n", "gd", ':lua vim.lsp.buf.definition()<CR>', {})
