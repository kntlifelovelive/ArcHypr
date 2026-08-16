-- ┌────────────────────────────────────────────┐
-- │ AuthorModify : KyawNyeinThant              │
-- │ Github       : kntlifelovelive             │
-- │ Date         : 2026 , March, 13            │
-- │                                            │
-- └────────────────────────────────────────────┘
-- ┌────────────────────────────────────────────┐
-- │           WINDOWS AND WORKSPACES           │
-- └────────────────────────────────────────────┘

hl.windowrule = {
	-- Workspace rules
	"match:tag multimedia*, workspace 9 silent",
	"match:class obsidian, workspace 8",

	-- Browser tags
	"match:class ^([Ff]irefox|org.mozilla.firefox|[Ff]irefox-esr|[Ff]irefox-bin)$, tag +browser",
	"match:class ^([Gg]oogle-chrome(-beta|-dev|-unstable)?)$, tag +browser",
	"match:class ^(chrome-.+-Default)$, tag +browser",
	"match:class ^([Cc]hromium)$, tag +browser",
	"match:class ^(Brave-browser(-beta|-dev|-unstable)?)$, tag +browser",
	"match:class ^([Tt]horium-browser|[Cc]achy-browser)$, tag +browser",
	"match:class ^(zen-alpha|zen)$, tag +browser",

	-- Notif tags
	"match:class ^(swaync-control-center|swaync-notification-window|swaync-client|class)$, tag +notif",

	-- Terminal tags
	"match:class ^(Alacritty|kitty|kitty-dropterm)$, tag +terminal",

	-- Screenshare tags
	"match:class ^(com.obsproject.Studio)$, tag +screenshare",

	-- IM tags
	"match:class ^([Dd]iscord|[Ww]ebCord|[Vv]esktop)$, tag +im",
	"match:class ^([Ff]erdium)$, tag +im",
	"match:class ^([Ww]hatsapp-for-linux)$, tag +im",
	"match:class ^(org.telegram.desktop|io.github.tdesktop_x64.TDesktop)$, tag +im",
	"match:class ^(teams-for-linux)$, tag +im",
	"match:class ^(im.riot.Riot|Element)$, tag +im",

	-- File-manager tags
	"match:class ^([Tt]hunar|org.gnome.Nautilus|[Pp]cmanfm-qt)$, tag +file-manager",
	"match:class ^(app.drey.Warp)$, tag +file-manager",

	-- Wallpaper tags
	"match:class ^([Ww]aytrogen)$, tag +wallpaper",

	-- Multimedia tags
	"match:class ^([Aa]udacious)$, tag +multimedia",

	-- Multimedia-video tags
	"match:class ^([Mm]pv|vlc)$, tag +multimedia_video",

	-- Settings tags
	"match:class ^(wihotspot(-gui)?)$, tag +settings",
	"match:class ^([Bb]aobab|org.gnome.[Bb]aobab)$, tag +settings",
	"match:class ^(gnome-disks|wihotspot(-gui)?)$, tag +settings",
	"match:title (Kvantum Manager), tag +settings",
	"match:class ^(file-roller|org.gnome.FileRoller)$, tag +settings",
	"match:class ^(nm-applet|nm-connection-editor|blueman-manager)$, tag +settings",
	"match:class ^(pavucontrol|org.pulseaudio.pavucontrol|com.saivert.pwvucontrol)$, tag +settings",
	"match:class ^(qt5ct|qt6ct)$, tag +settings",
	"match:class (xdg-desktop-portal-gtk), tag +settings",
	"match:class ^(org.kde.polkit-kde-authentication-agent-1)$, tag +settings",
	"match:class ^([Rr]ofi)$, tag +settings",
	"match:class ^(btrfs-assistant)$, tag +settings",
	"match:class ^(timeshift-gtk)$, tag +settings",

	-- Viewer tags
	"match:class ^(gnome-system-monitor|org.gnome.SystemMonitor|io.missioncenter.MissionCenter)$, tag +viewer",
	"match:class ^(evince)$, tag +viewer",
	"match:class ^(eog|org.gnome.Loupe)$, tag +viewer",

	-- Special override
	"match:tag multimedia_video, no_blur on",
	"match:tag multimedia_video, opacity 1.0",
	"match:tag multimedia, no_blur on",
	"match:tag multimedia, opacity 1.0",

	-- Position
	"match:title ^(Keybindings)$, center on",
	"match:class ^(pavucontrol|org.pulseaudio.pavucontrol|com.saivert.pwvucontrol)$, center on",
	"match:class ^([Ff]erdium)$, center on",

	-- Idle inhibit
	"match:fullscreen true, idle_inhibit fullscreen",
	"idle_inhibit fullscreen, match:fullscreen 1",
	"idle_inhibit fullscreen, match:class .*",
	"idle_inhibit fullscreen, match:title .*",

	-- Float
	"match:tag wallpaper, float on, center on",
	"match:tag settings, float on, center on",
	"match:tag viewer, float on, center on",
	"match:class ([Zz]oom|onedriver|onedriver-launcher), float on",
	"match:class (org.gnome.Calculator|qalculate-gtk), float on",
	"match:class ^(mpv|com.github.rafostar.Clapper)$, float on",
	"match:class ^([Qq]alculate-gtk)$, float on",
	"match:class ^([Ff]erdium)$, float on",

	-- Popups
	"match:title ^(Authentication Required)$, float on, center on",
	"match:class (codium|codium-url-handler|VSCodium) match:title negative:(.*codium.*|.*VSCodium.*), float on",
	"match:class ^(com.heroicgameslauncher.hgl)$ match:title negative:(Heroic Games Launcher), float on",
	"match:class ^([Ss]team)$ match:title negative:^([Ss]team)$, float on",
	"match:title ^(Add Folder to Workspace)$, float on, size (monitor_w*0.7) (monitor_h*0.6), center on",
	"match:title ^(Save As)$, float on, size (monitor_w*0.7) (monitor_h*0.6), center on",
	"match:initial_title (Open Files), float on, size (monitor_w*0.7) (monitor_h*0.6)",
	"match:title ^(SDDM Background)$, float on, center on, size (monitor_w*0.16) (monitor_h*0.12)",
	"match:class ^(yad)$, float on, center on, size (monitor_w*0.2) (monitor_h*0.2)",
	"match:class ^(hyprland-donate-screen)$, float on, center on",

	-- Opacity
	"opacity 0.8 0.7, match:float true",
	"opacity 0.8 0.7, match:class obsidian",
	"opacity 0.8 0.7, match:class balenaEtcher",
	"opacity 0.8 0.7, match:class virt-manager",
	"opacity 0.8 0.7, match:class outline-Client",
	"match:tag multimedia, opacity 0.8 0.7",
	"opacity 0.8 0.8, match:class mpv",
	"match:class firefox, opacity 0.8 0.7",
	"match:class chromium, opacity 0.8 0.7",
	"match:class code, opacity 0.8 0.7",
	"match:tag projects, opacity 0.9 0.8",
	"match:tag im, opacity 0.94 0.86",
	"match:tag file-manager, opacity 0.9 0.8",
	"match:tag terminal, opacity 0.9 0.7",
	"match:tag settings, opacity 0.8 0.7",
	"match:tag viewer, opacity 0.82 0.75",
	"match:tag wallpaper, opacity 0.9 0.7",
	"match:class ^(gedit|org.gnome.TextEditor|mousepad)$, opacity 0.8 0.7",
	"match:class ^(deluge)$, opacity 0.9 0.8",
	"match:class ^(seahorse)$, opacity 0.9 0.8",
	"match:title ^(Picture-in-Picture)$, opacity 0.95 0.75",

	-- Size
	"match:tag wallpaper, size (monitor_w*0.7) (monitor_h*0.7)",
	"match:tag settings, size (monitor_w*0.7) (monitor_h*0.7)",
	"match:class ^([Ff]erdium)$, size (monitor_w*0.6) (monitor_h*0.7)",

	-- Blur & Fullscreen
	"match:tag games, no_blur on, fullscreen 0",
	"match:tag games, fullscreen 0",

	-- Focus
	"match:class ^(jetbrains-*), no_initial_focus on",
	"match:title ^(wind.*)$, no_initial_focus on",
}

-- Named window rules (windowrulev2)
hl.windowrulev2 = {
	{
		name = "Whatsapp-zapzap",
		match = "class ^([Ww]hatsapp-for-linux|ZapZap|com.rtosta.zapzap)$",
		size = "(monitor_w*0.6) (monitor_h*0.7)",
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
		size = "(monitor_w*0.3) (monitor_h*0.3)",
	},
	{
		name = "Thunar-Progress-bar",
		match = "class ^(thunar)$, title ^(File Operation Progress)$",
		float = "on",
		center = "on",
		size = "(monitor_w*0.26) (monitor_h*0.18)",
	},
}
