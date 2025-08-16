-- Pull in the wezterm API.
local wezterm = require 'wezterm' --[[@as Wezterm]]
-- local act = wezterm.action

-- Configuration holder.
local config = wezterm.config_builder()

-- Apply config choices here.
-- - Default shell -
config.default_prog = { 'C:/Users/chris/AppData/Local/Programs/nu/bin/nu.exe' }
config.default_cwd = 'C:/Users/chris'
-- - Launch Menu -
config.launch_menu = {
    {
        label = 'nushell',
        args = { 'C:/Users/chris/AppData/Local/Programs/nu/bin/nu.exe', '-l' },
        cwd = 'C:/Users/chris/'
    },
    {
        -- Optional label to show in the launcher. If omitted, a label
        -- is derived from the `args`.
        label = 'pwsh',
        args = { 'pwsh', '-l' },
        cwd = 'C:/Users/chris/',
    }
}

-- - Colours -
config.color_scheme = 'Tokyo Night'

-- - Fonts -
config.font = wezterm.font {
    family = 'FiraCode Nerd Font',
    harfbuzz_features = { 'cv14', 'ss02', 'ss09', 'cv25', 'cv26', 'cv32' },
    weight = 450
}
config.font_size = 11.25

-- - Plugins -
-- (1) vim-like modal bindings
-- NOTE: Place at the bottom of the config.
local modal = wezterm.plugin.require("https://github.com/MLFlexer/modal.wezterm")
modal.set_default_keys(config)
modal.apply_to_config(config)
wezterm.on("modal.enter", function(name, window, pane)
    modal.set_right_status(window, name)
    modal.set_window_title(pane, name)
end)
wezterm.on("modal.exit", function(name, window, pane)
    window:set_right_status("Normal")
    modal.reset_window_title(pane)
end)

-- Finally, return the configuration to wezterm:
return config
