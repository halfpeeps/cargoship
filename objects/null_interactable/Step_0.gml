if(interact == true)
{
	obj_player.in_menu = true
	if(variable_instance_exists(self, line))
	{
		show_debug_message("type_text created")
		scr_type_text(obj_player.x, obj_player.y, fnt_pixel1, fa_left, fa_top, type_speed, line, type_c1, type_c2, false, 1, false, 9999, true, false, type_shake)
	}
	if(null_input_check.ctrlcheck_interact = true)
	{
		instance_destroy(obj_ui_type_text)
		obj_player.in_menu = false
		interact = false
		show_debug_message("type_text destroyed")
	}
}
