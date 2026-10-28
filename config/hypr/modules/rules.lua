-- Some of my personally preferred window rules, you will probably like these as well!
-- There's also lots of bug-fixes for specific apps here
-- Read https://wiki.hyprland.org/Configuring/Window-Rules/ for more info
-- Read https://wiki.hyprland.org/Configuring/Workspace-Rules/  for more info

-- This adds a blur to the background of wofi (our app launcher)
-- The reason we can't do this within wofi itself, is because gtk3 doesn't
-- have a built-in background blur.
hl.layer_rule({
    match = { namespace = "wofi" },
    blur = true,
    ignore_alpha = 0.01,
})

-- Add blur to waybar, for same reason as above. Since we have two versions
-- of the waybar design, one with translucency.
hl.layer_rule({
    match = { namespace = "waybar" },
    blur = true,
    blur_popups = true,
    ignore_alpha = 0.01,
})

-- Add blur to eww widgets
hl.layer_rule({
    match = { namespace = "eww" },
    blur = true,
    blur_popups = true,
    ignore_alpha = 0.01,
})

-- Fix dragging issues with XWayland
hl.window_rule({
    match = {
        class = "^$",
        title = "^$",
        xwayland = 1,
        float = 1,
        fullscreen = 0,
        pin = 0,
    },
    no_focus = true,
})
