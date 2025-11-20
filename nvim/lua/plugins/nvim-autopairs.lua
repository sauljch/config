return {
    {
        'windwp/nvim-autopairs',
		opts = function()
			require('nvim-autopairs').setup()
		end
    },
	{	-- Auto closing for html tags
		'windwp/nvim-ts-autotag',
		opts = function()
			require('nvim-ts-autotag').setup()
		end
	}
}
