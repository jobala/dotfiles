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

		vim.api.nvim_create_autocmd("BufWritePre", {
			callback = function()
				vim.lsp.buf.format()
			end,
			group = vim.api.nvim_create_augroup("lsp_document_format", { clear = true }),
		})
	end,
}
