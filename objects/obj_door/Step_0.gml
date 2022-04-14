if(!end_step)
{
	if(!locked)
	{
		if(instance_exists(obj_trg_door))
		{
			if(instance_nearest(x, y, obj_trg_door).trigger = true)
			{
				state = "open"
			}
			else
			{
				state = "closed"
			}
		}
		else
		{
			show_debug_message("! No door trigger exists")
			end_step = true
		}
	}
}


if(state = "open")
{
	if(image_index != (image_number - 1))
	{
		image_index += 1
		//show_debug_message(image_index)
	}
}
else
{
	if(image_index != 0)
	{
		image_index -= 1
	}
}
