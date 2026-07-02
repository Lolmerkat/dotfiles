hl.config({
    general = {
        gaps_in = 2,
        gaps_out = 4,
        border_size = 1,

        resize_on_border = true,
        resize_corner = 2,
        allow_tearing = false
    },

    decoration = {
        rounding = 6,
        rounding_power = 2,
        active_opacity = 1,
        inactive_opacity = 0.85,

        shadow = {
            enabled = false
        },

        blur = {
            enabled = true,
            size = 8,
            passes = 4,
            vibrancy = 0.1696,
            ignore_opacity = true
        }
    },

    misc = {
        force_default_wallpaper = false,
        disable_hyprland_logo = true,
    }
})
