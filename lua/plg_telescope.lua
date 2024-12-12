require("telescope").setup({
    defaults = {
        debug = true,
        file_ignore_patterns = { "%.git/", "node_modules/" }, -- Customize ignore patterns if needed
        prompt_prefix = "🔍 ",
        sorting_strategy = "ascending",
        -- Agregar bordes a las ventanas
        border = true,
        borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" }, -- Puedes personalizar los caracteres del borde
    },
})
