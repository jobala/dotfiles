return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        branch = "main",

        config = function()
            config = require("nvim-treesitter")

            config.setup({
                install_dir = vim.fn.stdpath("data") .. "/site",
            })
            config.install({ "go", "elixir" })
        end,
    },
}
