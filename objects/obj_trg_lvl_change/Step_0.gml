if(trigger = true)
{
	if(obj_transition_fade_to_black.image_alpha > 0.99)
	{
		var changeto_str = string(changeto)
		scr_lvl_change(changeto, spawn_x, spawn_y)
		show_debug_message("LOADING MAP " + changeto_str + " (" + rm_dev_name + ")")
		
	}
}

if(trigger = false)
{
	if(place_meeting(x, y, obj_player))
	{
		if(transition = "fade_to_black")
		{
			scr_fade_to_black(transition_play_time, transition_wait_time)
		}
		
		if(transition = "none")
		{
			scr_lvl_change(changeto, spawn_x, spawn_y)
		}
		else
		{
			trigger = true
		}
	}
}