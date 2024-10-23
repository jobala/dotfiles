require("util")

return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local builtin = require("telescope.builtin")
		nmap("<leader>ff", builtin.find_files)
		nmap("<leader>fg", builtin.live_grep)
		nmap("<leader>fb", builtin.buffers)
		nmap("<leader>fh", builtin.help_tags)
	end,
}
