-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Catppuccin Macchiato'

config.font = wezterm.font_with_fallback {
  'FiraCode Nerd Font Mono',
  'JetBrains Mono',
}

config.inactive_pane_hsb = {
  saturation = 0.9,
  brightness = 0.8,
}

-- and finally, return the configuration to wezterm
return config
