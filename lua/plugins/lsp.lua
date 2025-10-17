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

      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      vim.diagnostic.config({ virtual_text = { current_line = true } })
      -- vim.lsp.on_type_formatting.enable()
      --
      vim.diagnostic.config({
        -- virtual_lines = true,
        -- virtual_text = true,
        underline = true,
        update_in_insert = false,
        severity_sort = true,
        float = {
          border = "rounded",
          source = true,
        },
        signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = "󰅚 ",
            [vim.diagnostic.severity.WARN] = "󰀪 ",
            [vim.diagnostic.severity.INFO] = "󰋽 ",
            [vim.diagnostic.severity.HINT] = "󰌶 ",
          },
          numhl = {
            [vim.diagnostic.severity.ERROR] = "ErrorMsg",
            [vim.diagnostic.severity.WARN] = "WarningMsg",
          },
        },
      })
    end,
  },
}
