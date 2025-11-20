return {
    'scottmckendry/cyberdream.nvim',
    opts = function ()
        require('cyberdream').setup({})
        vim.cmd.colorscheme 'cyberdream'
    end
} 
