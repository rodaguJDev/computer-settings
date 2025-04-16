return {
	{
		"jay-babu/mason-null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"williamboman/mason.nvim",
			"nvimtools/none-ls.nvim",
		},
		config = function()
			require("mason-null-ls").setup({
				ensure_installed = {
					"stylua",
					"eslint_d",
					"prettier",
				},
				automatic_installation = true,
				handlers = {},
			})
		end,
	},
	{
		"nvimtools/none-ls.nvim",
		config = function()
			local null_ls = require("null-ls")
			local useAutoFormat = true

			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.prettier.with({
						extra_args = { "--tab-width", "4", "--single-quote" },
					}),
				},
			})

			-- Auto format
			if useAutoFormat then
				vim.api.nvim_create_autocmd("BufWritePost", {
					callback = function()
						vim.lsp.buf.format()
					end,
				})
			end

			-- Keybinds
			vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format)
		end,
	},
}
