return {
	cmd = { "rust_analyzer" },
	check = {
		command = "clippy",
		extraArgs = {
			"--",
			"--no-deps",
			"-Dclippy::correctness",
			"-Wclippy::perf",
		},
	},

	on_attach = function(client, bufnr)
		vim.lsp.inlay_hint.enable(true)
	end,
}
