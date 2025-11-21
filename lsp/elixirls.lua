return {
    cmd = { "elixir-ls" },

    root_dir = vim.fs.dirname(vim.fs.find({ "mix.exs" }, { upward = true })[1]),
    filetypes = { "elixir", "eelixir", "heex", "surface" },
    settings = {
        elixirLS = {
            dialyzerEnabled = true,
            fetchDeps = true,
            enableTestLenses = true,
            suggestSpecs = true,
        },
    },
}
