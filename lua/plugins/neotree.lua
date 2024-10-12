require("util")

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    nmap("<leader>s", ":Neotree toggle<cr>")
    nmap("<leader>g", ":Neotree git_status float<cr>")

    require("neo-tree").setup({
      window = {
        position = "right",
      },

      filesystem = {
        follow_current_file = {
          enabled = true,
        },

        window = {
          mappings = {
            [">"] = "toggle_hidden",
          },
        },
      },
    })
  end,
}
