-- Environment Variables
hl.env("WLR_DRM_NO_ATOMIC", "1")

-- Global System Config
hl.config({
    render = {
        direct_scanout = 0,
    },
    cursor = {
        no_hardware_cursors = true,
    },
    -- Mouse Specific Settings
    devices = {
        {
            name = "sonix-gaming-mouse",
            sensitivity = -0.5,
            accel_profile = "flat",
        }
    }
})
