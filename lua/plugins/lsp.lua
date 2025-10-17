return {
    {
        "williamboman/mason.nvim",
        config = function() require("mason").setup() end,
    },
    {
        "williamboman/mason-lspconfig",
        config = function()
        require("mason-lspconfig")
        .setup({
            ensure_insalled=
            {
                "vue_ls",
                "lua_ls",
                "gopls",
                "clangd",
                "pylsp",
                "goimports",
                "prettier",
                "typescript-language-server",
            },
        })
        end,
    },
}
