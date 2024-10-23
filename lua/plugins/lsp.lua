return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig",
		opts = {
			ensure_insalled = {
				"lua_ls",
				"gopls",
				"clangd",
				"pylsp",
				"goimports",
				"prettier",
				"typescript-language-server",
			},
		},
	},
	{
		"https://github.com/neovim/nvim-lspconfig",
		config = function()
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<silent>gD", vim.lsp.buf.declaration, {})
			vim.keymap.set("n", "<silent>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<silent>gi", vim.lsp.buf.implementation, {})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<silient> <C-m>", vim.lsp.buf.signature_help, {})
			vim.keymap.set("n", "E", vim.diagnostic.open_float, {})

			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})

			lspconfig.gopls.setup({
				capabilities = capabilities,
			})

			lspconfig.ts_ls.setup({ capabilities = capabilities })
			lspconfig.clangd.setup({
				capabilities = capabilities,
			})
		end,
	},
}
