-- keybinds.lua
-- ┌────────────────────────────────────────────┐
-- │ AuthorModify : KyawNyeinThant              │
-- │ Github       : kntlifelovelive             │
-- │ Date         : 2026 , March, 13            │
-- └────────────────────────────────────────────┘

local vars = require("modules.globalvaribles")

local mainMod = vars.mainMod
local terminal = vars.terminal
local fileManager = vars.fileManager
local browser = vars.browser
local reload_waybar = vars.reload_waybar

-- =================================================
-- APP LAUNCHERS
-- =================================================
hl.bind(mainMod .. "+ V", hl.dsp.exec_cmd("walker --provider clipboard"))

hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(terminal))

hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager .. " --new-window"))

hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser))

hl.bind(mainMod .. " + CTRL + B", hl.dsp.exec_cmd("zen-browser"))

-- Music Player

hl.bind(mainMod .. " + CTRL + M", hl.dsp.exec_cmd("kitty -e archibubu"))

-- Telegram

hl.bind(mainMod .. " + CTRL + T", hl.dsp.exec_cmd("Telegram"))

-- Application Menu

-- hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("~/.config/hypr/scripts/applauncher/appmenu.sh"))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("~/.local/bin/appmenu"))

-- Power Menu

-- hl.bind(mainMod .. " + CTRL + P", hl.dsp.exec_cmd("~/.config/hypr/scripts/powermenu/rofipowermenu.sh"))
hl.bind(mainMod .. " + CTRL + P", hl.dsp.exec_cmd("~/.config/hypr/scripts/powermenu/rofipowermenu.sh"))
hl.bind(mainMod .. " + GRAVE", hl.dsp.exec_cmd("~/.local/bin/powermenu"))

-- =================================================
-- THEME SWITCH
-- =================================================

hl.bind(mainMod .. " + ALT + R", hl.dsp.exec_cmd("~/.config/hypr/scripts/roficolorswitch/roficolor-switch.sh"))

hl.bind(mainMod .. " + ALT + K", hl.dsp.exec_cmd("~/.config/hypr/scripts/kitty-themes/kittytheme_switch.sh"))
-- Global icon Switch
hl.bind(mainMod .. " + ALT + I", hl.dsp.exec_cmd("~/.local/bin/iconthemeSwitcher"))

hl.bind(mainMod .. " + ALT + B", hl.dsp.exec_cmd("~/.config/hypr/scripts/hyprbordertheme/hyprbordertheme-switch.sh"))

-- =================================================
-- WAYBAR
-- =================================================

hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(reload_waybar))

-- hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("~/.config/hypr/scripts/waybar/waybar-css-themes-switch.sh"))
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd("~/.local/bin/cssSwitch"))

hl.bind(mainMod .. " + ALT + W", hl.dsp.exec_cmd("~/.config/hypr/scripts/waybar/waybar-pair-switch.sh"))

-- =================================================
-- WALLPAPER / HYPRLOCK
-- =================================================

-- hl.bind(mainMod .. " + CTRL + W", hl.dsp.exec_cmd("~/.config/hypr/scripts/wallpaper/wallpaperSwitch.sh"))
hl.bind(mainMod .. " + BACKSLASH", hl.dsp.exec_cmd("~/.local/bin/wallpaper -p"))

hl.bind(mainMod .. " + ALT + F", hl.dsp.exec_cmd("~/.config/hypr/scripts/hyprlock/hyprlockforeImage.sh"))

hl.bind(mainMod .. " + SHIFT + L", hl.dsp.exec_cmd("~/.config/hypr/scripts/hyprlock/hyprlockWallpaper_bg.sh"))

-- =================================================
-- WINDOW MANAGEMENT
-- =================================================

-- Close Window

hl.bind(mainMod .. " + Q", hl.dsp.window.close())

-- Floating Toggle

hl.bind(
	mainMod .. " + CTRL + F",
	hl.dsp.window.float({
		action = "toggle",
	})
)

-- Pseudo / Split

hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())

hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))

-- =================================================
-- MOVE FOCUS
-- =================================================

hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + j", hl.dsp.focus({ direction = "down" }))

-- =================================================
-- MOVE WINDOWS
-- =================================================

hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.move({ direction = "down" }))

-- =================================================
-- WORKSPACE 1 - 10
-- =================================================

for i = 1, 10 do
	local key = i % 10

	hl.bind(
		mainMod .. " + " .. key,
		hl.dsp.focus({
			workspace = i,
		})
	)

	hl.bind(
		mainMod .. " + SHIFT + " .. key,
		hl.dsp.window.move({
			workspace = i,
		})
	)
end

-- =================================================
-- WORKSPACE SWITCH
-- =================================================

hl.bind(
	mainMod .. " + TAB",
	hl.dsp.focus({
		workspace = "e+1",
	})
)

hl.bind(
	mainMod .. " + CTRL + TAB",
	hl.dsp.focus({
		workspace = "e-1",
	})
)

-- NEW WORKSPACE (Super + Shift + Tab)
hl.bind(
	mainMod .. " + SHIFT + TAB",
	hl.dsp.focus({
		workspace = "+1",
	})
)
-- Scratchpad

hl.bind(
	mainMod .. " + S",
	hl.dsp.focus({
		workspace = "special:magic",
	})
)

hl.bind(
	mainMod .. " + SHIFT + S",
	hl.dsp.window.move({
		workspace = "special:magic",
	})
)

-- =================================================
-- KEYBOARD LAYOUT SWITCH
-- =================================================
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd("hyprctl switchxkblayout all next"))

-- =================================================
-- MOUSE WINDOW CONTROL
-- =================================================

hl.bind(mainMod .. " + mouse:272", hl.dsp.exec_cmd("hyprctl dispatch movewindow"), {
	mouse = true,
})

hl.bind(mainMod .. " + mouse:273", hl.dsp.exec_cmd("hyprctl dispatch resizeactive"), {
	mouse = true,
})

-- =================================================
-- HELP MENU
-- =================================================
hl.bind(mainMod .. " + ALT + H", hl.dsp.exec_cmd("~/.config/hypr/scripts/hyprmenu/hyprhelpmenu.sh"))

-- full screen recording with desktop audio
-- Screen Recording Full mp4
hl.bind(mainMod .. " + CTRL + R", hl.dsp.exec_cmd("~/.local/bin/screenRefull"))
-- Screen Recording Selected mp4
hl.bind(mainMod .. " + SHIFT + R", hl.dsp.exec_cmd("~/.local/bin/screenRecordselect"))
-- Screen Recording Stop
hl.bind(mainMod .. " + CTRL + S", hl.dsp.exec_cmd("~/.local/bin/screenReStop"))
