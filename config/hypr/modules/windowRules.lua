-- ┌────────────────────────────────────────────┐
-- │ AuthorModify : KyawNyeinThant              │
-- │ Github       : kntlifelovelive             │
-- │ Date         : 2026 , March, 13            │
-- │                                            │
-- └────────────────────────────────────────────┘
-- ┌────────────────────────────────────────────┐
-- │           WINDOWS AND WORKSPACES           │
-- └────────────────────────────────────────────┘

-- =============================================
-- 1. WORKSPACE RULES
-- =============================================

hl.window_rule({
	match = { tag = "multimedia*" },
	workspace = "9 silent",
})

hl.window_rule({
	match = { class = "obsidian" },
	workspace = "8",
})

-- =============================================
-- 2. TAG RULES (Browser, Terminal, IM, etc.)
-- =============================================

-- Browser tags
hl.window_rule({
	match = { class = "^([Ff]irefox|org.mozilla.firefox|[Ff]irefox-esr|[Ff]irefox-bin)$" },
	tag = "+browser",
})
hl.window_rule({
	match = { class = "^([Gg]oogle-chrome(-beta|-dev|-unstable)?)$" },
	tag = "+browser",
})
hl.window_rule({
	match = { class = "^(chrome-.+-Default)$" },
	tag = "+browser",
})
hl.window_rule({
	match = { class = "^([Cc]hromium)$" },
	tag = "+browser",
})
hl.window_rule({
	match = { class = "^(Brave-browser(-beta|-dev|-unstable)?)$" },
	tag = "+browser",
})
hl.window_rule({
	match = { class = "^([Tt]horium-browser|[Cc]achy-browser)$" },
	tag = "+browser",
})
hl.window_rule({
	match = { class = "^(zen-alpha|zen)$" },
	tag = "+browser",
})

-- Notif tags
hl.window_rule({
	match = { class = "^(swaync-control-center|swaync-notification-window|swaync-client|class)$" },
	tag = "+notif",
})

-- Terminal tags
hl.window_rule({
	match = { class = "^(Alacritty|kitty|kitty-dropterm)$" },
	tag = "+terminal",
})

-- Screenshare tags
hl.window_rule({
	match = { class = "^(com.obsproject.Studio)$" },
	tag = "+screenshare",
})

-- IM tags
hl.window_rule({
	match = { class = "^([Dd]iscord|[Ww]ebCord|[Vv]esktop)$" },
	tag = "+im",
})
hl.window_rule({
	match = { class = "^([Ff]erdium)$" },
	tag = "+im",
})
hl.window_rule({
	match = { class = "^([Ww]hatsapp-for-linux)$" },
	tag = "+im",
})
hl.window_rule({
	match = { class = "^(org.telegram.desktop|io.github.tdesktop_x64.TDesktop)$" },
	tag = "+im",
})
hl.window_rule({
	match = { class = "^(teams-for-linux)$" },
	tag = "+im",
})
hl.window_rule({
	match = { class = "^(im.riot.Riot|Element)$" },
	tag = "+im",
})

-- File-manager tags
hl.window_rule({
	match = { class = "^([Tt]hunar|org.gnome.Nautilus|[Pp]cmanfm-qt)$" },
	tag = "+file-manager",
})
hl.window_rule({
	match = { class = "^(app.drey.Warp)$" },
	tag = "+file-manager",
})

-- Wallpaper tags
hl.window_rule({
	match = { class = "^([Ww]aytrogen)$" },
	tag = "+wallpaper",
})

-- Multimedia tags
hl.window_rule({
	match = { class = "^([Aa]udacious)$" },
	tag = "+multimedia",
})

-- Multimedia-video tags
hl.window_rule({
	match = { class = "^([Mm]pv|vlc)$" },
	tag = "+multimedia_video",
})

-- Settings tags
hl.window_rule({
	match = { class = "^(wihotspot(-gui)?)$" },
	tag = "+settings",
})
hl.window_rule({
	match = { class = "^([Bb]aobab|org.gnome.[Bb]aobab)$" },
	tag = "+settings",
})
hl.window_rule({
	match = { class = "^(gnome-disks|wihotspot(-gui)?)$" },
	tag = "+settings",
})
hl.window_rule({
	match = { title = "(Kvantum Manager)" },
	tag = "+settings",
})
hl.window_rule({
	match = { class = "^(file-roller|org.gnome.FileRoller)$" },
	tag = "+settings",
})
hl.window_rule({
	match = { class = "^(nm-applet|nm-connection-editor|blueman-manager)$" },
	tag = "+settings",
})
hl.window_rule({
	match = { class = "^(pavucontrol|org.pulseaudio.pavucontrol|com.saivert.pwvucontrol)$" },
	tag = "+settings",
})
hl.window_rule({
	match = { class = "^(qt5ct|qt6ct)$" },
	tag = "+settings",
})
hl.window_rule({
	match = { class = "(xdg-desktop-portal-gtk)" },
	tag = "+settings",
})
hl.window_rule({
	match = { class = "^(org.kde.polkit-kde-authentication-agent-1)$" },
	tag = "+settings",
})
hl.window_rule({
	match = { class = "^([Rr]ofi)$" },
	tag = "+settings",
})
hl.window_rule({
	match = { class = "^(btrfs-assistant)$" },
	tag = "+settings",
})
hl.window_rule({
	match = { class = "^(timeshift-gtk)$" },
	tag = "+settings",
})

-- Viewer tags
hl.window_rule({
	match = { class = "^(gnome-system-monitor|org.gnome.SystemMonitor|io.missioncenter.MissionCenter)$" },
	tag = "+viewer",
})
hl.window_rule({
	match = { class = "^(evince)$" },
	tag = "+viewer",
})
hl.window_rule({
	match = { class = "^(eog|org.gnome.Loupe)$" },
	tag = "+viewer",
})

-- =============================================
-- 3. SPECIAL OVERRIDES
-- =============================================

hl.window_rule({
	match = { tag = "multimedia_video" },
	no_blur = true,
	opacity = "1.0",
})
hl.window_rule({
	match = { tag = "multimedia" },
	no_blur = true,
	opacity = "1.0",
})

-- =============================================
-- 4. POSITION / CENTER
-- =============================================

hl.window_rule({
	match = { title = "^(Keybindings)$" },
	center = true,
})
hl.window_rule({
	match = { class = "^(pavucontrol|org.pulseaudio.pavucontrol|com.saivert.pwvucontrol)$" },
	center = true,
})
hl.window_rule({
	match = { class = "^([Ff]erdium)$" },
	center = true,
})

-- =============================================
-- 5. IDLE INHIBIT (Fullscreen)
-- =============================================

hl.window_rule({
	match = { fullscreen = true },
	idle_inhibit = "fullscreen",
})
hl.window_rule({
	match = { fullscreen = "1" },
	idle_inhibit = "fullscreen",
})
hl.window_rule({
	match = { class = ".*" },
	idle_inhibit = "fullscreen",
})
hl.window_rule({
	match = { title = ".*" },
	idle_inhibit = "fullscreen",
})

-- =============================================
-- 6. FLOAT RULES
-- =============================================

-- Pavucontrol / Blueman
hl.window_rule({
	match = { class = "^org%.pulseaudio%.pavucontrol$" },
	float = true,
	center = true,
	-- size = "60% 80%",
})

hl.window_rule({
	match = { class = "^blueman%-manager$" },
	float = true,
	center = true,
	size = "35% 50%",
})

hl.window_rule({
	match = { tag = "wallpaper" },
	float = true,
	center = true,
})
hl.window_rule({
	match = { tag = "settings" },
	float = true,
	center = true,
})
hl.window_rule({
	match = { tag = "viewer" },
	float = true,
	center = true,
})
hl.window_rule({
	match = { class = "([Zz]oom|onedriver|onedriver-launcher)" },
	float = true,
})
hl.window_rule({
	match = { class = "(org.gnome.Calculator|qalculate-gtk)" },
	float = true,
})
hl.window_rule({
	match = { class = "^(mpv|com.github.rafostar.Clapper)$" },
	float = true,
})
hl.window_rule({
	match = { class = "^([Qq]alculate-gtk)$" },
	float = true,
})
hl.window_rule({
	match = { class = "^([Ff]erdium)$" },
	float = true,
})

-- =============================================
-- 7. POPUPS
-- =============================================

hl.window_rule({
	match = { title = "^(Authentication Required)$" },
	float = true,
	center = true,
})
hl.window_rule({
	match = { class = "(codium|codium-url-handler|VSCodium)", title = "negative:(.*codium.*|.*VSCodium.*)" },
	float = true,
})
hl.window_rule({
	match = { class = "^(com.heroicgameslauncher.hgl)$", title = "negative:(Heroic Games Launcher)" },
	float = true,
})
hl.window_rule({
	match = { class = "^([Ss]team)$", title = "negative:^([Ss]team)$" },
	float = true,
})
hl.window_rule({
	match = { title = "^(Add Folder to Workspace)$" },
	float = true,
	size = "70% 60%",
	center = true,
})
hl.window_rule({
	match = { title = "^(Save As)$" },
	float = true,
	size = "70% 60%",
	center = true,
})
hl.window_rule({
	match = { initial_title = "(Open Files)" },
	float = true,
	size = "70% 60%",
})
hl.window_rule({
	match = { title = "^(SDDM Background)$" },
	float = true,
	center = true,
	size = "16% 12%",
})
hl.window_rule({
	match = { class = "^(yad)$" },
	float = true,
	center = true,
	size = "20% 20%",
})
hl.window_rule({
	match = { class = "^(hyprland-donate-screen)$" },
	float = true,
	center = true,
})

-- =============================================
-- 8. OPACITY RULES
-- =============================================

hl.window_rule({
	match = { float = true },
	opacity = "0.8 0.7",
})
hl.window_rule({
	match = { class = "obsidian" },
	opacity = "0.8 0.7",
})
hl.window_rule({
	match = { class = "balenaEtcher" },
	opacity = "0.8 0.7",
})
hl.window_rule({
	match = { class = "virt-manager" },
	opacity = "0.8 0.7",
})
hl.window_rule({
	match = { class = "outline-Client" },
	opacity = "0.8 0.7",
})
hl.window_rule({
	match = { tag = "multimedia" },
	opacity = "0.8 0.7",
})
hl.window_rule({
	match = { class = "mpv" },
	opacity = "0.8 0.8",
})
hl.window_rule({
	match = { class = "firefox" },
	opacity = "0.8 0.9",
})
hl.window_rule({
	match = { class = "chromium" },
	opacity = "0.8 0.7",
})
hl.window_rule({
	match = { class = "code" },
	opacity = "0.8 0.7",
})
hl.window_rule({
	match = { tag = "projects" },
	opacity = "0.9 0.8",
})
hl.window_rule({
	match = { tag = "im" },
	opacity = "0.94 0.86",
})
hl.window_rule({
	match = { tag = "file-manager" },
	opacity = "0.9 0.8",
})
hl.window_rule({
	match = { tag = "terminal" },
	opacity = "0.9 0.7",
})
hl.window_rule({
	match = { tag = "settings" },
	opacity = "0.8 0.7",
})
hl.window_rule({
	match = { tag = "viewer" },
	opacity = "0.82 0.75",
})
hl.window_rule({
	match = { tag = "wallpaper" },
	opacity = "0.9 0.7",
})
hl.window_rule({
	match = { class = "^(gedit|org.gnome.TextEditor|mousepad)$" },
	opacity = "0.8 0.7",
})
hl.window_rule({
	match = { class = "^(deluge)$" },
	opacity = "0.9 0.8",
})
hl.window_rule({
	match = { class = "^(seahorse)$" },
	opacity = "0.9 0.8",
})
hl.window_rule({
	match = { title = "^(Picture-in-Picture)$" },
	opacity = "0.95 0.75",
})

-- =============================================
-- 9. SIZE RULES
-- =============================================

hl.window_rule({
	match = { tag = "wallpaper" },
	size = "70% 70%",
})

-- hl.window_rule({
-- 	match = { tag = "settings" },
-- 	size = "70% 70%",
-- })
-- hl.window_rule({
--     match = { class = "^([Ff]erdium)$" },
--     size = "60% 70%"
-- })

-- =============================================
-- 10. BLUR & FULLSCREEN
-- =============================================

hl.window_rule({
	match = { tag = "games" },
	no_blur = true,
	fullscreen = "0",
})
hl.window_rule({
	match = { tag = "games" },
	fullscreen = "0",
})

-- =============================================
-- 11. FOCUS
-- =============================================

hl.window_rule({
	match = { class = "^(jetbrains-*)" },
	no_initial_focus = true,
})
hl.window_rule({
	match = { title = "^(wind.*)$" },
	no_initial_focus = true,
})

-- =============================================
-- 12. WINDOWRULEV2 (Named Rules)
-- =============================================

hl.windowrulev2 = {
	{
		name = "Whatsapp-zapzap",
		match = "class ^([Ww]hatsapp-for-linux|ZapZap|com.rtosta.zapzap)$",
		size = "60% 70%",
		center = "on",
	},
	{
		name = "Picture-in-Picture",
		match = "title ^(Picture-in-Picture)$",
		float = "on",
		move = "72% 7%",
		opacity = "0.95 0.75",
		pin = "on",
		keep_aspect_ratio = "on",
		size = "30% 30%",
	},
	{
		name = "Thunar-Progress-bar",
		match = "class ^(thunar)$, title ^(File Operation Progress)$",
		float = "on",
		center = "on",
		size = "26% 18%",
	},
}
