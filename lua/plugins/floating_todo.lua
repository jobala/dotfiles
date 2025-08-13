return {
	"vimichael/floatingtodo.nvim",
	config = function()
		require("floatingtodo").setup({
			target_file = "~/notes/todo.md",
			border = "single", -- single, rounded, etc.
		})

		nmap("<leader>td", ":Td<CR>")
	end,
}
