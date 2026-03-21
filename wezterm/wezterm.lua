local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.font_size = 15.0
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.colors = require('cyberdream')
config.window_background_opacity = 0.80

return config
