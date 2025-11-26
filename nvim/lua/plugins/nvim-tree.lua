return {
    'nvim-tree/nvim-tree.lua',
    opts = {
        view = {
            width = 30,
        }
    },
    config = function()
        require('nvim-tree').setup()
    end
}
