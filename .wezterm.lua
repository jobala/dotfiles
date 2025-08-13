local wezterm = require("wezterm")
local smart_splits = wezterm.plugin.require("https://github.com/mrjones2014/smart-splits.nvim")
local config = wezterm.config_builder()

config.font = wezterm.font("Anonymous Pro")
config.font_size = 15

config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 2000 }
config.keys = {
	-- splitting
	{
		mods = "LEADER",
		key = "-",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		mods = "LEADER",
		key = "|",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		mods = "LEADER",
		key = "m",
		action = wezterm.action.TogglePaneZoomState,
	},
	{
		mods = "LEADER",
		key = "Space",
		action = wezterm.action.RotatePanes("Clockwise"),
	},
	-- show the pane selection mode, but have it swap the active and selected panes
	{
		mods = "LEADER",
		key = "0",
		action = wezterm.action.PaneSelect({
			mode = "SwapWithActive",
		}),
	},
	{
		key = "[",
		mods = "LEADER",
		action = wezterm.action.ActivateCopyMode,
	},
	-- {
	--   key = "x",
	--   mods = "LEADER",
	--   action = wezterm.action.CloseCurrentTab({ confirm = true }),
	-- },

	-- Attach to muxer
	{
		key = "a",
		mods = "LEADER",
		action = wezterm.action.AttachDomain("unix"),
	},

	-- Detach from muxer
	{
		key = "d",
		mods = "LEADER",
		action = wezterm.action.DetachDomain({ DomainName = "unix" }),
	},

	-- Rename current session; analagous to command in tmux
	{
		key = "n",
		mods = "LEADER",
		action = wezterm.action.PromptInputLine({
			description = "Enter new name for session",
			action = wezterm.action_callback(function(window, pane, line)
				if line then
					wezterm.mux.rename_workspace(window:mux_window():get_workspace(), line)
				end
			end),
		}),
	},

	{
		key = "f",
		mods = "LEADER",
		action = wezterm.action.ShowLauncherArgs({ flags = "WORKSPACES" }),
	},
}

smart_splits.apply_to_config(config, {
	direction_keys = {
		move = { "h", "j", "k", "l" },
		resize = { "LeftArrow", "DownArrow", "UpArrow", "RightArrow" },
	},

	modifiers = {
		move = "LEADER", -- modifier to use for pane movement, e.g. CTRL+h to move left
		resize = "CMD", -- modifier to use for pane resize, e.g. META+h to resize to the left
	},
})

config.ssh_domains = {
	{
		name = "api",
		remote_address = "185.180.221.110",
		username = "root",
	},
	{
		name = "node1",
		remote_address = "45.14.135.154",
		username = "root",
	},
	{
		name = "pi",
		remote_address = "node1.local",
		username = "jobala",
	},
}

config.unix_domains = {
	{
		name = "unix",
	},
}

return config
