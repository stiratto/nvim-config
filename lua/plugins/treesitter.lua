return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "javascript", "typescript", "tsx", "lua" }, -- Instala TSX y JSX
            highlight = {
                enable = true,                                               -- habilita el resaltado
                disable = { "tsx" },                                         -- 🔥 Deshabilita Treesitter en archivos .tsx

            },
            indent = {
                enable = true, -- habilita la indentación automática
            },
        })
    end
}
