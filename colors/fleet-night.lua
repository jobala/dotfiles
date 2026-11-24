vim.cmd.highlight("clear")
if vim.fn.exists("syntax_on") == 1 then
	vim.cmd.syntax("reset")
end

vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "fleet-night"

local colors = {
	bg = "#1F2123",
	surface = "#313336",
	border = "#4D5056",
	fg = "#E4E5E8",
	muted = "#969BA1",
	line = "#2A2C2E",
	selection = "#2E5F9D",
	blue = "#5A9AEF",
	focus = "#378BEE",
	accent = "#0D7FE8",
	cyan = "#90D9D7",
	pink = "#E7A1E1",
	yellow = "#EECF9A",
	purple = "#BDAFFF",
	type = "#97CEFF",
	type_parameter = "#B7D7E3",
	green = "#B3D38A",
	green_bright = "#8FE397",
	orange = "#E4A77F",
	red = "#EF6C7E",
	red_bright = "#F98A95",
	warning = "#FBD275",
	info = "#AE75CC",
	added = "#78BA9D",
	changed = "#80AEF1",
	deleted = "#F98A95",
}

local function set(groups, highlight)
	for _, group in ipairs(groups) do
		vim.api.nvim_set_hl(0, group, highlight)
	end
end

local function link(groups, target)
	for _, group in ipairs(groups) do
		vim.api.nvim_set_hl(0, group, { link = target })
	end
end

set({ "Normal", "NormalNC" }, { fg = colors.fg, bg = colors.bg })
set({ "SignColumn", "FoldColumn", "EndOfBuffer" }, { fg = colors.muted, bg = colors.bg })
set({ "NormalFloat", "Pmenu", "TelescopeNormal", "TelescopePromptNormal", "TelescopeResultsNormal", "TelescopePreviewNormal" }, { fg = colors.fg, bg = colors.surface })
set({ "FloatBorder", "TelescopeBorder", "TelescopePromptBorder", "TelescopeResultsBorder", "TelescopePreviewBorder" }, { fg = colors.focus, bg = colors.surface })
set({ "FloatTitle", "TelescopePromptTitle" }, { fg = "#FFFFFF", bg = colors.accent, bold = true })
set({ "FloatFooter" }, { fg = colors.cyan, bg = colors.surface, bold = true })
set({ "TelescopePromptPrefix" }, { fg = colors.cyan, bg = colors.surface, bold = true })
set({ "TelescopePromptCounter" }, { fg = colors.yellow, bg = colors.surface })
set({ "TelescopeSelection" }, { fg = "#FFFFFF", bg = "#294264", bold = true })
set({ "TelescopeMatching" }, { fg = colors.cyan, bold = true })
set({ "TelescopeResultsTitle", "TelescopePreviewTitle" }, { fg = colors.cyan, bg = colors.surface, bold = true })
set({ "PmenuSel" }, { fg = "#FFFFFF", bg = colors.accent, bold = true })
set({ "PmenuMatch" }, { fg = colors.cyan, bold = true })
set({ "PmenuKind" }, { fg = colors.purple })
set({ "PmenuExtra" }, { fg = colors.muted })
set({ "CmpItemAbbrMatch", "CmpItemAbbrMatchFuzzy" }, { fg = colors.cyan, bold = true })
set({ "CmpItemKindFunction", "CmpItemKindMethod" }, { fg = colors.yellow })
set({ "CmpItemKindClass", "CmpItemKindInterface", "CmpItemKindStruct", "CmpItemKindTypeParameter" }, { fg = colors.type })
set({ "CmpItemKindVariable", "CmpItemKindField", "CmpItemKindProperty" }, { fg = colors.purple })
set({ "CmpItemKindKeyword", "CmpItemKindOperator" }, { fg = colors.cyan })
set({ "CmpItemKindText", "CmpItemKindSnippet" }, { fg = colors.green })
set({ "CmpItemMenu" }, { fg = colors.muted, italic = true })
set({ "WinSeparator", "VertSplit" }, { fg = colors.border, bg = colors.bg })
set({ "LineNr", "Folded" }, { fg = "#7D8389", bg = colors.bg })
set({ "CursorLineNr" }, { fg = colors.fg, bg = colors.line, bold = true })
set({ "CursorLine", "ColorColumn" }, { bg = colors.line })
set({ "Visual", "Search" }, { fg = colors.fg, bg = colors.selection })
set({ "IncSearch", "CurSearch" }, { fg = colors.bg, bg = colors.warning, bold = true })
set({ "PmenuSbar" }, { bg = colors.border })
set({ "PmenuThumb" }, { bg = colors.muted })
set({ "StatusLine" }, { fg = colors.fg, bg = "#090909" })
set({ "StatusLineNC" }, { fg = colors.muted, bg = "#090909" })
set({ "TabLine" }, { fg = colors.muted, bg = colors.bg })
set({ "TabLineSel" }, { fg = "#FFFFFF", bg = colors.accent, bold = true })
set({ "TabLineFill" }, { bg = colors.bg })
set({ "Title", "Directory" }, { fg = colors.blue, bold = true })
set({ "MatchParen" }, { fg = colors.fg, bg = "#0D7FE8", bold = true })
set({ "NonText", "Whitespace", "SpecialKey" }, { fg = colors.border })
set({ "DiffAdd" }, { fg = colors.added, bg = "#24312D" })
set({ "DiffChange" }, { fg = colors.changed, bg = "#252D38" })
set({ "DiffDelete" }, { fg = colors.deleted, bg = "#36272B" })
set({ "DiffText" }, { fg = colors.fg, bg = "#294264", bold = true })
set({ "Added", "GitSignsAdd" }, { fg = colors.added })
set({ "Changed", "GitSignsChange" }, { fg = colors.changed })
set({ "Removed", "GitSignsDelete" }, { fg = colors.deleted })

set({ "Comment", "@comment", "@comment.documentation" }, { fg = "#959799", italic = true })
set({ "@comment.documentation.tag", "@comment.markup" }, { fg = colors.cyan })
set({ "@comment.documentation.string" }, { fg = colors.fg })
set({ "@comment.todo", "@comment.error", "@comment.warning", "@comment.note" }, { fg = colors.green_bright, bold = true })
set({ "Constant", "String", "Character" }, { fg = colors.pink })
set({ "Number", "Float" }, { fg = colors.yellow })
set({ "Boolean", "@boolean" }, { fg = colors.cyan })
set({ "Identifier" }, { fg = colors.fg })
set({ "Statement", "Keyword", "StorageClass", "Structure", "Conditional", "Repeat", "Label", "Exception" }, { fg = colors.cyan })
set({ "Operator", "Delimiter" }, { fg = colors.fg })
set({ "Function" }, { fg = colors.yellow })
set({ "SpecialChar" }, { fg = colors.cyan })
set({ "Type" }, { fg = colors.type })
set({ "Special" }, { fg = colors.green })
set({ "PreProc", "Include", "Define", "Macro" }, { fg = colors.green })
set({ "Todo" }, { fg = colors.green_bright, bold = true })
set({ "Error" }, { fg = colors.red, bold = true })
set({ "Underlined" }, { fg = colors.pink, underline = true })

set({ "@string", "@string.documentation", "@character" }, { fg = colors.pink })
set({ "@string.binary" }, { fg = colors.green })
set({ "@string.regex", "@string.regexp", "@character.escape", "@string.escape" }, { fg = colors.cyan })
set({ "@character.special", "@string.special" }, { fg = colors.cyan })
set({ "@string.escape.unicode", "@string.escape.alternative", "@string.format", "@string.special.format", "@string.special.symbol" }, { fg = colors.yellow })
set({ "@string.special.url" }, { fg = colors.pink, italic = true, underline = true })
set({ "@number", "@number.float", "@float" }, { fg = colors.yellow })
set({ "@constant", "@constant.builtin" }, { fg = colors.purple })
set({ "@constant.macro", "@attribute", "@attribute.builtin" }, { fg = colors.green })
set({ "@variable" }, { fg = colors.fg })
set({ "@variable.builtin", "@variable.language" }, { fg = "#D38A97" })
set({ "@variable.parameter" }, { fg = colors.fg })
set({ "@variable.parameter.builtin" }, { fg = colors.fg })
set({ "@variable.member" }, { fg = colors.purple })
set({ "@property" }, { fg = colors.purple })
set({ "@function" }, { fg = "#FFFFFF", bold = true })
set({ "@function.method" }, { fg = "#FFFFFF", bold = true })
set({ "@function.call", "@function.method.call", "@function.builtin" }, { fg = colors.yellow })
set({ "@function.macro" }, { fg = colors.green })
set({ "@module", "@namespace" }, { fg = colors.type })
set({ "@constructor", "@type", "@type.builtin", "@type.definition" }, { fg = colors.type })
set({ "@type.qualifier", "@type.parameter" }, { fg = colors.type_parameter })
set({ "@keyword", "@keyword.function", "@keyword.return", "@keyword.conditional", "@keyword.repeat", "@keyword.exception" }, { fg = colors.cyan })
set({ "@keyword.operator" }, { fg = colors.fg })
set({ "@keyword.directive", "@keyword.directive.define" }, { fg = colors.green })
set({ "@operator", "@punctuation.delimiter", "@punctuation.bracket" }, { fg = colors.fg })
set({ "@punctuation.special" }, { fg = "#5A5C5F" })
set({ "@tag" }, { fg = colors.type })
set({ "@tag.custom" }, { fg = colors.orange })
set({ "@tag.attribute" }, { fg = colors.type_parameter })
set({ "@tag.delimiter" }, { fg = "#5A5C5F" })
set({ "@markup.heading" }, { fg = colors.cyan, bold = true })
set({ "@markup.heading.1", "@markup.heading.2", "@markup.heading.3", "@markup.heading.4", "@markup.heading.5", "@markup.heading.6" }, { fg = colors.cyan, bold = true })
set({ "@markup.raw", "@markup.raw.block" }, { fg = colors.pink })
set({ "@markup.link", "@markup.link.label", "@markup.link.url" }, { fg = colors.pink, italic = true, underline = true })
set({ "@markup.strong" }, { fg = colors.fg, bold = true })
set({ "@markup.italic" }, { fg = colors.fg, italic = true })
set({ "@markup.strikethrough" }, { fg = colors.fg, strikethrough = true })
set({ "@markup.list" }, { fg = colors.cyan })
set({ "@diff.plus" }, { fg = colors.added })
set({ "@diff.minus" }, { fg = colors.deleted })
set({ "@diff.delta" }, { fg = colors.changed })

set({ "DiagnosticError", "DiagnosticSignError", "DiagnosticVirtualTextError" }, { fg = colors.red })
set({ "DiagnosticWarn", "DiagnosticSignWarn", "DiagnosticVirtualTextWarn" }, { fg = colors.warning })
set({ "DiagnosticInfo", "DiagnosticSignInfo", "DiagnosticVirtualTextInfo" }, { fg = colors.info })
set({ "DiagnosticHint", "DiagnosticSignHint", "DiagnosticVirtualTextHint" }, { fg = colors.muted })
set({ "DiagnosticUnderlineError" }, { undercurl = true, sp = colors.red })
set({ "DiagnosticUnderlineWarn" }, { undercurl = true, sp = colors.warning })
set({ "DiagnosticUnderlineInfo" }, { undercurl = true, sp = colors.info })
set({ "DiagnosticUnderlineHint" }, { undercurl = true, sp = colors.muted })
set({ "ErrorMsg" }, { fg = colors.red })
set({ "WarningMsg" }, { fg = colors.warning })
set({ "Question" }, { fg = colors.green })
set({ "LspInlayHint" }, { fg = colors.muted, italic = true })
set({ "LspReferenceText", "LspReferenceRead", "LspReferenceWrite" }, { bg = colors.selection })

link({
	"@lsp.type.class",
	"@lsp.type.enum",
	"@lsp.type.interface",
	"@lsp.type.namespace",
	"@lsp.type.struct",
}, "@type")
link({ "@lsp.type.type" }, "@type")
link({ "@lsp.type.typeParameter" }, "@type.parameter")
link({ "@lsp.type.function", "@lsp.type.method" }, "@function.call")
link({ "@lsp.type.parameter" }, "@variable.parameter")
link({ "@lsp.type.property", "@lsp.type.enumMember" }, "@property")
link({ "@lsp.type.variable" }, "@variable")
link({ "@lsp.type.decorator", "@lsp.type.macro" }, "@attribute")
link({ "@lsp.type.keyword" }, "@keyword")
link({ "@lsp.type.operator" }, "@operator")
link({ "@lsp.type.comment" }, "@comment")
link({ "@lsp.typemod.function.declaration", "@lsp.typemod.method.declaration" }, "@function")
set({ "@lsp.typemod.method.static" }, { fg = colors.yellow, italic = true })
link({ "@lsp.typemod.variable.readonly" }, "@property")

vim.g.terminal_color_0 = colors.fg
vim.g.terminal_color_1 = "#EE4F65"
vim.g.terminal_color_2 = colors.cyan
vim.g.terminal_color_3 = "#FBD684"
vim.g.terminal_color_4 = colors.blue
vim.g.terminal_color_5 = "#EE91E6"
vim.g.terminal_color_6 = "#39D3EA"
vim.g.terminal_color_7 = colors.bg
vim.g.terminal_color_8 = "#686868"
vim.g.terminal_color_9 = "#CF0026"
vim.g.terminal_color_10 = "#00AA7E"
vim.g.terminal_color_11 = "#E49E23"
vim.g.terminal_color_12 = "#0076EA"
vim.g.terminal_color_13 = "#EE5CE3"
vim.g.terminal_color_14 = "#00C3DC"
vim.g.terminal_color_15 = colors.bg
