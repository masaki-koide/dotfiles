-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Dracula+'

-- IME
config.use_ime = true

-- Window
config.macos_window_background_blur = 10

-- Tab
config.hide_tab_bar_if_only_one_tab = true

-- Backgound
config.background = {
  {
    source = {
      File = ''
    },
    opacity = 0.8
  }
}

-- Fonts
config.font = wezterm.font("FiraCode Nerd Font", {weight="Medium", stretch="Normal", style="Normal"})
config.font_size = 13.0

-- and finally, return the configuration to wezterm
return config
