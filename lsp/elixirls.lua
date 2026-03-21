return {
	cmd = { "elixir-ls" },

	root_dir = vim.fs.dirname(vim.fs.find({ "mix.exs" }, { upward = true })[1]),
	filetypes = { "elixir", "eelixir", "heex", "surface", "ex" },
	settings = {
		elixirLS = {
			dialyzerEnabled = true,
			enableTestLenses = true,
			suggestSpecs = true,
		},
	},
}
