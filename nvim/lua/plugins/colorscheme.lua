return {
    'scottmckendry/cyberdream.nvim',
    opts = function ()
        require('cyberdream').setup({
            transparent = true,
        })
        vim.cmd.colorscheme 'cyberdream'
    end
}
