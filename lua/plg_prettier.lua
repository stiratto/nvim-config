-- ~/.config/nvim/prettier.lua

-- Función para formatear usando Prettier
local function format_with_prettier()
    vim.lsp.buf.format({timeout_ms = 1000})
end

-- Autocompletar al guardar
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = {"*.js", "*.vue", "*.jsx", "*.ts", "*.tsx", "*.css", "*.scss", "*.html", "*.json"}, -- Ajusta los tipos de archivo según sea necesario
    callback = format_with_prettier
})

