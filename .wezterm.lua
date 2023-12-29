--init
local wezterm = require 'wezterm'
local config = {}
if wezterm.config_builder then
  config = wezterm.config_builder()
end

--main color theme
local dracula = wezterm.color.get_builtin_schemes()['Dracula']
dracula.background = '#0C0E0F'
dracula.foreground = '#CED0D1'
dracula.split = "#C58CEC"
dracula.cursor_bg = "#709AD2"
dracula.ansi = {
  "#C58CEC",
  "#82C29C",
  "#6C95CB",
  "#E2676D",
  "#835749",
  "#CCC384",
  "#C58CEC",
  "#82C29C"
}
dracula.tab_bar = {
  background = '#0a0c0d',
  active_tab = {
    bg_color = '#0C0E0F',
    fg_color = '#CED0D1',
    intensity = 'Bold'
  },
  inactive_tab = {
    bg_color = "#0a0c0d",
    fg_color = '#CED0D1'
  },
  new_tab = {
    bg_color = "#0a0c0d",
    fg_color = "#CED0D1"
  }
}
config.color_schemes = {
  ['Yoru'] = dracula,
}
config.color_scheme = 'Yoru'

--window settings
config.font_size = 13
config.font = wezterm.font 'JetBrains Mono'
-- config.use_resize_increments = true
config.window_decorations = "RESIZE"
config.window_close_confirmation = "NeverPrompt"
config.use_fancy_tab_bar = false

return config
