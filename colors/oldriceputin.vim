local oldriceputin = {}

function oldriceputin.setup()
    vim.cmd('set background=dark')
    vim.cmd('highlight clear')
    
    if vim.fn.exists('syntax_on') then
        vim.cmd('syntax reset')
    end
    
    vim.g.colors_name = 'oldriceputin'
    
    local highlights = {
        ColorColumn = { ctermbg = 235 },
        Comment = { ctermfg = 240 },
        Constant = { ctermfg = 14 },
        Conditional = { ctermfg = 255 },
        Cursor = { ctermfg = 242 },
        CursorLine = { ctermbg = 235 },
        DiffAdd = { ctermfg = 2, ctermbg = 237 },
        DiffChange = { ctermfg = 11, ctermbg = 237 },
        DiffDelete = { ctermfg = 1, ctermbg = 237 },
        DiffText = { ctermfg = 1, ctermbg = 235 },
        Directory = { ctermfg = 243 },
        Error = { ctermfg = 238, ctermbg = 1 },
        ErrorMsg = { ctermfg = 1, ctermbg = 16 },
        Function = { ctermfg = 13 },
        Identifier = { ctermfg = 9 },
        IncSearch = { ctermfg = 237, ctermbg = 11 },
        MatchParen = { ctermfg = 7, ctermbg = 3 },
        Normal = { ctermfg = 249 },
        Operator = { ctermfg = 247 },
        PreProc = { ctermfg = 11 },
        Search = { ctermfg = 11, ctermbg = 241 },
        Special = { ctermfg = 6 },
        Statement = { ctermfg = 255 },
        StatusLine = { ctermfg = 238 },
        String = { ctermfg = 12 },
        Type = { ctermfg = 247 },
        Visual = { ctermfg = 16, ctermbg = 11 },
        WarningMsg = { ctermfg = 1 },
        LineNr = { ctermfg = 244, ctermbg = 237 },
        CursorLineNr = { ctermfg = 1, ctermbg = 235 },
        Pmenu = { ctermfg = 0, ctermbg = 244 },
        PmenuSel = { ctermfg = 0, ctermbg = 10 },
    }
    
    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end
    
    vim.cmd('highlight! link diffAdded DiffAdd')
    vim.cmd('highlight! link diffRemoved DiffDelete')
    vim.cmd('highlight! link diffChanged DiffChange')
    vim.cmd('highlight! link StatusLineNC StatusLine')
    vim.cmd('highlight! link Title Normal')
    vim.cmd('highlight! link MoreMsg Normal')
    vim.cmd('highlight! link Question DiffChange')
    vim.cmd('highlight! link TabLine StatusLineNC')
    vim.cmd('highlight! link TabLineFill StatusLineNC')
    vim.cmd('highlight! link VimHiGroup VimGroup')
end

return oldriceputin

