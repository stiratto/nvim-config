-- ~/.config/nvim/lsp.lua
-- IMPORTANT: make sure to setup neodev BEFORE lspconfig

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local on_attach = function(client, bufnr)
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
end

-- local on_attach = function(client, bufnr)
--     local is_formatting = false -- Flag para evitar loops
--
--     vim.api.nvim_create_autocmd("BufWritePre", {
--         buffer = bufnr,
--         callback = function()
--             if not is_formatting then
--                 is_formatting = true
--                 vim.lsp.buf.format({
--                     async = true,
--                     bufnr = bufnr,
--                     callback = function()
--                         is_formatting = false
--                     end, -- Libera el flag
--                 })
--             end
--         end,
--     })
-- end

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

-- Generic config for others lsp servers
local language_servers = require("lspconfig").util.available_servers()
for _, ls in ipairs(language_servers) do
    if ls ~= "tsserver" then
        require("lspconfig")[ls].setup({
            capabilities = capabilities,
            on_attach = on_attach, 
        })
    end
end
