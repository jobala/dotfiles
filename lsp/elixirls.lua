return {
    -- cmd = { "elixir-ls" },
    --
    -- root_dir = vim.fs.dirname(vim.fs.find({ "mix.exs" }, { upward = true })[1]),
    -- filetypes = { "elixir", "eelixir", "heex", "surface", "ex" },
    -- settings = {
    -- 	elixirLS = {
    -- 		dialyzerEnabled = true,
    -- 		enableTestLenses = true,
    -- 		suggestSpecs = true,
    -- 	},
    -- },
    cmd = { "dexter", "lsp" },
    root_markers = { ".dexter.db", ".git", "mix.exs" },
    filetypes = { "elixir", "eelixir", "heex" },
    init_options = {
        followDelegates = true, -- jump through defdelegate to the target function
        -- stdlibPath = "",      -- override Elixir stdlib path (auto-detected)
        -- debug = false,        -- verbose logging to stderr (view with :LspLog)
    },
}
