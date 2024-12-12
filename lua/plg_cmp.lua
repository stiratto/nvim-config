-- ~/.config/nvim/lua/plg_cmp.lua

local cmp = require("cmp")

local icons = {
    Text = "",
    Variable = "󰫧",
    Snippet = "󱈤",
    Class = "",
    Method = "",
    Function = "󰊕",
    Keyword = "",
    Field = "",
    Folder = "󰉋",
    Enum = "",
}

cmp.setup({

    performance = {
        debounce = 150, -- Ajusta el tiempo de espera para las sugerencias
    },
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end,
    },

    formatting = {
        format = function(_, vim_item)
            vim_item.kind = (icons[vim_item.kind] or "Foo") .. " " .. vim_item.kind
            return vim_item
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(), -- Presionar <C-Space> para completar
        ["<C-e>"] = cmp.mapping.abort(), -- Cerrar el autocompletado
        ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirmar selección
    }),
    sources = cmp.config.sources({
        { name = "nvim_lsp" }, -- Add this source for LSP-based completions
        { name = "nvim_lsp_signature_help" },
        { name = "nvim_lsp_document_symbol" },
        { name = "vsnip" },
        { name = "path" },
    }, {
        { name = "buffer" },
    }),
})

-- Configuración para cmdline
cmp.setup.cmdline({ "/", "?" }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = "buffer" },
    },
})

cmp.setup.cmdline(":", {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = "path" },
    }, {
        { name = "cmdline" },
    }),
})
