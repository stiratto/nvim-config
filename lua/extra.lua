vim.api.nvim_create_autocmd("FileType", {
    pattern = { "typescript", "css", "html", "javascript", "tsx", "jsx" },
    callback = function()
        vim.opt_local.tabstop = 1
        vim.opt_local.shiftwidth = 1
        vim.opt_local.expandtab = true
    end,
})


