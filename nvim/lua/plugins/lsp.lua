return {
	{
		'mason-org/mason.nvim',
        opts = function()
            vim.api.nvim_create_autocmd('LspAttach', {
                callback = function(ev)
                    local client = vim.lsp.get_client_by_id(ev.data.client_id)
                    if client and client:supports_method(
                        vim.lsp.protocol.Methods.textDocument_completion
                    ) then
                        vim.opt.completeopt = {
                            'menu',
                            'menuone',
                            'noinsert',
                            'fuzzy',
                            'popup'
                        }
                        vim.lsp.completion.enable(
                            true,
                            client.id,
                            ev.buf,
                            { autotrigger = true }
                        )
                    end
                end
            })

            vim.diagnostic.config({
                virtual_text = {
                    current_line = true
                }
            })

            vim.keymap.set(
                'n',
                '<leader>d',
                '<cmd>lua vim.diagnostic.open_float()<CR>',
                { noremap = true, silent = true }
            )

		end
	},
	{
		'mason-org/mason-lspconfig.nvim',
		opts = {
            ensure_installed = { 'lua_ls' },
        },
        dependencies = {
            { 'mason-org/mason.nvim', opts = {} },
            'neovim/nvim-lspconfig',
        },
	},
	{
		'neovim/nvim-lspconfig'
	}
}

