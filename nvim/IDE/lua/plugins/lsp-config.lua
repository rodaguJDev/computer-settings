return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		dependencies = {
			"folke/neodev.nvim",
		},
		config = function()
			require("neodev").setup({})
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"rust_analyzer",
					"tsserver",
					"emmet_language_server",
					"html",
					"cssls",
				},
				handlers = {
					function(server)
						local capabilities = require("cmp_nvim_lsp").default_capabilities()
						require("lspconfig")[server].setup({
							capabilities = capabilities,
						})
					end,
					["emmet_language_server"] = function()
						local capabilities = require("cmp_nvim_lsp").default_capabilities()
						require("lspconfig")["emmet_language_server"].setup({
							capabilities = capabilities,
                            filetypes = {"css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "pug", "typescriptreact", "php"}
						})
					end,
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			-- Keybinds
			vim.keymap.set("n", "gd", require("telescope.builtin").lsp_definitions, {})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
		end,
	},
}
