return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null = require("null-ls")

		null.setup({
			sources = {
				null.builtins.formatting.stylua,
				null.builtins.formatting.prettierd,
				null.builtins.diagnostics.golangci_lint,
				null.builtins.formatting.goimports,
			},
		})

		vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
	end,
}
