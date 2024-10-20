return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"sindrets/diffview.nvim",
		"nvim-telescope/telescope.nvim", -- optional
	},
	config = function()
		nmap("<leader>g", ":Neogit<cr>")
	end,
}
