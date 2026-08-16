-- ┌────────────────────────────────────────────┐
-- │ AuthorModify : KyawNyeinThant              │
-- │ Github       : kntlifelovelive             │
-- │ Date         : 2026 , March, 13            │
-- │                                            │
-- └────────────────────────────────────────────┘
-- ┌───────────────────────────────────────────────────────────────────────────┐
-- │                        AUTOSTART exec.conf                                │
-- └───────────────────────────────────────────────────────────────────────────┘

hl.on("hyprland.start", function()
	hl.exec_cmd("hypridle")
	hl.exec_cmd("waybar")
	hl.exec_cmd("hyprpaper")
	hl.exec_cmd("~/.config/hypr/scripts/wallpaper/wallpaper-restore.sh")
	hl.exec_cmd("nm-applet &")
	hl.exec_cmd("blueman-applet &")
	hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
	hl.exec_cmd("snappy-switcher --daemon")
end)
