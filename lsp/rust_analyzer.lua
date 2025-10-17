return {
	cmd = { "rust-analyzer" },  -- Note: should be "rust-analyzer" with hyphen
	filetypes = { "rust" },
	settings = {
		["rust-analyzer"] = {
			check = {
				command = "clippy",
				extraArgs = {
					"--",
					"--no-deps",
					"-Dclippy::correctness",
					"-Wclippy::perf",
				},
			},
		},
	},
	on_attach = function(client, bufnr)
		vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
	end,
}
