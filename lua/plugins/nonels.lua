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
                null.builtins.formatting.goimports,
                null.builtins.formatting.mix,
                null.builtins.diagnostics.credo,
                null.builtins.diagnostics.golangci_lint,
            },
        })
        vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
        vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
                vim.lsp.buf.format({ async = false })
            end,
        })
    end,
}
