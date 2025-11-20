local augroup = vim.api.nvim_create_augroup('UserConfig', {})

-- Filetype specific settings
vim.api.nvim_create_autocmd('FileType', {
    group = augroup,
    pattern = { 'html' },
    callback = function()
        vim.opt_local.tabstop = 2
        vim.opt_local.shiftwidth = 2
    end,
})
