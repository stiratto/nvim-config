return {
    "L3MON4D3/LuaSnip",
    config = function()
        local ls = require("luasnip")

        -- Carga snippets de formato VSCode (como los de friendly-snippets)
        require("luasnip.loaders.from_vscode").lazy_load()

        -- Extiende el soporte para TypeScriptReact con HTML
        ls.filetype_extend("typescriptreact", { "html" })

        -- Mapeos para navegar y expandir snippets
        vim.keymap.set({ "i" }, "<C-k>", function()
            ls.expand()
        end, { silent = true, desc = "Expand snippet" })

        vim.keymap.set({ "i", "s" }, "<C-l>", function()
            ls.jump(1)
        end, { silent = true, desc = "Jump to next snippet placeholder" })

        vim.keymap.set({ "i", "s" }, "<C-j>", function()
            ls.jump(-1)
        end, { silent = true, desc = "Jump to previous snippet placeholder" })

        vim.keymap.set({ "i", "s" }, "<C-e>", function()
            if ls.choice_active() then
                ls.change_choice(1)
            end
        end, { silent = true, desc = "Cycle through snippet choices" })
    end,
}
