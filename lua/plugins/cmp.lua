return {
    "hrsh7th/nvim-cmp",
    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")

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
            window = {
                documentation = cmp.config.window.bordered(),
                completion = cmp.config.window.bordered({
                    winhighlight = 'Normal:CmpPmenu,CursorLine:PmenuSel,Search:None'
                }),
            },

            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },

            formatting = {
                format = function(entry, vim_item)
                    vim_item.kind = (icons[vim_item.kind] or "Foo") .. " " .. vim_item.kind
                    local menu_icon = {
                        nvim_lsp = "NLSP",
                        nvim_lua = "NLUA",
                        luasnip  = "LSNP",
                        buffer   = "BUFF",
                        path     = "PATH",
                    }
                    -- Set the menu "icon" to the shorthand for each completion source.
                    vim_item.menu = menu_icon[entry.source.name]

                    -- Set the fixed width of the completion menu to 60 characters.
                    -- fixed_width = 20

                    -- Set 'fixed_width' to false if not provided.
                    fixed_width = fixed_width or false

                    -- Get the completion entry text shown in the completion window.
                    local content = vim_item.abbr

                    -- Set the fixed completion window width.
                    if fixed_width then
                        vim.o.pumwidth = fixed_width
                    end

                    -- Get the width of the current window.
                    local win_width = vim.api.nvim_win_get_width(0)

                    -- Set the max content width based on either: 'fixed_width'
                    -- or a percentage of the window width, in this case 20%.
                    -- We subtract 10 from 'fixed_width' to leave room for 'kind' fields.
                    local max_content_width = fixed_width and fixed_width - 10 or math.floor(win_width * 0.2)

                    -- Truncate the completion entry text if it's longer than the
                    -- max content width. We subtract 3 from the max content width
                    -- to account for the "..." that will be appended to it.
                    if #content > max_content_width then
                        vim_item.abbr = vim.fn.strcharpart(content, 0, max_content_width - 3) .. "..."
                    else
                        vim_item.abbr = content .. (" "):rep(max_content_width - #content)
                    end
                    return vim_item
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.complete(),            -- Presionar <C-Space> para completar
                ["<C-e>"] = cmp.mapping.abort(),                   -- Cerrar el autocompletado
                ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirmar selección
            }),
            sources = cmp.config.sources({
                { name = "nvim_lsp" }, -- Add this source for LSP-based completions
                { name = "nvim_lsp_signature_help" },
                { name = "nvim_lsp_document_symbol" },
                { name = "luasnip" },
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
    end,
    dependencies = {
        "L3MON4D3/LuaSnip",         -- Asegúrate de tener instalado LuaSnip
        "saadparwaiz1/cmp_luasnip", -- Fuente para integrar LuaSnip con nvim-cmp
    },

}
