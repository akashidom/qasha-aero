-- ========
--   Hyprland config file for my "diinki aero" rice. Hyprland is the right tool for the job due to all of its available
--   window effects, but you could achieve 99% of the same design with swayfx as well; I just chose hyprland due to
--   compatability issues with nvidia GPU.
-- ========
require("variables")

--                                    !!MONITORS!!                                   #
-- --------------------------------------------------------------------------------- #
--                                    !!MONITORS!!                                   #

-- Make sure to customize monitors! This is just my setup so you get an idea.
-- run `hyprctl monitors all` to see all your monitors!!!
require("monitors")
require("workspaces")

--                                    !!MODULES!!                                    #
-- --------------------------------------------------------------------------------- #
--                                    !!MODULES!!                                    #

require("modules.env")
require("modules.animations")
require("modules.decorations")
-- READ https://wiki.hyprland.org/Configuring/Variables/#input IF CONFUSED!
-- Example keyboard/mouse input settings.

local mainMod = "SUPER"

hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd("hyprshot --mode region --output-folder /tmp"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + SHIFT + SPACE", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd(menu))

hl.bind(mainMod .. " + 1", hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. " + 2", hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. " + 3", hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. " + 4", hl.dsp.focus({ workspace = 4 }))
hl.bind(mainMod .. " + 5", hl.dsp.focus({ workspace = 5 }))
hl.bind(mainMod .. " + 6", hl.dsp.focus({ workspace = 6 }))
hl.bind(mainMod .. " + 7", hl.dsp.focus({ workspace = 7 }))
hl.bind(mainMod .. " + 8", hl.dsp.focus({ workspace = 8 }))
hl.bind(mainMod .. " + 9", hl.dsp.focus({ workspace = 9 }))
hl.bind(mainMod .. " + 0", hl.dsp.focus({ workspace = 10 }))

hl.bind(mainMod .. " + SHIFT + 1", hl.dsp.window.move({ workspace = 1 }))
hl.bind(mainMod .. " + SHIFT + 2", hl.dsp.window.move({ workspace = 2 }))
hl.bind(mainMod .. " + SHIFT + 3", hl.dsp.window.move({ workspace = 3 }))
hl.bind(mainMod .. " + SHIFT + 4", hl.dsp.window.move({ workspace = 4 }))
hl.bind(mainMod .. " + SHIFT + 5", hl.dsp.window.move({ workspace = 5 }))
hl.bind(mainMod .. " + SHIFT + 6", hl.dsp.window.move({ workspace = 6 }))
hl.bind(mainMod .. " + SHIFT + 7", hl.dsp.window.move({ workspace = 7 }))
hl.bind(mainMod .. " + SHIFT + 8", hl.dsp.window.move({ workspace = 8 }))
hl.bind(mainMod .. " + SHIFT + 9", hl.dsp.window.move({ workspace = 9 }))
hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag())
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize())

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl s 10%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl s 10%-"), { locked = true, repeating = true })

hl.layer_rule({
    match = { namespace = "wofi" },
    blur = true,
    ignore_alpha = 0.01,
})

hl.layer_rule({
    match = { namespace = "waybar" },
    blur = true,
    blur_popups = true,
    ignore_alpha = 0.01,
})

hl.layer_rule({
    match = { namespace = "eww" },
    blur = true,
    blur_popups = true,
    ignore_alpha = 0.01,
})

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

hl.config({
    input = {
        -- English, Swedish, and Spanish keyboard layout example,
        -- Switch layout with pressing: alt + shift
        kb_layout = "us",
        kb_options = "grp:alt_shift_toggle",
        -- Set as needed
        kb_rules = "",
        kb_variant = "",
        kb_model = "",
        follow_mouse = 1,
        -- Range is -1.0 to 1.0 | 0 means no modification to sensitivity.
        sensitivity = 0,
        touchpad = {
            natural_scroll = false,
        },
    },
    -- This fixes a few bugs.
    cursor = {
        no_hardware_cursors = true,
    },
    --                                    !!KEYBINDS!!                                   #
    -- --------------------------------------------------------------------------------- #
    --                                    !!KEYBINDS!!                                   #
    -- My personally preferred keybinds, change as needed.
    -- Windows key / Super key is the main modifier key. (abbreviated as mod)
    -- mod + enter = start terminal
    -- mod + Q = kill current focused application
    -- mod + shift + S = take screenshot of area, MUST HAVE HYPRSHOT INSTALLED!
    -- mod + E = open file manager (I prefer caja).
    -- mod + shift + space = Toggle focused window to be floating or tiled.
    -- mod + F = toggle focused window to full-screen view.
    -- mod + D = toggle application launcher (I prefer wofi).
    -- Switch current workspaces with mainMod + [0-9]
    -- Move a focused window to a workspace with mainMod + SHIFT + [0-9]
    -- Move and Resize windows with mainMod + LMB/RMB and dragging, drag on edges to resize.
    -- Laptop multimedia keys for volume and LCD brightness
    --                                    !!WINDOW RULES!!                               #
    -- --------------------------------------------------------------------------------- #
    --                                    !!WINDOW RULES!!                               #
    -- -- Some of my personally preferred window rules, you will probably like these as well! ---%
    -- -- There's also lots of bug-fixes for specific apps here.                              ---%
    -- Read https://wiki.hyprland.org/Configuring/Window-Rules/ for more info
    -- Read https://wiki.hyprland.org/Configuring/Workspace-Rules/  for more info
    -- This adds a blur to the background of wofi (our app launcher)
    -- The reason we can't do this within wofi itself, is because gtk3 doesn't
    -- have a built-in background blur.
    -- Add blur to waybar, for same reason as above. Since we have two versions
    -- of the waybar design, one with translucency.
    -- Add blur to eww widgets
    -- Fix dragging issues with XWayland
})

hl.on("hyprland.start", function()
    hl.exec_cmd("nm-applet")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
    hl.exec_cmd("waybar")
end)

hl.on("config.reloaded", function()
    hl.exec_cmd("$HOME/.config/eww/scripts/start.sh")
end)
