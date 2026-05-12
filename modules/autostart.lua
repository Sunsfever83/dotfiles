-- Autostart applications
hl.on("hyprland.start", function ()
    -- Start Wallpaper
    hl.exec_cmd("hyprpaper --config ~/.config/hyprpaper/hyprpaper.conf")
    
    -- Start Waybar with specific config/style
    hl.exec_cmd("waybar -c ~/.config/waybar/config -s ~/.config/waybar/style.css")
end)