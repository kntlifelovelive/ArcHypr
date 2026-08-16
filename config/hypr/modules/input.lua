-- -- ┌────────────────────────────────────────────┐
-- -- │ AuthorModify : KyawNyeinThant              │
-- -- │ Github       : kntlifelovelive             │
-- -- │ Date         : 2026 , March, 13            │
-- -- │                                            │
-- -- └────────────────────────────────────────────┘
-- -- ┌───────────────────────────────────────────────────────────────────────────┐
-- -- │                         INPUT / Keyboard / Mouse                          │
-- -- └───────────────────────────────────────────────────────────────────────────┘

hl.config({
	input = {
		kb_layout = "us,mm",
		kb_variant = "",
		kb_model = "",
		kb_options = "grp:alt_shift_toggle",
		kb_rules = "",
		repeat_rate = 35,
		repeat_delay = 200,
		follow_mouse = 1,
		sensitivity = 0,
		touchpad = {
			natural_scroll = false,
			disable_while_typing = true,
			tap_to_click = true,
			drag_lock = false,
			clickfinger_behavior = true,
			middle_button_emulation = true,
		},
	},
})

hl.cursor = {
	inactive_timeout = 30,
	no_hardware_cursors = true,
}

hl.device = {
	name = "epic-mouse-v1",
	sensitivity = -0.5,
}

hl.scrolling = {
	column_width = 0.667,
	focus_fit_method = 1,
	follow_focus = true,
	follow_min_visible = 1.0,
	explicit_column_widths = "0.334, 0.5, 0.667, 1.0",
	direction = "right",
}
