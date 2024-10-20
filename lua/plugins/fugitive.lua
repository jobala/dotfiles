require("util")

return {
  "tpope/vim-fugitive",

  config = function()
    vim.cmd([[
     nmap("<leader>g", ":G<cr>")
   ]])
  end,
}
