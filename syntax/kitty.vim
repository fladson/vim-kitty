syn match kittyComment /^\s*#.*$/ contains=kittyTodo
syn match kittyMod /^kitty_mod/ display
syn match kittyBackground /^background/ display
syn match kittyForeground /^foreground/ display
syn region kittyString start=+"+ skip=+\\\\\|\\"+ end=+"+ oneline
syn region kittyString start=+'+ skip=+\\\\\|\\'+ end=+'+ oneline
syn keyword kittyTodo contained TODO FIXME XXX contained
syn keyword kittyKeyword
\ startup_session send_text terminal_select_modifiers cursor_stop_blinking_after pointer_shape_when_grabbed
\ clear_all_shortcuts close_on_child_death symbol_map mouse_hide_wait bell_on_tab shell
\ window_alert_on_bell url_style bold_font keymap inactive_tab_font_style key_definitions open_url_modifiers
\ clipboard_control tab_fade draw_minimal_borders background_opacity select_by_word_characters open_url_with
\ hide_window_decorations allow_remote_control remember_window_size box_drawing_scale macos_titlebar_color
\ tab_title_template italic_font kitten_alias placement_strategy macos_thicken_font tab_separator
\ macos_show_window_title_in_menubar tab_bar_style cursor_shape linux_display_server resize_debounce_time
\ rectangle_select_modifiers macos_quit_when_last_window_closed kitten_aliases map inactive_text_alpha
\ command_on_bell copy_on_select window_padding_width cursor_text_color active_border_color adjust_line_height
\ bold_italic_font enabled_layouts inactive_border_color macos_traditional_fullscreen inactive_tab_foreground
\ single_window_margin_width active_tab_background touch_scroll_multiplier strip_trailing_spaces font_size
\ sequence_map initial_window_width tab_bar_margin_width initial_window_height input_delay
\ update_check_interval repaint_delay bell_border_color font_family enable_audio_bell x11_hide_window_decorations
\ scrollback_pager term macos_hide_titlebar resize_draw_strategy selection_foreground selection_background
\ scrollback_lines editor macos_window_resizable macos_hide_from_tasks window_margin_width click_interval
\ macos_show_window_title_in wheel_scroll_multiplier tab_bar_min_tabs window_border_width dynamic_background_opacity
\ visual_bell_duration scrollback_pager_history_size tab_bar_edge env active_tab_font_style focus_follows_mouse
\ active_tab_foreground window_resize_step_cells sync_to_monitor inactive_tab_background macos_option_as_alt url_color
\ cursor disable_ligatures macos_custom_beam_cursor cursor_blink_interval dim_opacity adjust_column_width
\ tab_switch_strategy window_resize_step_lines include default_pointer_shape pointer_shape_when_dragging
\ active_tab_title_template listen_on force_ltr font_features cursor_beam_thickness cursor_underline_thickness
\ url_prefixes detect_urls resize_in_steps confirm_os_window_close tab_activity_symbol tab_bar_background
\ background_image background_image_layout background_image_linear background_tint mark1_foreground mark1_background 
\ mark2_foreground mark2_background mark3_foreground mark3_background listen_on allow_hyperlinks 
\ color0 color1 color2 color3 color4 color5 color6 color7 color8 color9 color10 color11 color12 color13 color14 color15

hi def link kittyComment Comment
hi def link kittyTodo Todo
hi def link kittyString String
hi def link kittyKeyword Keyword
hi def link kittyMod Keyword
hi def link kittyBackground Keyword
hi def link kittyForeground Keyword

let b:current_syntax = "kitty"
