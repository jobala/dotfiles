require("config/basic")
require("config/lazy")

local lsp_configs = {}

for _, f in pairs(vim.api.nvim_get_runtime_file("lsp/*.lua", true)) do
	local server_name = vim.fn.fnamemodify(f, ":t:r")
	table.insert(lsp_configs, server_name)
end

vim.lsp.enable(lsp_configs)

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

vim.diagnostic.config({
	-- virtual_lines= true,
	-- virtual_text= true,
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
