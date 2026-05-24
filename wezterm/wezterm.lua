local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.font_size = 15.0
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.colors = require('cyberdream')

-- Claude Code
config.keys = {
  { key="Enter", mods="SHIFT", action=wezterm.action{ SendString='\x1b\r' } },
}

return config
