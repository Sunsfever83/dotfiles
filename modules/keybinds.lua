local mainMod = "SUPER"
local alt = "ALT"

-- 1. Basic Launchers
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd("kitty"))
hl.bind(alt .. " + D", hl.dsp.exec_cmd("wofi --show drun"))
hl.bind(alt .. " + F", hl.dsp.exec_cmd("thunar"))
hl.bind(alt .. " + S", hl.dsp.exec_cmd("signal-desktop"))
hl.bind(alt .. " + B", hl.dsp.exec_cmd("vivaldi"))
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd("hyprshot -m region -o ~/Pictures"))
hl.bind(alt .. " + E", hl.dsp.exec_cmd("kate"))
hl.bind(alt .. " + P", hl.dsp.exec_cmd("protonvpn-app"))

-- 2. Window Management
hl.bind(mainMod .. " + Q", hl.dsp.window.kill())
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + Space", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen(1)) -- Fullscreen 1
hl.bind(alt .. " + SHIFT + F", hl.dsp.window.fullscreen(0)) -- Fullscreen toggle

-- 3. Workspace Navigation & Moving (Loop 1-6)
for i = 1, 6 do
    local key = tostring(i)
    -- Switch to workspace (SUPER + 1-6)
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = key }))
    
    -- Move window to workspace (SUPER + SHIFT + 1-6)
    -- Use hl.dsp.window.move with the workspace parameter
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = key }))
end

-- 4. Move Focus & Move Windows (Directional)
local directions = { left = "l", right = "r", up = "u", down = "d" }
for key, dir in pairs(directions) do
    -- Focus (SUPER + Arrow) -> Uses the top-level 'focus' function
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ direction = dir }))
    
    -- Move Window (SUPER + SHIFT + Arrow) -> Uses 'window.move'
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ direction = dir }))
end

-- 5. Split Ratio & System
-- hl.bind(mainMod .. " + SHIFT + H", hl.dsp.splitratio(-0.1))
-- hl.bind(mainMod .. " + SHIFT + L", hl.dsp.splitratio(0.1))
hl.bind(mainMod .. " + SHIFT + R", hl.dsp.exec_cmd("hyprctl reload"))
hl.bind(mainMod .. " + SHIFT + X", hl.dsp.exit())

-- 6. Sound Management (Alt + Period/Comma)
-- We add { repeating = true } so you can hold the key to change volume
hl.bind(alt .. " + period", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ +5%"), { repeating = true })
hl.bind(alt .. " + comma", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ -5%"), { repeating = true })
hl.bind(alt .. " + SHIFT + comma", hl.dsp.exec_cmd("pactl set-sink-mute @DEFAULT_SINK@ toggle"))