-- ~/.config/nvim/lsp.lua
-- IMPORTANT: make sure to setup neodev BEFORE lspconfig
return {
    "neovim/nvim-lspconfig",
    config = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        require('java').setup()

        local on_attach = function(client, bufnr)
            vim.api.nvim_create_autocmd("BufWritePre", {
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({
                        async = true,
                        bufnr = bufnr,
                    })
                end
            })
        end



        require('lspconfig').jdtls.setup({})
        require("mason").setup()
        require("mason-lspconfig").setup()

        require("lspconfig").ruff.setup({
            on_attach = on_attach
        })

        require("lspconfig").volar.setup({
            on_attach = on_attach,
            init_options = {
                vue = {
                    -- disable hybrid mode
                    hybridMode = false,
                },
            },
        })

        -- require("lspconfig").phpactor.setup({
        --     on_attach = on_attach
        -- })

        -- require("lspconfig").ast_grep.setup({
        --     on_attach = on_attach
        -- })

        require("lspconfig").lua_ls.setup({
            capabilities = capabilities,
            settings = {

                completions = { completeFunctionCalls = false },
            },
            flags = {
                debounce_text_changes = 150,
            },
            on_attach = on_attach,
        })

        require("lspconfig").ts_ls.setup({
            capabilities = capabilities,
            settings = {
                completions = { completeFunctionCalls = false },
            },
            flags = {
                debounce_text_changes = 150,
            },
            on_attach = on_attach,
        })

        local language_servers = require("lspconfig").util.available_servers()
        for _, ls in ipairs(language_servers) do
            if ls ~= "tsserver" then
                require("lspconfig")[ls].setup({
                    capabilities = capabilities,
                    on_attach = on_attach,
                })
            end
        end
    end
}
