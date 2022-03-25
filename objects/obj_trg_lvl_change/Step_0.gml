if(trigger = true)
{
	if(obj_transition_fade_to_black.image_alpha > 0.99)
	{
		scr_lvl_change(changeto, spawn_x, spawn_y)
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