return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig",
    config = function()
      require("mason-lspconfig").setup({
        ensure_insalled = {
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
  {
    "https://github.com/neovim/nvim-lspconfig",
    config = function()
      nmap("gd", vim.lsp.buf.definition)
      nmap("gD", vim.lsp.buf.declaration)
      nmap("gr", vim.lsp.buf.references)
      nmap("gi", vim.lsp.buf.implementation)
      nmap("K", vim.lsp.buf.hover)
      nmap("<C-m>", vim.lsp.buf.signature_help)
      nmap("E", vim.diagnostic.open_float)

      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      })

      lspconfig.gopls.setup({
        capabilities = capabilities,
      })

      lspconfig.ts_ls.setup({ capabilities = capabilities })
      lspconfig.clangd.setup({
        capabilities = capabilities,
      })
      lspconfig.rust_analyzer.setup({ capabilities = capabilities })
    end,
  },
}
