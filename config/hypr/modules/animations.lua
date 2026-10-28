-- Window animations
hl.curve("myBezier", { type = "bezier", points = { { 0, 1 }, { 0.18, 1.0 } } })

-- I prefer quick animations, that's what this setup is.
hl.config({
    animations = {
        -- SET enabled = false if you want to disable animations.
        enabled = true,
    },
})

hl.animation({
    leaf = "windows",
    enabled = true,
    speed = 1.5,
    bezier = "myBezier",
})
hl.animation({
    leaf = "windowsOut",
    enabled = true,
    speed = 2,
    bezier = "myBezier",
    style = "popin 95%",
})
hl.animation({
    leaf = "border",
    enabled = true,
    speed = 12,
    bezier = "myBezier",
})
hl.animation({
    leaf = "borderangle",
    enabled = true,
    speed = 5,
    bezier = "default",
})
hl.animation({
    leaf = "fade",
    enabled = true,
    speed = 6,
    bezier = "default",
})
hl.animation({
    leaf = "workspaces",
    enabled = true,
    speed = 6,
    bezier = "default",
})
