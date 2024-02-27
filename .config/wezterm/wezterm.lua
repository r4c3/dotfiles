--init
local wezterm = require("wezterm")
local act = wezterm.action
local config = {}
if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.color_scheme = "Oxocarbon Dark"

config.font_size = 16
config.font = wezterm.font("JetBrains Mono")
config.window_decorations = "RESIZE"
config.window_close_confirmation = "NeverPrompt"
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.tab_max_width = 4

config.keys = {
	{
		key = "t",
		mods = "SHIFT|ALT",
		action = act.SpawnTab("CurrentPaneDomain"),
	},
}

return config
