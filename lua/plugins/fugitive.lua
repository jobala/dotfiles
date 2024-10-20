require("util")

return {
  "tpope/vim-fugitive",

  config = function()
    nmap("<leader>g", ":G<cr>")
  end,
}
