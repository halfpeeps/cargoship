if(interact == true)
{
	obj_player.in_menu = true
	if(wait_count == 0)
	{
		instance_create_layer(x, y, "layer_null", linked_txt) //create obj linked txt file
		line = linked_txt.line //check what random line has been selected
		//show_debug_message("type_text created")
		scr_type_text(obj_player.x, obj_player.y, fnt_pixel1, fa_left, fa_top, type_speed, line, type_c1, type_c2, false, 1, false, 9999, true, false, type_shake) //create text
		instance_destroy(linked_txt) //destroy obj linked txt file
	}
	if(wait_over = true)
	{
		if(null_input_check.ctrlcheck_interact = true)  //once interact pressed again
		{
			instance_destroy(obj_ui_type_text)  //destroy text
			obj_player.in_menu = false //take player out of menu state
			interact = false //reset interaction status
			//show_debug_message("type_text destroyed")
		}
	}
	
	if(wait_count < max_wait)
	{
		wait_count += 1
	}
	else
	{
		wait_over = true
	}
	
}
else
{
	wait_count = 0
	wait_over = false
}
