-- ========
--   Hyprland config file for my "diinki aero" rice. Hyprland is the right tool for the job due to all of its available
--   window effects, but you could achieve 99% of the same design with swayfx as well; I just chose hyprland due to
--   compatability issues with nvidia GPU.
-- ========
require("variables")
-- Make sure to customize monitors! This is just my setup so you get an idea.
-- run `hyprctl monitors all` to see all your monitors!!!
require("monitors")
require("workspaces")

--                                    !!MODULES!!                                    #
-- --------------------------------------------------------------------------------- #
--                                    !!MODULES!!                                    #
-- Files are put inside a folder for easier organization.
-- You can also just put all of the code in this file, but I prefer to keep it organized.
require("modules.env")
require("modules.animations")
require("modules.decorations")
require("modules.keybinds")
require("modules.rules")
require("modules.input")

hl.on("hyprland.start", function()
    hl.exec_cmd("nm-applet")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
    hl.exec_cmd("waybar")
end)

hl.on("config.reloaded", function()
    hl.exec_cmd("$HOME/.config/eww/scripts/start.sh")
end)
