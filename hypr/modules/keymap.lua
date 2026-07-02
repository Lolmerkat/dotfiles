require("utils.bind")
require("globals")

Bind.key({ "ALT", "SPACE" }, Apps.Menu)
Bind.modkey("E", Apps.FileManager)
Bind.modkey("RETURN", Apps.Terminal)
Bind.modkey("ESCAPE", "hyprlock")
Bind.modkey("W", "~/wallpapers/.set-wallpaper.sh")

Bind.modkey("M", hl.dsp.exit())
Bind.modkey("Q", hl.dsp.window.kill())
Bind.modkey("V", hl.dsp.window.float({ action = "toggle" }))
Bind.modkey("F", hl.dsp.window.fullscreen({ action = "toggle" }))

Bind.modkey("C", "grimblast copy area")
Bind.modkey({ "SHIFT", "C" }, "grimblast copysave area")

for i = 1, 9 do
    Bind.modkey({ i }, hl.dsp.focus({ workspace = i }))
    Bind.modkey({ "SHIFT", i }, hl.dsp.window.move({ workspace = i }))
end

Bind.modkey("mouse:272", hl.dsp.window.drag(), { mouse = true })
Bind.modkey("mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys
Bind.key("XF86AudioRaiseVolume", "wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+", { repeating = true })
Bind.key("XF86AudioLowerVolume", "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-", { repeating = true })
Bind.key("XF86AudioMute", "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle")
Bind.key("XF86AudioMicMute", "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle")
Bind.key("XF86MonBrightnessUp", "brightnessctl -e4 -n2 set 5%+", { repeating = true })
Bind.key("XF86MonBrightnessDown", "brightnessctl -e4 -n2 set 5%-", { repeating = true })
